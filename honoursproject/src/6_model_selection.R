library(tidyverse)
library(caret)
library(leaps)

# read in study dataset
study_dat <- read.csv(
    file =
        "./honoursproject/data/data.csv",
    header = TRUE
)

# sort data types
library(lubridate)
study_dat$SampleDate <- ymd(study_dat$SampleDate)
study_dat$S1_seropositive <- factor(study_dat$S1_seropositive)
study_dat$CareType <- factor(study_dat$CareType)

# split dataset
set.seed(6899) 

index = sample(1:nrow(study_dat), 0.7*nrow(study_dat)) 

train = study_dat[index,] # Create the training data 
test = study_dat[-index,] # Create the test data

dim(train)
dim(test)

# fit a model with all predictors of interest
# S1
fit.1 <- glm(S1_seropositive ~ Age + CareType + SampleDate + PostcodePart + Sex, data = train, family = binomial(link = "logit"))
summary(fit.1)

# run stepwise model
library(MASS)
step1.model <- stepAIC(fit.1, direction = "backward", 
                      trace = FALSE)
summary(step1.model)

# predict S1 serppositivity for test set
test$S1_predict = (predict(step1.model, test, type="response"))
test$S1_predict_factor = rep("0", dim(test)[1])
test$S1_predict_factor[test$S1_predict > .5] = "1"

S1_predict = (table(test$S1_seropositive, test$S1_predict_factor))

#RBD
fit.2 <- glm(RBD_seropositive == 1 ~ Age + CareType + SampleDate + PostcodePart + Sex, data = train, family = binomial)
summary(fit.1)

# run stepwise model
step2.model <- stepAIC(fit.2, direction = "backward", 
                      trace = FALSE)
summary(step2.model)



# what about S1 pos && RBD neg ?
S1pos_dat = filter(study_dat, S1_seropositive == 1)

# split S1pos dataset
set.seed(2599) 

index = sample(1:nrow(S1pos_dat), 0.7*nrow(S1pos_dat)) 

S1train = S1pos_dat[index,] # Create the training data 
S1test = S1pos_dat[-index,] # Create the test data

dim(S1train)
dim(S1test)

# fit a model with all predictors of interest
fit.pos <- glm(as.factor(RBD_seropositive) ~ Age + CareType + SampleDate + PostcodePart + Sex, data = S1train, family = binomial(link = "logit"))
summary(fit.pos)

# run stepwise model
library(MASS)
pos.step.model <- stepAIC(fit.pos, direction = "backward", 
                      trace = FALSE)
summary(pos.step.model)

# predict RBD serppositivity for test set
S1test$RBD_predict = (predict(pos.step.model, S1test, type="response"))
S1test$RBD_predict_factor = rep("0", dim(S1test)[1])
S1test$RBD_predict_factor[S1test$RBD_predict > .5] = "1"

RBD_predict = (table(S1test$RBD_seropositive, S1test$RBD_predict_factor))

# create separate dfs for RBD seropositive & seronegative for plotting 
RBD_pos_train = filter(S1train, RBD_seropositive == 1)
RBD_neg_train = filter(S1train, RBD_seropositive == 0)

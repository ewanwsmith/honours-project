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
fit_1 <- glm(S1_seropositive ~ Age + CareType + SampleDate + PostcodePart + Sex, data = train, family = binomial(link = "logit"))
summary(fit_1)

# run stepwise model
library(MASS)
step1_model <- stepAIC(fit_1, direction = "backward", 
                      trace = FALSE)
summary(step1_model)

# predict S1 serppositivity for test set
test$S1_predict = (predict(step1_model, test, type="response"))
test$S1_predict_factor = rep("0", dim(test)[1])
test$S1_predict_factor[test$S1_predict > .5] = "1"

S1_predict = (table(test$S1_seropositive, test$S1_predict_factor))

#RBD
fit_2 <- glm(RBD_seropositive == 1 ~ Age + CareType + SampleDate + PostcodePart + Sex, data = train, family = binomial)
summary(fit_2)

# run stepwise model
step2.model <- stepAIC(fit_2, direction = "backward", 
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
fit_pos <- glm(as.factor(RBD_seropositive) ~ Age + CareType + SampleDate + PostcodePart + Sex, data = S1train, family = binomial(link = "logit"))
summary(fit_pos)

# run stepwise model
library(MASS)
pos.step.model <- stepAIC(fit_pos, direction = "backward", 
                      trace = FALSE)
summary(pos.step.model)

# save output as txt
sink(("./honoursproject/src/output/RBD_model_selection.txt"))
print(summary(stepAIC(fit_pos, direction = "backward", 
                      trace = TRUE)))
sink()


# predict RBD serppositivity for test set
S1test$RBD_predict = (predict(pos.step.model, S1test, type="response"))
S1test$RBD_predict_factor = rep("0", dim(S1test)[1])
S1test$RBD_predict_factor[S1test$RBD_predict > .5] = "1"

RBD_predict = (data.frame(table("observed_RBD" = S1test$RBD_seropositive, "predicted_RBD" = S1test$RBD_predict_factor)))
RBD_predict_results = (sum(RBD_predict[RBD_predict$observed_RBD == 0 & RBD_predict$predicted_RBD == 0]))
# z test for proportion
sink(("./honoursproject/src/output/predict_prop.txt"))
#predict_prop <- prop.test(x = sum(RBD_predict$observed_RBD==), n = sex_data$sex_length)
#print(sex_prop)
#sink()

# create separate dfs for RBD seropositive & seronegative for plotting 
RBD_pos_train = filter(S1train, RBD_seropositive == 1)
RBD_neg_train = filter(S1train, RBD_seropositive == 0)

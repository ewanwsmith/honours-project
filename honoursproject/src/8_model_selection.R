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

# fit a model with all predictors of interest
fit.1 <- glm(S1_seropositive == 1 ~ Age + CareType + SampleDate + PostcodePart + Sex, data = study_dat, family = binomial)
summary(fit.1)

# run stepwise model
library(MASS)
step.model <- stepAIC(fit.1, direction = "both", 
                      trace = FALSE)
summary(step.model)

# Set seed for reproducibility
set.seed(123)
# Set up repeated k-fold cross-validation
train.control <- trainControl(method = "cv", number = 10)
# Train the model
step.model <- train(fit.1, data = study_dat,
                    method = "leapBackward", 
                    tuneGrid = data.frame(nvmax = 1:5),
                    trControl = train.control
                    )
step.model$results
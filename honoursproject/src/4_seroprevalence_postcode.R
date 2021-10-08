# read in study dataset
study_dat <- read.csv(
    file =
        "./honoursproject/data/joined_data.csv",
    header = TRUE
)

# Read UK postcode shape file
library(rgdal)
spdf <- readOGR(
    dsn = paste0(getwd(), "/honoursproject/data/Shapefiles"),
    layer = "Districts",
    verbose = FALSE
)

# filter for just postcode areas within the study dataset
spdf <- subset(spdf, spdf@data$name %in% study_dat$PostcodePart)

library(stringr)
# filter for just Glasgow postcodes
spdf <- subset(spdf, startsWith(spdf@data$name, "G"))

# small city centre postcodes are too small
smallpostcodes <- c(
    "G1", "G2", "G3", "G4", "G5",
    "G12", "G20", "G21", "G31", "G40", "G41", "G51"
)
small_spdf <- subset(spdf, spdf@data$name %in% smallpostcodes)

# add seroprevalence data to spatial data frame
library(dplyr)
names(spdf@data)[names(spdf@data) == "name"] <- "Postcode"

# March
March_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/March_20_postcode_data.csv",
    header = TRUE
)
spdf@data <- spdf@data %>%
    left_join(., March_20, by = c("Postcode" = "Postcode"))
names(spdf@data)[names(spdf@data) == "S1"] <- "March_S1"
names(spdf@data)[names(spdf@data) == "RBD"] <- "March_RBD"

# April
April_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/April_20_postcode_data.csv",
    header = TRUE
)
spdf@data <- spdf@data %>%
    left_join(., April_20, by = c("Postcode" = "Postcode"))
names(spdf@data)[names(spdf@data) == "S1"] <- "April_S1"
names(spdf@data)[names(spdf@data) == "RBD"] <- "April_RBD"

# May
May_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/May_20_postcode_data.csv",
    header = TRUE
)
spdf@data <- spdf@data %>%
    left_join(., May_20, by = c("Postcode" = "Postcode"))
names(spdf@data)[names(spdf@data) == "S1"] <- "May_S1"
names(spdf@data)[names(spdf@data) == "RBD"] <- "May_RBD"

# June
June_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/June_20_postcode_data.csv",
    header = TRUE
)
spdf@data <- spdf@data %>%
    left_join(., June_20, by = c("Postcode" = "Postcode"))
names(spdf@data)[names(spdf@data) == "S1"] <- "June_S1"
names(spdf@data)[names(spdf@data) == "RBD"] <- "June_RBD"

# July
July_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/July_20_postcode_data.csv",
    header = TRUE
)
spdf@data <- spdf@data %>%
    left_join(., July_20, by = c("Postcode" = "Postcode"))
names(spdf@data)[names(spdf@data) == "S1"] <- "July_S1"
names(spdf@data)[names(spdf@data) == "RBD"] <- "July_RBD"

# August
August_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/August_20_postcode_data.csv",
    header = TRUE
)
spdf@data <- spdf@data %>%
    left_join(., August_20, by = c("Postcode" = "Postcode"))
names(spdf@data)[names(spdf@data) == "S1"] <- "August_S1"
names(spdf@data)[names(spdf@data) == "RBD"] <- "August_RBD"

# September
September_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/September_20_postcode_data.csv",
    header = TRUE
)
spdf@data <- spdf@data %>%
    left_join(., September_20, by = c("Postcode" = "Postcode"))
names(spdf@data)[names(spdf@data) == "S1"] <- "September_S1"
names(spdf@data)[names(spdf@data) == "RBD"] <- "September_RBD"

# October
October_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/October_20_postcode_data.csv",
    header = TRUE
)
spdf@data <- spdf@data %>%
    left_join(., October_20, by = c("Postcode" = "Postcode"))
names(spdf@data)[names(spdf@data) == "S1"] <- "October_S1"
names(spdf@data)[names(spdf@data) == "RBD"] <- "October_RBD"

# November
November_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/November_20_postcode_data.csv",
    header = TRUE
)
spdf@data <- spdf@data %>%
    left_join(., November_20, by = c("Postcode" = "Postcode"))
names(spdf@data)[names(spdf@data) == "S1"] <- "November_S1"
names(spdf@data)[names(spdf@data) == "RBD"] <- "November_RBD"

# December
December_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/December_20_postcode_data.csv",
    header = TRUE
)
spdf@data <- spdf@data %>%
    left_join(., December_20, by = c("Postcode" = "Postcode"))
names(spdf@data)[names(spdf@data) == "S1"] <- "December_S1"
names(spdf@data)[names(spdf@data) == "RBD"] <- "December_RBD"

# January
January_21 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/January_21_postcode_data.csv",
    header = TRUE
)

spdf@data <- spdf@data %>%
    left_join(., January_21, by = c("Postcode" = "Postcode"))
names(spdf@data)[names(spdf@data) == "S1"] <- "January_S1"
names(spdf@data)[names(spdf@data) == "RBD"] <- "January_RBD"

# add seroprevalence data to city centre spatial data frame
library(dplyr)
names(small_spdf@data)[names(small_spdf@data) == "name"] <- "Postcode"

# March
March_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/March_20_postcode_data.csv",
    header = TRUE
)
small_spdf@data <- small_spdf@data %>%
    left_join(., March_20, by = c("Postcode" = "Postcode"))
names(small_spdf@data)[names(small_spdf@data) == "S1"] <- "March_S1"
names(small_spdf@data)[names(small_spdf@data) == "RBD"] <- "March_RBD"

# April
April_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/April_20_postcode_data.csv",
    header = TRUE
)
small_spdf@data <- small_spdf@data %>%
    left_join(., April_20, by = c("Postcode" = "Postcode"))
names(small_spdf@data)[names(small_spdf@data) == "S1"] <- "April_S1"
names(small_spdf@data)[names(small_spdf@data) == "RBD"] <- "April_RBD"

# May
May_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/May_20_postcode_data.csv",
    header = TRUE
)
small_spdf@data <- small_spdf@data %>%
    left_join(., May_20, by = c("Postcode" = "Postcode"))
names(small_spdf@data)[names(small_spdf@data) == "S1"] <- "May_S1"
names(small_spdf@data)[names(small_spdf@data) == "RBD"] <- "May_RBD"

# June
June_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/June_20_postcode_data.csv",
    header = TRUE
)
small_spdf@data <- small_spdf@data %>%
    left_join(., June_20, by = c("Postcode" = "Postcode"))
names(small_spdf@data)[names(small_spdf@data) == "S1"] <- "June_S1"
names(small_spdf@data)[names(small_spdf@data) == "RBD"] <- "June_RBD"

# July
July_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/July_20_postcode_data.csv",
    header = TRUE
)
small_spdf@data <- small_spdf@data %>%
    left_join(., July_20, by = c("Postcode" = "Postcode"))
names(small_spdf@data)[names(small_spdf@data) == "S1"] <- "July_S1"
names(small_spdf@data)[names(small_spdf@data) == "RBD"] <- "July_RBD"

# August
August_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/August_20_postcode_data.csv",
    header = TRUE
)
small_spdf@data <- small_spdf@data %>%
    left_join(., August_20, by = c("Postcode" = "Postcode"))
names(small_spdf@data)[names(small_spdf@data) == "S1"] <- "August_S1"
names(small_spdf@data)[names(small_spdf@data) == "RBD"] <- "August_RBD"

# September
September_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/September_20_postcode_data.csv",
    header = TRUE
)
small_spdf@data <- small_spdf@data %>%
    left_join(., September_20, by = c("Postcode" = "Postcode"))
names(small_spdf@data)[names(small_spdf@data) == "S1"] <- "September_S1"
names(small_spdf@data)[names(small_spdf@data) == "RBD"] <- "September_RBD"

# October
October_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/October_20_postcode_data.csv",
    header = TRUE
)
small_spdf@data <- small_spdf@data %>%
    left_join(., October_20, by = c("Postcode" = "Postcode"))
names(small_spdf@data)[names(small_spdf@data) == "S1"] <- "October_S1"
names(small_spdf@data)[names(small_spdf@data) == "RBD"] <- "October_RBD"

# November
November_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/November_20_postcode_data.csv",
    header = TRUE
)
small_spdf@data <- small_spdf@data %>%
    left_join(., November_20, by = c("Postcode" = "Postcode"))
names(small_spdf@data)[names(small_spdf@data) == "S1"] <- "November_S1"
names(small_spdf@data)[names(small_spdf@data) == "RBD"] <- "November_RBD"

# December
December_20 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/December_20_postcode_data.csv",
    header = TRUE
)
small_spdf@data <- small_spdf@data %>%
    left_join(., December_20, by = c("Postcode" = "Postcode"))
names(small_spdf@data)[names(small_spdf@data) == "S1"] <- "December_S1"
names(small_spdf@data)[names(small_spdf@data) == "RBD"] <- "December_RBD"

# January
January_21 <- read.csv(
    file =
        "./honoursproject/data/by_postcode/January_21_postcode_data.csv",
    header = TRUE
)
small_spdf@data <- small_spdf@data %>%
    left_join(., January_21, by = c("Postcode" = "Postcode"))
names(small_spdf@data)[names(small_spdf@data) == "S1"] <- "January_S1"
names(small_spdf@data)[names(small_spdf@data) == "RBD"] <- "January_RBD"

# generate colour scale
library(RColorBrewer)
S1colour_scale <- brewer.pal(9, "Reds")
S1colour_scale <- colorRampPalette(S1colour_scale)(30)

# attribute the appropriate color to each postcode
March_S1 <- cut(spdf@data$March_S1, 30)
MarchS1colour_scale <- S1colour_scale[as.numeric(March_S1)]

# plot for March, S1
png(
    file = "/Users/ewanwsmith/honours-project/honoursproject/src/plots/S1_March.png",
    width = 600, height = 600
)
# large map
par(fig = c(0, 0.8, 0, 1))
plot(spdf, col = MarchS1colour_scale)
# small map
par(fig = c(0.4, 1, 0.5, 1), new = TRUE)
plot(small_spdf, col = MarchS1colour_scale)
dev.off()

# attribute the appropriate color to each postcode
March_RBD <- cut(spdf@data$March_RBD, 30)
MarchRBDcolour_scale <- RBDcolour_scale[as.numeric(March_RBD)]
# plot for March, RBD
png(
    file = "/Users/ewanwsmith/honours-project/honoursproject/src/plots/RBD_March.png",
    width = 600, height = 600
)
# large map
par(fig = c(0, 0.8, 0, 1))
plot(spdf, col = MarchRBDcolour_scale)
# small map
par(fig = c(0.4, 1, 0.5, 1), new = TRUE)
plot(small_spdf, col = MarchRBDcolour_scale)
dev.off()

# plot for April, S1
png(
    file = "/Users/ewanwsmith/honours-project/honoursproject/src/plots/S1_April.png",
    width = 600, height = 600
)
# attribute the appropriate color to each postcode
April_S1 <- cut(spdf@data$April_S1, 30)
AprilS1colour_scale <- S1colour_scale[as.numeric(April_S1)]
# large map
par(fig = c(0, 0.8, 0, 1))
plot(spdf, col = AprilS1colour_scale)
# small map
par(fig = c(0.4, 1, 0.5, 1), new = TRUE)
plot(small_spdf, col = AprilS1colour_scale)
dev.off()

# plot for April, RBD
png(
    file = "/Users/ewanwsmith/honours-project/honoursproject/src/plots/RBD_April.png",
    width = 600, height = 600
)
# attribute the appropriate color to each postcode
April_RBD <- cut(spdf@data$April_RBD, 30)
AprilRBDcolour_scale <- RBDcolour_scale[as.numeric(April_RBD)]
# large map
par(fig = c(0, 0.8, 0, 1))
plot(spdf, col = RBDcolour_scale)
# small map
par(fig = c(0.4, 1, 0.5, 1), new = TRUE)
plot(small_spdf, col = RBDcolour_scale)
dev.off()
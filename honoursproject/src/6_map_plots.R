# read in S1 dataset
S1_dat <- read.csv(
    file =
        "./honoursproject/data/by_postcode/S1_data.csv",
    header = TRUE
)

# read in RBD dataset
RBD_dat <- read.csv(
    file =
        "./honoursproject/data/by_postcode/S1_data.csv",
    header = TRUE
)

# read in UK postcode shape file
library(rgdal)
S1_spdf <- readOGR(
    dsn = paste0(getwd(), "/honoursproject/data/Shapefiles"),
    layer = "Districts",
    verbose = FALSE
)
RBDF_spdf <- readOGR(
    dsn = paste0(getwd(), "/honoursproject/data/Shapefiles"),
    layer = "Districts",
    verbose = FALSE
)

# filter for just G postcode areas
S1_spdf <- subset(S1_spdf, S1_spdf@data$name %in% S1_dat$Postcode)
RBD_spdf <- subset(RBD_spdf, RBD_spdf@data$name %in% RBD_dat$Postcode)

# small city centre postcodes are too small
smallpostcodes <- c(
    "G1", "G2", "G3", "G4", "G5",
    "G12", "G20", "G21", "G31", "G40", "G41", "G51"
)
S1_small_spdf <- subset(S1_spdf, S1_spdf@data$name %in% smallpostcodes)
RBD_small_spdf <- subset(RBD_spdf, RBD_spdf@data$name %in% smallpostcodes)

# add seroprevalence data to spatial data frames
library(dplyr)

names(S1_spdf@data)[names(S1_spdf@data) == "name"] <- "Postcode"
S1_spdf@data <- S1_spdf@data %>%
    left_join(., S1_dat, by = c("Postcode" = "Postcode"))

names(RBD_spdf@data)[names(RBD_spdf@data) == "name"] <- "Postcode"
RBD_spdf@data <- RBD_spdf@data %>%
    left_join(., RBD_dat, by = c("Postcode" = "Postcode"))

names(S1_small_spdf@data)[names(S1_small_spdf@data) == "name"] <- "Postcode"
S1_small_spdf@data <- S1_small_spdf@data %>%
    left_join(., S1_dat, by = c("Postcode" = "Postcode"))

names(RBD_small_spdf@data)[names(RBD_small_spdf@data) == "name"] <- "Postcode"
RBD_small_spdf@data <- RBD_small_spdf@data %>%
    left_join(., RBD_dat, by = c("Postcode" = "Postcode"))

# fortify data
library(broom)

S1_spdf_f <- tidy(S1_spdf)

library(ggplot2)

p <- ggplot() +
    geom_polygon(data = S1_spdf, aes(x = long, y = lat, group = id), fill = "white", color = "grey") +
    theme_void() +
    coord_map()
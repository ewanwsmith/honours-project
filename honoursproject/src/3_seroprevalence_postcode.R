# read in study dataset
study_dat <- read.csv(file = "./honoursproject/data/joined_data.csv", header = TRUE)

# Read UK postcode shape file
library(rgdal)
spdf <- readOGR(
    dsn = paste0(getwd(), "/honoursproject/data/Shapefiles"),
    layer = "Districts",
    verbose = FALSE
)

# filter for just postcode areas within the study dataset
spdf <- subset(spdf, spdf@data$name %in% study_dat$PostcodePart)
plot(spdf)

library(stringr)
# filter for just Glasgow postcodes
spdf <- subset(spdf, startsWith(spdf@data$name, "G"))
plot(spdf)
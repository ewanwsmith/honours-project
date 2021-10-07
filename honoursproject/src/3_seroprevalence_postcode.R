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
plot(spdf)

library(stringr)
# filter for just Glasgow postcodes
spdf <- subset(spdf, startsWith(spdf@data$name, "G"))
plot(spdf)

# small city centre postcodes are too small
smallpostcodes <- c(
    "G1", "G2", "G3", "G4", "G5",
    "G12", "G20", "G21", "G31", "G40", "G41", "G51"
)
small_spdf <- subset(spdf, spdf@data$name %in% smallpostcodes)
plot(small_spdf)
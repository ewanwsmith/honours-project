# read in study dataset
study_dat <- read.csv(file = "./honoursproject/data/joined_data.csv", header = TRUE)

# Read UK postcode shape file with the rgdal library.
library(rgdal)
spdf <- readOGR(
    dsn = paste0(getwd(), "/honoursproject/data/Shapefiles"),
    layer = "Districts",
    verbose = FALSE
)

spdf <- spdf[spdf@data %in% study_dat$PostcodePart, ]
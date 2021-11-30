# read in study dataset
study_dat <- read.csv(
    file =
        "./honoursproject/data/data.csv",
    header = TRUE
)

# read in postcodes list 
postcodes <- read.csv(
    file =
        "./honoursproject/data/postcodes/postcodes.csv",
    header = TRUE
)


# Read UK postcode shape file
library(rgdal)
spdf <- readOGR(
    dsn = paste0(getwd(), "/honoursproject/data/Shapefiles"),
    layer = "Districts",
    verbose = FALSE
)

# filter for just postcode areas in GG&C
spdf = subset(spdf, spdf@data$name %in% postcodes$Column1)

# plot map
library(ggplot2)
map = ggplot() +
  geom_polygon(data = spdf, aes( x = long, y = lat, group = group), fill="#69b3a2", color = "white") +
  theme_void() 


# Read this shape file with the rgdal library.
library(rgdal)
spdf <- readOGR(
    dsn = paste0(getwd(), "/honoursproject/data/Shapefiles"),
    layer = "Districts",
    verbose = FALSE
)

# Basic plot of shape file
par(mar = c(0, 0, 0, 0))
plot(spdf, col = "#f2f2f2", bg = "skyblue", lwd = 0.25, border = 0)
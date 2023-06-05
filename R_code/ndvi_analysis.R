library(raster)
library(RColorBrewer)
library(ggplot2)
library(dplyr)

path_to_rasters = '/Users/sagemcginley-smith/Desktop/ess262/project/raster_data/ndvi'
ndvi_rasters <- list.files(path=path_to_rasters, pattern="tif", all.files=FALSE, full.names=TRUE,recursive=TRUE)
for  (i  in  1:length(ndvi_rasters))  { 
  plot(ndvi_rasters[i])
}
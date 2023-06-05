library(raster)
library(RColorBrewer)
library(ggplot2)
library(dplyr)
library(stringr)

##################################
###### NDVI ######################
##################################
setwd("~")
path_to_rasters = '/Users/sagemcginley-smith/Desktop/ess262/project/raster_data/ndvi'
ndvi_rasters <- list.files(path=path_to_rasters, pattern="tif", all.files=FALSE, full.names=TRUE,recursive=TRUE)
titles <- c()
graph_header <- c()
for  (i  in  1:length(ndvi_rasters))  { 
  png_title <- str_extract(ndvi_rasters[i], "(?<=/)[^/]+\\.tif$")
  png_title <- str_remove(png_title, "\\.tif$")
  graph_header <- c(graph_header, png_title)
  png_title <- paste0(png_title, ".png")
  titles <- c(titles, png_title)
}

setwd('/Users/sagemcginley-smith/Desktop/ess262/project/raster_data/ndvi/ndviplots')

for  (i  in  1:length(ndvi_rasters))  { 
  me_pred_raster <- raster(ndvi_rasters[i])
  title <- titles[i]
  colors2 <- c(RColorBrewer::brewer.pal(9, "YlGn"))[5:9]
  minmax_r = range(values(me_pred_raster), na.rm=TRUE)
  min <- minmax_r[1]
  max <- minmax_r[2]
  png(title, width = 600, height = 600)
  fig2a <- plot(me_pred_raster,# main=“A”,
                main=graph_header[i], #ylab = “B. straminea\n”,
                axes = FALSE, box = FALSE, legend = FALSE,
                breaks = c(seq(min, max, (max-min)/5)), col = colors2,
                #xlab=“Longitude”, ylab=“Latitude”,
                cex.main = 2, cex.lab=2, zlim=range(c(min,max))
  )
  legend_labels <- c(seq(min, max, (max-min)/4))
  legend_labels <- round(legend_labels, 2)
  legend_colors <- colors2
  legend("bottomright", legend = legend_labels, fill = legend_colors, bty = "n")
  dev.off()
}

##################################
###### NDWI ######################
##################################

setwd("~")
path_to_rasters = '/Users/sagemcginley-smith/Desktop/ess262/project/raster_data/ndwi'
ndwi_rasters <- list.files(path=path_to_rasters, pattern="tif", all.files=FALSE, full.names=TRUE,recursive=TRUE)
titles <- c()
graph_header <- c()
for  (i  in  1:length(ndwi_rasters))  { 
  png_title <- str_extract(ndwi_rasters[i], "(?<=/)[^/]+\\.tif$")
  png_title <- str_remove(png_title, "\\.tif$")
  graph_header <- c(graph_header, png_title)
  png_title <- paste0(png_title, ".png")
  titles <- c(titles, png_title)
}

setwd('/Users/sagemcginley-smith/Desktop/ess262/project/raster_data/ndwi/ndwiplots')

for  (i  in  1:length(ndvi_rasters))  { 
  me_pred_raster <- raster(ndwi_rasters[i])
  title <- titles[i]
  colors2 <- c(RColorBrewer::brewer.pal(9, "GnBu"))[5:9]
  minmax_r = range(values(me_pred_raster), na.rm=TRUE)
  min <- minmax_r[1]
  max <- minmax_r[2]
  png(title, width = 600, height = 600)
  fig2a <- plot(me_pred_raster,# main=“A”,
                main=graph_header[i], #ylab = “B. straminea\n”,
                axes = FALSE, box = FALSE, legend = FALSE,
                breaks = c(seq(min, max, (max-min)/5)), col = colors2,
                #xlab=“Longitude”, ylab=“Latitude”,
                cex.main = 2, cex.lab=2, zlim=range(c(min,max))
  )
  print(c(seq(min, max, (max-min)/5)))
  legend_labels <- c(seq(min, max, (max-min)/4))
  legend_labels <- round(legend_labels, 2)
  legend_colors <- colors2
  legend("bottomright", legend = legend_labels, fill = legend_colors, bty = "n")
  dev.off()
}
 
##################################
###### lst ######################
##################################

setwd("~")
path_to_rasters = '/Users/sagemcginley-smith/Desktop/ess262/project/raster_data/lst'
lst_rasters <- list.files(path=path_to_rasters, pattern="tif", all.files=FALSE, full.names=TRUE,recursive=TRUE)
titles <- c()
graph_header <- c()
for  (i  in  1:length(lst_rasters))  { 
  png_title <- str_extract(lst_rasters[i], "(?<=/)[^/]+\\.tif$")
  png_title <- str_remove(png_title, "\\.tif$")
  graph_header <- c(graph_header, png_title)
  png_title <- paste0(png_title, ".png")
  titles <- c(titles, png_title)
}

setwd('/Users/sagemcginley-smith/Desktop/ess262/project/raster_data/lst/lstplots')

for  (i  in  1:length(lst_rasters))  { 
  me_pred_raster <- raster(lst_rasters[i])
  title <- titles[i]
  colors2 <- c(RColorBrewer::brewer.pal(9, "YlOrRd"))[5:9]
  minmax_r = range(values(me_pred_raster), na.rm=TRUE)
  min <- minmax_r[1]
  max <- minmax_r[2]
  png(title, width = 600, height = 600)
  fig2a <- plot(me_pred_raster,# main=“A”,
                main=graph_header[i], #ylab = “B. straminea\n”,
                axes = FALSE, box = FALSE, legend = FALSE,
                breaks = c(seq(min, max, (max-min)/5)), col = colors2,
                #xlab=“Longitude”, ylab=“Latitude”,
                cex.main = 2, cex.lab=2, zlim=range(c(min,max))
  )
  print(c(seq(min, max, (max-min)/5)))
  legend_labels <- c(seq(min, max, (max-min)/4))
  legend_labels <- round(legend_labels, 2)
  legend_colors <- colors2
  legend("bottomright", legend = legend_labels, fill = legend_colors, bty = "n")
  dev.off()
}

##################################
###### nirv ######################
##################################

setwd("~")
path_to_rasters = '/Users/sagemcginley-smith/Desktop/ess262/project/raster_data/new_nirv'
nirv_rasters <- list.files(path=path_to_rasters, pattern="tif", all.files=FALSE, full.names=TRUE,recursive=TRUE)
titles <- c()
graph_header <- c()
for  (i  in  1:length(nirv_rasters))  { 
  png_title <- str_extract(nirv_rasters[i], "(?<=/)[^/]+\\.tif$")
  png_title <- str_remove(png_title, "\\.tif$")
  graph_header <- c(graph_header, png_title)
  png_title <- paste0(png_title, ".png")
  titles <- c(titles, png_title)
}

setwd('/Users/sagemcginley-smith/Desktop/ess262/project/raster_data/new_nirv/new_nirv_plots')
for  (i  in  1:length(nirv_rasters))  { 
  me_pred_raster <- raster(nirv_rasters[i])
  title <- titles[i]
  colors2 <- c(RColorBrewer::brewer.pal(9, "YlGn"))[5:9]
  minmax_r = range(values(me_pred_raster), na.rm=TRUE)
  min <- minmax_r[1]
  max <- minmax_r[2]
  png(title, width = 600, height = 600)
  fig2a <- plot(me_pred_raster,# main=“A”,
                main=graph_header[i], #ylab = “B. straminea\n”,
                axes = FALSE, box = FALSE, legend = FALSE,
                breaks = c(seq(min, max, (max-min)/5)), col = colors2,
                #xlab=“Longitude”, ylab=“Latitude”,
                cex.main = 2, cex.lab=2, zlim=range(c(min,max))
  )
  legend_labels <- c(seq(min, max, (max-min)/4))
  legend_labels <- round(legend_labels, 2)
  legend_colors <- colors2
  legend("bottomright", legend = legend_labels, fill = legend_colors, bty = "n")
  dev.off()
}


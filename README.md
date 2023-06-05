# Analysis of Bison Ranching Impacts on Rangeland Health

Technical Documentation Guide Compiled by Sage McGinley-Smith

Henry Lai, Tule Horton, Sage McGinley-Smith

ESS 262: Remote Sensing of Land 

Spring 2023


## Creating Shapefiles

Shapefiles were created in Google Earth Engine. Several of the sites had Shapefiles that were provided by the property owners, while other sites had only maps that we then converted to shapefiles using the satellite map. The shapefiles used for this project can be found the shp_files folder of this repository. 

## Downloading Raster Data

Code for downloading raster data for each of the indexes can be found at the following links. All data was drawn from the Landsat 8 dataset in Google Earth Engine.

Land Surface Temperature: https://code.earthengine.google.com/789f25831e0b1976b620db30ef05c31e

Note: LST was later converted to degrees celcius in R. Code for the conversion can be found in the R_code folder in the file titled converting_temp_values.R.

NDVI: https://code.earthengine.google.com/6206899ff15226568f1178ebed474e86

NDWI: https://code.earthengine.google.com/01a57dd40e737246a1c87334577ca8b8

NIRv: https://code.earthengine.google.com/6acb27b4f9d250c9bf8ab0cb78070264

## Raster Visualization and Analysis

Rasters were loaded into R and downloaded as png files visualized using the RColorBrewer package. Code for this plot generation can be found in the visualizing_rasters.R file in the R_code folder. 

Averages and min and max values were computed using features from the 'raster' package in R. Code for this analysis can be found in the averages.R file in the R_code folder. Resulting Values can be found in the analysis_csv_cleaned folder.

## Figures

The final step of the analysis was creating visualizations of the computed values for the rasters. Code for generating the bar charts can be found in making_bar_plots.R in the R_code folder. The bar plots themselves are located in the bar_charts folder, and are titled according to the information they display. For example, avg_top_ndvi_nbr.png charts the average NDVI values for the National Bison Range study area.

![avg_top_ndvi_nbr](https://github.com/sagems/ess262_final/assets/122573798/f6648abc-a093-477f-8215-3608180de93c)



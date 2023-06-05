
csv_files <- list.files(path='/Users/sagemcginley-smith/Desktop/ess262/project/raster_data/analysis_csv_cleaned', pattern="lst_cleaned.csv", all.files=FALSE, full.names=TRUE,recursive=TRUE)
# https://giscrack.com/how-to-calculate-land-surface-temperature-with-landsat-8-images/
for  (i  in  1:length(csv_files))  { 
  file <- read.csv(csv_files[i])
  K2 <- 1321.0789
  K1 <- 774.8853
  file$Average.Value <- file$Average.Value + 273.15
  file$Average.Value <- (file$Average.Value * 0.0003342) + 0.1
  
  file$Min <- file$Min + 273.15
  file$Min <- (file$Min * 0.0003342) + 0.1
  
  file$Max <- file$Max + 273.15
  file$Max <- (file$Max * 0.0003342) + 0.1
  
  file$Avg.Bottom.Ten.Percent <- file$Avg.Bottom.Ten.Percent + 273.15
  file$Avg.Bottom.Ten.Percent <- (file$Avg.Bottom.Ten.Percent * 0.0003342) + 0.1
  
  file$Avg.Top.Ten.Percent <- file$Avg.Top.Ten.Percent + 273.15
  file$Avg.Top.Ten.Percent <- (file$Avg.Top.Ten.Percent * 0.0003342) + 0.1
  
  file$Average.Value <- (K2 / (log((K1 / file$Average.Value) + 1))) - 273.15
  file$Min <- (K2 / (log((K1 / file$Min) + 1))) - 273.15
  file$Max <- (K2 / (log((K1 / file$Max) + 1))) - 273.15
  file$Avg.Bottom.Ten.Percent <- (K2 / (log((K1 / file$Avg.Bottom.Ten.Percent) + 1))) - 273.15
  file$Avg.Top.Ten.Percent <- (K2 / (log((K1 / file$Avg.Top.Ten.Percent) + 1))) - 273.15
  write.csv(file, csv_files[i])
}
  
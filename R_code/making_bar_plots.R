library('dplyr')
library('ggplot2')

setwd('/Users/sagemcginley-smith/Desktop/ess262/project/raster_data/analysis_csv_cleaned')
csv<- read.csv('konza_ndwi_cleaned.csv')
graph_title <- 'Average of Top 10% of NDWI Values Konza Site'
index <- 'NDWI'
png_title <- 'avg_top_ndwi_konza.png'

{
  my_colors <- c("#85C307", "#067AD1")
  csv$Date <- as.factor(csv$Date)
  csv <- csv %>%
    group_by(Date) %>%
    filter(n() > 1) %>%
    ungroup()
  bar_chart <- ggplot(csv, aes(x = Date, y = Avg.Top.Ten.Percent, fill = Location)) +
    geom_bar(stat = "identity", position = "dodge", width = 0.3) +
    labs(x = "Date", y = index, title = graph_title) +
    scale_fill_manual(values = my_colors) + 
    theme_bw() + 
    theme(panel.grid = element_blank(),
          plot.title = element_text(hjust = 0.5, vjust = 2, margin = margin(b = 20)),
          plot.margin = margin(t = 30, r = 10, b = 10, l = 10, unit = "pt"))
  
  setwd("/Users/sagemcginley-smith/Desktop/ess262/project/raster_data/analysis_csv_cleaned/")
  ggsave(png_title, bar_chart, width = 8, height = 6, dpi = 300)
  
}
 
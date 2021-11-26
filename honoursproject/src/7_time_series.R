# read in study datasets
c_dat <- read.csv(
    file =
        "./honoursproject/data/c_data.csv",
    header = TRUE
)

library(lubridate)
c_dat$Date <- ymd(c_dat$Date)

library(ggplot2)
png(
    file = "./honoursproject/src/plots/time_plot_S1.png",
    width = 600, height = 600
)
S1_time_plot <- ggplot(c_dat, aes(x=Date, y=S1)) +
  geom_line() + 
  scale_x_date(date_labels = "%b %y") +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  theme_minimal() +
  xlab("")
dev.off()

png(
    file = "./honoursproject/src/plots/time_plot_RBD.png",
    width = 600, height = 600
)
RBD_time_plot <- ggplot(c_dat, aes(x=Date, y=RBD)) +
  geom_line() + 
  scale_x_date(date_labels = "%b %y") +
  theme(axis.text.x=element_text(angle=60, hjust=1)) +
  theme_minimal() +
  xlab("")
dev.off()


library(plotly)
int_RBD_time_plot = ggplotly(RBD_time_plot)
int_S1_time_plot = ggplotly(S1_time_plot)

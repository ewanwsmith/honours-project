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
  plot(S1_time_plot)
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
  plot(RBD_time_plot)
dev.off()


# two lines on same plot 
S1count = c_dat[, c("Date", "S1")]
RBDcount = c_dat[, c("Date", "RBD")]

count <- merge(S1count, RBDcount, by="Date")

library(reshape2)
countMelted <- melt(count, id.var='Date')

png('./honoursproject/src/plots/two_time_plot.png')
two_time_plot <- ggplot(countMelted, aes(x=Date, y=value, col=variable)) + 
  geom_line() +
  theme_minimal() + 
  ylab("Positive Sample Count") +
  labs(colour = "Antigen")
plot(two_time_plot)
dev.off()


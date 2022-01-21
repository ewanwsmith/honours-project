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
  theme_minimal(base_size = 30) + 
  ylab("Number of S1 Positive Samples") +
  xlab("") +
  ylim(0,5000)
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
  theme_minimal(base_size = 30) + 
  ylab("Number of RBD Positive Samples") +
  xlab("") +
  ylim(0,5000)
  plot(RBD_time_plot)
dev.off()

png(
    file = "./honoursproject/src/plots/two_together_time_plot_RBD.png",
    width = 2400, height = 1200
)
library(ggpubr)
two_together_time_plot = ggarrange(S1_time_plot, RBD_time_plot, ncol = 2, labels = c("A", "B"))
  plot(two_together_time_plot)
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
  theme_minimal(base_size = 30) + 
  ylab("Positive Sample Count") +
  labs(colour = "Antigen") +
  theme(legend.position = c(0.8, 0.2))
plot(two_time_plot)
dev.off()

png('./honoursproject/src/plots/diff_plot.png')
c_dat$Diff = c_dat$S1 - c_dat$RBD
diff_plot <- ggplot(c_dat, aes(x=Date, y=Diff)) +
  geom_line() +
  theme_minimal(base_size = 30) + 
  geom_area() +
  ylab("")
  xlab("Difference between S1 and RBD Seropositive Sample Count")
plot(diff_plot)
dev.off()

png(
    file = "./honoursproject/src/plots/two_together_diff_plot.png",
    width = 2400, height = 1200
)
library(ggpubr)
two_together_diff_plot = ggarrange(two_time_plot, diff_plot, ncol = 2, labels = c("A", "B"))
  plot(two_together_diff_plot)
dev.off()

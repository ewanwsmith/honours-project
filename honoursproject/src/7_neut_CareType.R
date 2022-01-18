source("./honoursproject/src/6_model_selection.R")

# create plotting datasets
serotype = c("RBD Seropositive", "RBD Seronegative")
primary_train = filter(S1train, CareType == "Primary")
secondary_train = filter(S1train, CareType == "Secondary")

primarycounts = c(sum(primary_train$RBD_seropositive == 1), sum(primary_train$RBD_seropositive == 0))
primary_pie_data = data.frame(caretype, primarycounts)

secondarycounts = c(sum(secondary_train$RBD_seropositive == 1), sum(secondary_train$RBD_seropositive == 0))
secondary_pie_data = data.frame(caretype, secondarycounts)

# RBD seropositive piechart
primary_pie_plot = ggplot(primary_pie_data, aes(x="", y=primarycounts, fill=serotype)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  ggtitle("Primary Care") +
  theme_void() +
  theme(legend.position="none") +
    theme(
    plot.title=element_text( hjust=0.5, vjust=1, face='bold')
  ) + 
  guides(fill=guide_legend("RBD Seropositivity"), face = "bold")

# RBD seronegative piechart
secondary_pie_plot = ggplot(secondary_pie_data, aes(x="", y=secondarycounts, fill=serotype)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  ggtitle("Secondary Care") +
  theme_void() + 
  theme(legend.position="none") +
    theme(
    plot.title=element_text( hjust=0.5, vjust=1, face='bold')
  )

# plot on same sheet
library(ggpubr)
png('./honoursproject/src/plots/S1_care_pichart.png')
care_pie_plot = ggarrange(primary_pie_plot, secondary_pie_plot, common.legend=TRUE, legend = "right")
plot(care_pie_plot)
dev.off()


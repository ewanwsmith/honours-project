source("./honoursproject/src/6_model_selection.R")

# create plotting datasets
serotype = c("RBD Seropositive", "RBD Seronegative")
primary_train = filter(S1train, CareType == "Primary")
secondary_train = filter(S1train, CareType == "Secondary")

primarycounts = c(sum(primary_train$RBD_seropositive == 1), sum(primary_train$RBD_seropositive == 0))
primary_pie_data = data.frame(serotype, primarycounts)

secondarycounts = c(sum(secondary_train$RBD_seropositive == 1), sum(secondary_train$RBD_seropositive == 0))
secondary_pie_data = data.frame(serotype, secondarycounts)

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
png('./honoursproject/src/plots/S1_care_piechart.png')
care_pie_plot = ggarrange(primary_pie_plot, secondary_pie_plot, common.legend=TRUE, legend = "right")
plot(care_pie_plot)
dev.off()

# piecharts aren't great for dataviz, so barplot of seropositive%
caretype = c("Primary Care", "Secondary Care")
care_pos_count = c(sum(primary_train$RBD_seropositive == 1), sum(secondary_train$RBD_seropositive == 1))
care_length = c(nrow(primary_train), nrow(secondary_train))
care_data = data.frame(caretype, care_pos_count, care_length, "care_pos_pc" = ((care_pos_count/care_length)*100))

# z test for proportion
sink(("./honoursproject/src/output/care_prop.txt"))
care_prop <- prop.test(x = care_data$care_pos_count, n = care_data$care_length)
print(care_prop)
sink()

# barplot
library(ggpubr)
png('./honoursproject/src/plots/S1_care_barplot.png')
care_barplot = ggplot(care_data, aes(x=caretype, y=care_pos_pc, fill = caretype)) + 
  geom_bar(stat = "identity") +
  theme_minimal() +
  theme(legend.position="none") + 
  xlab("") +
  ylab("% RBD Seropositivity") +
  theme(axis.text=element_text(size=14)) +
  theme(axis.title.y=element_text(size=14))
plot(care_barplot)
dev.off()
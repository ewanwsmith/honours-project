source("./honoursproject/src/6_model_selection.R")

# create plotting datasets
sex = c("Male", "Female")
male_train = filter(S1train, Sex == "Male")
female_train = filter(S1train, Sex == "Female")

malecounts = c(sum(male_train$RBD_seropositive == 1), sum(male_train$RBD_seropositive == 0))
male_pie_data = data.frame(serotype, malecounts)

femalecounts = c(sum(female_train$RBD_seropositive == 1), sum(female_train$RBD_seropositive == 0))
female_pie_data = data.frame(serotype, femalecounts)

# RBD seropositive piechart
male_pie_plot = ggplot(male_pie_data, aes(x="", y=malecounts, fill=sex)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  ggtitle("Male") +
  theme_void() +
  theme(legend.position="none") +
    theme(
    plot.title=element_text( hjust=0.5, vjust=1, face='bold')
  ) + 
  guides(fill=guide_legend("RBD Seropositivity"), face = "bold")

# RBD seronegative piechart
female_pie_plot = ggplot(female_pie_data, aes(x="", y=femalecounts, fill=sex)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  ggtitle("Female") +
  theme_void() + 
  theme(legend.position="none") +
    theme(
    plot.title=element_text( hjust=0.5, vjust=1, face='bold')
  )

# plot on same sheet
library(ggpubr)
png('./honoursproject/src/plots/S1_sex_piechart.png')
sex_pie_plot = ggarrange(male_pie_plot, female_pie_plot, common.legend=TRUE, legend = "right")
plot(sex_pie_plot)
dev.off()

# piecharts aren't great for dataviz, so barplot of seropositive%
sex = c("Male", "Female")
sex_pos_count = c(sum(male_train$RBD_seropositive == 1), sum(female_train$RBD_seropositive == 1))
sex_length = c(nrow(male_train), nrow(female_train))
sex_data = data.frame(sex, sex_pos_count, sex_length, "sex_pos_pc" = ((sex_pos_count/sex_length)*100))

# z test for proportion
sink(("./honoursproject/src/output/sex_prop.txt"))
sex_prop <- prop.test(x = sex_data$sex_pos_count, n = sex_data$sex_length)
print(sex_prop)
sink()

# barplot
library(ggpubr)
png('./honoursproject/src/plots/S1_sex_barplot.png')
sex_barplot = ggplot(sex_data, aes(x=sex, y=sex_pos_pc, fill = sex)) + 
  geom_bar(stat = "identity") +
  theme_minimal() +
  theme(legend.position="none") + 
  xlab("") +
  ylab("% RBD Seropositivity") +
  theme(axis.text=element_text(size=14)) +
  theme(axis.title.y=element_text(size=14))
plot(sex_barplot)
dev.off()
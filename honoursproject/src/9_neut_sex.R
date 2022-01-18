source("./honoursproject/src/6_model_selection.R")

# create plotting datasets
sex = c("Male", "Female")
male_train = filter(S1train, Sex == "Male")
female_train = filter(S1train, Sex == "Female")

malecounts = c(sum(male_train$RBD_seropositive == 1), sum(male_train$RBD_seropositive == 0))
male_pie_data = data.frame(sex, malecounts)

femalecounts = c(sum(female_train$RBD_seropositive == 1), sum(female_train$RBD_seropositive == 0))
female_pie_data = data.frame(sex, femalecounts)

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


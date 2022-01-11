source("./honoursproject/src/6_model_selection.R")

# create plotting datasets
samplesex = c("Male", "Female")

sexposcounts = c(sum(RBD_pos_train$Sex=="Male"), sum(RBD_pos_train$Sex=="Female"))
sex_pos_pie_data = data.frame(samplesex, sexposcounts)

sexnegcounts = c(sum(RBD_neg_train$Sex=="Male"), sum(RBD_neg_train$Sex=="Female"))
sex_neg_pie_data = data.frame(samplesex, sexnegcounts)

# RBD seropositive piechart
sex_pos_pie_plot = ggplot(sex_pos_pie_data, aes(x="", y=sexposcounts, fill=samplesex)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  ggtitle("RBD seropositive") +
  theme_void() +
  theme(legend.position="none") +
    theme(
    plot.title=element_text( hjust=0.5, vjust=1, face='bold')
  ) + 
  guides(fill=guide_legend("Sex"), face = "bold")

# RBD seronegative piechart
sex_neg_pie_plot = ggplot(sex_neg_pie_data, aes(x="", y=sexnegcounts, fill=samplesex)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  ggtitle("RBD seronegative") +
  theme_void() + 
  theme(legend.position="none") +
    theme(
    plot.title=element_text( hjust=0.5, vjust=1, face='bold')
  )

# plot on same sheet
library(ggpubr)
png('./honoursproject/src/plots/S1_sex_piechart.png')
sex_pie_plot = ggarrange(sex_pos_pie_plot, sex_neg_pie_plot, common.legend=TRUE, legend = "right")
plot(sex_pie_plot)
dev.off()
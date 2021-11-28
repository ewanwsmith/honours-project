source("./honoursproject/src/6_model_selection.R")

# create plotting datasets
caretype = c("Primary", "Secondary")

poscounts = c(sum(RBD_pos_train$CareType=="Primary"), sum(RBD_pos_train$CareType=="Secondary"))
pos_pie_data = data.frame(caretype, poscounts)

negcounts = c(sum(RBD_neg_train$CareType=="Primary"), sum(RBD_neg_train$CareType=="Secondary"))
neg_pie_data = data.frame(caretype, negcounts)

# RBD seropositive piechart
pos_pie_plot = ggplot(pos_pie_data, aes(x="", y=poscounts, fill=caretype)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  ggtitle("RBD seropositive") +
  theme_void() +
  theme(legend.position="none") +
    theme(
    plot.title=element_text( hjust=0.5, vjust=1, face='bold')
  ) + 
  guides(fill=guide_legend("Care Type"), face = "bold")

# RBD seronegative piechart
neg_pie_plot = ggplot(neg_pie_data, aes(x="", y=negcounts, fill=caretype)) +
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
png('./honoursproject/src/plots/S1_care_piechart.png')
care_pie_plot = ggarrange(pos_pie_plot, neg_pie_plot, common.legend=TRUE, legend = "right")
plot(care_pie_plot)
dev.off()
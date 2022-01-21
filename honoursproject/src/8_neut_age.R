source("./honoursproject/src/6_model_selection.R")

# boxplot of age by RBD seropositivity
age_boxplot = ggplot(data = S1train, aes(x=as.factor(RBD_seropositive), y=Age, fill = as.factor(RBD_seropositive))) + 
    geom_boxplot(alpha=0.4) +
    xlab("RBD seropositivity") +
    theme_minimal() +
    theme(legend.position="none")

age_jitter_boxplot = ggplot(data = S1train, aes(x=as.factor(RBD_seropositive), y=Age, fill = as.factor(RBD_seropositive))) + 
    geom_boxplot(alpha=0.4) +
    xlab("RBD seropositivity") +
    theme_minimal() +
    theme(legend.position="none") +
    geom_jitter(color="black", size=0.4, alpha=0.9)

# too many datapoints, so density plot

library(ggpubr)
age_density_plot = ggplot(data=S1train, aes(x=Age, group=as.factor(RBD_seropositive), fill=as.factor(RBD_seropositive))) +
    geom_density(adjust=1.5, alpha=.4) +
  theme_minimal(base_size = 30) + 
    theme(legend.position="bottom", legend.box = "vertical") +
    guides(fill=guide_legend(title="RBD Seropositivity"))

# probit regression
sink(("./honoursproject/src/output/age_probit.txt"))
age_probit = glm(RBD_seropositive ~ Age, data=S1train, family=binomial(link="probit"))
print(summary(age_probit))
sink()
age_probit_plot = ggplot(S1train, aes(x=Age, y=RBD_seropositive)) + 
  geom_point() + 
  stat_smooth(method="glm", method.args=list(family=binomial(link="probit"))) +
  theme_minimal(base_size = 30) + 
  ylab("RBD Seropositivity")

png(
    file = "./honoursproject/src/plots/age_plot.png",
    width = 2400, height = 1200
)
library(ggpubr)
age_plot = ggarrange(age_density_plot, age_probit_plot, ncol = 2, labels = c("A", "B"))
  plot(age_plot)
dev.off()
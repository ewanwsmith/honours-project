source("./honoursproject/src/6_model_selection.R")
source("./honoursproject/src/3_seroprevalence_postcode.R")

m = glm(RBD_seropositive == 1 ~ PostcodePart, data = S1train, family = binomial(link = "probit"))

postcodecount = data.frame(unique(S1train$PostcodePart))
names(postcodecount)[names(postcodecount) == "unique.S1train.PostcodePart."] <- "postcode"
postcodecount$RBDcount = (sum(subset(S1train$RBD_seropositive, S1train$PostcodePart == postcodecount$postcode)))

postcodeplot = ggplot(S1train, aes(x=PostcodePart, y=(sum(RBD_seropositive==1)/nrow(S1train))), group = PostcodePart) + 
  geom_bar(stat = "identity") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
View(postcodeplot)
dwp_2_year_expectations <-c(0.3470,0.2690,0.2120,0.1540,0.408,0.1270,0.1270,0.0640,0.0860,0.430,0.2450)
gp_performance_2year <- data.frame(rownames(gp_performance),gp_performance_2year, 
                                   dwp_2_year_expectations)                                
names(gp_performance_2year) <- c("Payment Group", "Actual performance", "DWP expectations")
ggfig7 <- ggplot(melt(gp_performance_2year[-c(6,10),]), aes(x=`Payment Group`, y=value, fill=variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  geom_text(aes(y=value), label=percent(value),position=position_dodge(0.9), hjust=0) +
  coord_flip() + theme_economist_white(gray_bg=FALSE, horizontal=FALSE) +
  scale_y_continuous(labels=percent) + 
  scale_fill_lwi() + labs(x="", y="")


dwp_1_year_expectations <-c(0.140,0.109,0.120,0.0870,0.2310,0.720,0.0720,0.0360,0.0480,0.2430,0.099)
gp_performance_1year <- data.frame(rownames(gp_performance),gp_performance_1year, 
                                   dwp_1_year_expectations)                                
names(gp_performance_1year) <- c("Payment Group", "Actual performance", "DWP expectations")
ggfig8 <- ggplot(melt(gp_performance_1year[-c(6,10),]), aes(x=`Payment Group`, y=value, fill=variable)) + 
  geom_bar(stat="identity", position = "dodge") + 
  geom_text(aes(y=value, label=percent(value)),position=position_dodge(0.9), hjust=0) +
  coord_flip() + theme_economist_white(gray_bg=FALSE, horizontal=FALSE) +
  scale_y_continuous(labels=percent) + 
  scale_fill_lwi() + labs(x="", y="")

ggsave("Figure_7.png", ggfig7, width=8, height=4, units="in")
ggsave("Figure_8.png", ggfig8, width=8, height=4, units="in")

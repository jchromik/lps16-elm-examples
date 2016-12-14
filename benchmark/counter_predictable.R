library(ggplot2)

cp0 <- read.csv("logs/counter_predictable_0messages_100runs.log.csv")
#cp1 <- read.csv("logs/counter_predictable_10messages_100runs.log.csv")
cp2 <- read.csv("logs/counter_predictable_100messages_100runs.log.csv")
#cp3 <- read.csv("logs/counter_predictable_1000messages_100runs.log.csv")
cp4 <- read.csv("logs/counter_predictable_10000messages_100runs.log.csv")

cp0$messages <- 0
#cp1$messages <- 10
cp2$messages <- 100
#cp3$messages <- 1000
cp4$messages <- 10000

cp <- rbind(cp0, cp2, cp4)
cp$messages <- as.factor(cp$messages)

cp_plot <- ggplot(cp, aes(messages, runtime))
cp_plot +
  geom_boxplot() +
  ggtitle("counter predictable") + 
  xlab("message sends") +
  ylab("runtime / ms") +
  theme_light()
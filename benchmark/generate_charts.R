library(ggplot2)

### Read CSV files with runtime data.

# counter_predictable
cp0 <- read.csv("logs/counter_predictable_0messages_100runs.log.csv")
cp1 <- read.csv("logs/counter_predictable_10messages_100runs.log.csv")
cp2 <- read.csv("logs/counter_predictable_100messages_100runs.log.csv")
cp3 <- read.csv("logs/counter_predictable_1000messages_100runs.log.csv")
cp4 <- read.csv("logs/counter_predictable_10000messages_100runs.log.csv")

# counter_unpredictable
cu0 <- read.csv("logs/counter_unpredictable_0messages_100runs.log.csv")
cu1 <- read.csv("logs/counter_unpredictable_10messages_100runs.log.csv")
cu2 <- read.csv("logs/counter_unpredictable_100messages_100runs.log.csv")
cu3 <- read.csv("logs/counter_unpredictable_1000messages_100runs.log.csv")
cu4 <- read.csv("logs/counter_unpredictable_10000messages_100runs.log.csv")

# onlynumber_predictable_keep
opk0 <-read.csv("logs/onlynumbers_predictable_keep_0messages_100runs.log.csv")
opk1 <-read.csv("logs/onlynumbers_predictable_keep_10messages_100runs.log.csv")
opk2 <-read.csv("logs/onlynumbers_predictable_keep_100messages_100runs.log.csv")
opk3 <-read.csv("logs/onlynumbers_predictable_keep_1000messages_100runs.log.csv")
opk4 <-read.csv("logs/onlynumbers_predictable_keep_10000messages_100runs.log.csv")

# onlynumber_predictable_reject
opr0 <-read.csv("logs/onlynumbers_predictable_reject_0messages_100runs.log.csv")
opr1 <-read.csv("logs/onlynumbers_predictable_reject_10messages_100runs.log.csv")
opr2 <-read.csv("logs/onlynumbers_predictable_reject_100messages_100runs.log.csv")
opr3 <-read.csv("logs/onlynumbers_predictable_reject_1000messages_100runs.log.csv")
opr4 <-read.csv("logs/onlynumbers_predictable_reject_10000messages_100runs.log.csv")

# onlynumber_unpredictable
ou0 <-read.csv("logs/onlynumbers_unpredictable_0messages_100runs.log.csv")
ou1 <-read.csv("logs/onlynumbers_unpredictable_10messages_100runs.log.csv")
ou2 <-read.csv("logs/onlynumbers_unpredictable_100messages_100runs.log.csv")
ou3 <-read.csv("logs/onlynumbers_unpredictable_1000messages_100runs.log.csv")
ou4 <-read.csv("logs/onlynumbers_unpredictable_10000messages_100runs.log.csv")


### Tag data frames with number of messages.

cp0$messages <- 0
cp1$messages <- 10
cp2$messages <- 100
cp3$messages <- 1000
cp4$messages <- 10000

cu0$messages <- 0
cu1$messages <- 10
cu2$messages <- 100
cu3$messages <- 1000
cu4$messages <- 10000

opk0$messages <- 0
opk1$messages <- 10
opk2$messages <- 100
opk3$messages <- 1000
opk4$messages <- 10000

opr0$messages <- 0
opr1$messages <- 10
opr2$messages <- 100
opr3$messages <- 1000
opr4$messages <- 10000

ou0$messages <- 0
ou1$messages <- 10
ou2$messages <- 100
ou3$messages <- 1000
ou4$messages <- 10000


### Union all of (bind) corresponding data frames.

cp <- rbind(cp0, cp1, cp2, cp3, cp4)
cp$messages <- as.factor(cp$messages)

cu <- rbind(cu0, cu1, cu2, cu3, cu4)
cu$messages <- as.factor(cu$messages)

opk <- rbind(opk0, opk1, opk2, opk3, opk4)
opk$messages <- as.factor(opk$messages)

opr <- rbind(opr0, opr1, opr2, opr3, opr4)
opr$messages <- as.factor(opr$messages)

ou <- rbind(ou0, ou1, ou2, ou3, ou4)
ou$messages <- as.factor(ou$messages)


### Plot.

cp_plot <- ggplot(cp, aes(messages, runtime))
cp_plot +
  geom_boxplot() +
  ggtitle("counter predictable") + 
  xlab("message sends") +
  ylab("runtime / ms") +
  theme_light()

cu_plot <- ggplot(cu, aes(messages, runtime))
cu_plot +
  geom_boxplot() +
  ggtitle("counter unpredictable") + 
  xlab("message sends") +
  ylab("runtime / ms") +
  theme_light()

opk_plot <- ggplot(opk, aes(messages, runtime))
opk_plot +
  geom_boxplot() +
  ggtitle("onlynumbers predictable keep") + 
  xlab("message sends") +
  ylab("runtime / ms") +
  theme_light()

opr_plot <- ggplot(opr, aes(messages, runtime))
opr_plot +
  geom_boxplot() +
  ggtitle("onlynumbers predictable reject") + 
  xlab("message sends") +
  ylab("runtime / ms") +
  theme_light()

ou_plot <- ggplot(ou, aes(messages, runtime))
ou_plot +
  geom_boxplot() +
  ggtitle("onlynumbers unpredictable") + 
  xlab("message sends") +
  ylab("runtime / ms") +
  theme_light()
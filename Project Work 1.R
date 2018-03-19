library(ggplot2)
library(caret)

setwd("/Users/SallyA/Documents/CIND119/Project/datasets 2/german_credit_card/")
mydata <- read.csv(file = "german_credit.csv", header= TRUE)
#summary(mydata)
#str(mydata)

#Cross Tabulation
x1 <- table(mydata$Creditability, mydata$Account.Balance)
x2 <- table(mydata$Creditability, mydata$Duration.of.Credit..month.)
x3 <- table(mydata$Creditability, mydata$Payment.Status.of.Previous.Credit)
x4 <- table(mydata$Creditability, mydata$Purpose)
x5 <- table(mydata$Creditability, mydata$Value.Savings.Stocks)
x6 <- table(mydata$Creditability, mydata$Length.of.current.employment)
x7 <- table(mydata$Creditability, mydata$Instalment.per.cent)
x8 <- table(mydata$Creditability, mydata$Sex...Marital.Status)
x9 <- table(mydata$Creditability, mydata$Guarantors)
x10 <- table(mydata$Creditability, mydata$Duration.in.Current.address)
x11 <- table(mydata$Creditability, mydata$Most.valuable.available.asset)
x12 <- table(mydata$Creditability, mydata$Concurrent.Credits)
x13 <- table(mydata$Creditability, mydata$Type.of.apartment)
x14 <- table(mydata$Creditability, mydata$No.of.Credits.at.this.Bank)
x15 <- table(mydata$Creditability, mydata$Occupation)
x16 <- table(mydata$Creditability, mydata$No.of.dependents)
x17 <- table(mydata$Creditability, mydata$Telephone)
x18 <- table(mydata$Creditability, mydata$Foreign.Worker)

# Print Cross Tabulation with Margins
addmargins(x1)
prop.table(x1)*100
addmargins(x2)
prop.table(x2)*100
addmargins(x3)
prop.table(x3)*100
addmargins(x4)
prop.table(x4)*100
addmargins(x5)
prop.table(x5)*100
addmargins(x6)
prop.table(x6)*100
addmargins(x7)
prop.table(x7)*100
addmargins(x8)
addmargins(x9)
addmargins(x10)
addmargins(x11)
addmargins(x12)
addmargins(x13)
addmargins(x14)
addmargins(x15)
addmargins(x16)
addmargins(x17)
addmargins(x18)

#Continous Attributes Stats

summary(mydata$Duration.of.Credit..month.)
# Bins for histogram
brksCredit <- seq(0, 80, 10) 
# produces nice looking histogram
hist(mydata$Duration.of.Credit..month., breaks=brksCredit, xlab = "Credit Month", ylab = "Frequency", main = " ", cex=0.4) 
# For boxplot
boxplot(mydata$Duration.of.Credit..month., bty="n",xlab = "Credit Month", cex=0.4) 

summary(mydata$Credit.Amount)
#Bins for histogram
brksCreditA <- seq(250, 20000, 5000) 
# produces nice looking histogram
hist(mydata$Credit.Amount, breaks=brksCreditA, xlab = "Credit Amount", ylab = "Frequency", main = " ", cex=0.4) 
# For boxplot
boxplot(mydata$Credit.Amount, bty="n",xlab = "Credit Amount", cex=0.4) 

summary(mydata$Age..years.)
#Bins for histogram
brksCreditB <- seq(0, 100, 20) 
# produces nice looking histogram
hist(mydata$Age..years., breaks=brksCreditB, xlab = "Age", ylab = "Frequency", main = " ", cex=0.4) 
# For boxplot
boxplot(mydata$Age..years., bty="n",xlab = "Age", cex=0.4) 








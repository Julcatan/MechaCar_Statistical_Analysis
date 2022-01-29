#Deliverable 1
library(tidyverse)
library(dplyr)

MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)) #generate summary 


#Deliverable 2

PSI_summary<-Suspension_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD=sd(PSI), .groups=keep) #create table with one row - overall PSI statistics

lot_summary<-Suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD=sd(PSI)) #create statistics table PSI grouped by lot 

#Deliverable 3
t.test((Suspension_coil_table$PSI),mu=1500) #one sample t-test across all lots

t.test(subset(Suspension_coil_table,Manufacturing_Lot=="Lot1")$PSI,mu = 1500) #one sample t-test Lot1
t.test(subset(Suspension_coil_table,Manufacturing_Lot=="Lot2")$PSI,mu = 1500) #one sample t-test Lot2
t.test(subset(Suspension_coil_table,Manufacturing_Lot=="Lot3")$PSI,mu = 1500) #one sample t-test Lot3










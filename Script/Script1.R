#Reproducibility workshop
--------------------------------------------------------------------------------

#Install Packages--------------------------------------------------------------- 

install.packages("readxlxs") 

#Libaries-----------------------------------------------------------------------

library(readxl)
library(tidyverse)
library(ggplot2)

#Read in Excel-Sheet------------------------------------------------------------

dat <- read_xlsx("./Data/Exercise_Data.xlsx")

#Calculate Mean of LDPlus[s]----------------------------------------------------

mean(dat$`LDPlus[s]`)

#mean = 3.59 s

#Calculate Median of LDPlus[s]--------------------------------------------------

median(dat$`LDPlus[s]`)

#median = 2.9 s

#Create Boxplot of LDSPlus [s]--------------------------------------------------

boxplot(dat$Subject, dat$`LDPlus[s]`, ylab = "LDPlus [s]", col = "lightblue")

dat %>% 
  ggplot(aes(x=Subject, y=`LDPlus[s]`)) +
  geom_boxplot()

#Structure of dat---------------------------------------------------------------

str(dat)





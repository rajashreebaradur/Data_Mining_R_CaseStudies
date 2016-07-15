# 1. Get datasets from the package included in the book
library(DMwR)

# view first six lines of the data frame
head(algae)

# 2. Download text files of data from book website and load them into R
algae <- read.table('Analysis.txt',
          header=FALSE, dec = '.', col.names = c('season','size','speed','mxPH','mnO2','Cl','NO3','NH4','oPO4','Chla','a1','a2','a3','a4','a5','a6','a7'),
          na.strings=c('XXXXXXX'))
library(dplyr)

MechaCar <- read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors=F)

# Perform Linear Regression
MechaModel <- lm(MechaCar$mpg ~ MechaCar$vehicle_length + 
              MechaCar$vehicle_weight + 
              MechaCar$spoiler_angle +
              MechaCar$ground_clearance +
              MechaCar$AWD, MechaCar)

summary(MechaModel)


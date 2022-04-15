library(dplyr)

# Load csv
MechaCar <- read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors=F)

# Perform Linear Regression
MechaModel <- lm(MechaCar$mpg ~ MechaCar$vehicle_length + 
              MechaCar$vehicle_weight + 
              MechaCar$spoiler_angle +
              MechaCar$ground_clearance +
              MechaCar$AWD, MechaCar)
# Call summary
summary(MechaModel)

# Load csv
susCoil <- read.csv(file="Suspension_Coil.csv",check.names=F,stringsAsFactors=F)

# Summarize mean, median, variance, and SD
total_summary <- susCoil %>% summarize(Mean = mean(PSI),
                                               Median = median(PSI),
                                               Variance = var(PSI),
                                               SD = sd(PSI))

total_summary

# Summarize mean, median, variance, and SD
lot_summary <- susCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                             Median = median(PSI),
                                                                             Variance = var(PSI),
                                                                             SD = sd(PSI))

lot_summary

# t-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(susCoil$PSI, mu=1500)

# t-test to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
t.test(subset(susCoil$PSI, susCoil$Manufacturing_Lot == "Lot1"), mu=1500)
t.test(subset(susCoil$PSI, susCoil$Manufacturing_Lot == "Lot2"), mu=1500)
t.test(subset(susCoil$PSI, susCoil$Manufacturing_Lot == "Lot3"), mu=1500)


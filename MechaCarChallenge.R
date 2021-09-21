library(dplyr)

#import mpg data
mecha_car_mpg_data <- read.csv("MechaCar_mpg.csv")

#Multiple Linear Regression
model <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, 
  data = mecha_car_mpg_data)
#determine p-value and r-squared value using summary() func
summary(model)

#Summary Statistics on Suspension Coils 
suspension_coil_data <- read.csv("Suspension_Coil.csv")
#create summary table for everything 
total_summary <- suspension_coil_data%>% 
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
#create summary table after grouping by lot number 
lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#T-Tests on Suspension Coils 
#t-test for PSI across all lots 
t.test(suspension_coil_data$PSI, mu = 1500)
#t-test for lot 1
lot1 = filter(suspension_coil_data, suspension_coil_data$Manufacturing_Lot=='Lot1')
t.test(lot1$PSI, mu = 1500)
#t-test for lot 2 
lot2 = filter(suspension_coil_data, suspension_coil_data$Manufacturing_Lot=='Lot2')
t.test(lot2$PSI, mu = 1500)
#t-test for lot 3 
lot3 = filter(suspension_coil_data, suspension_coil_data$Manufacturing_Lot=='Lot3')
t.test(lot3$PSI, mu = 1500)



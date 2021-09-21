library(dplyr)

#import mpg data
mecha_car_mpg_data <- read.csv("MechaCar_mpg.csv")

#Multiple Linear Regression
model <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, 
            data = mecha_car_mpg_data)
#determine p-value and r-squared value using summary() func
summary(model)

## Overview 


## Results 

### Linear Regression to Predict MPG
Creating a multiple linear regression model for the MPG of the 50 different MechaCar prototypes produced the following statistics based on vehicle weight, vehicle length, spoiler angle, ground clearance, and AWD:
<img width="462" alt="multi lin regression code" src="https://user-images.githubusercontent.com/85901073/134171550-065076e9-f86e-42b4-8fe2-54a546123c6f.png">

From this, it can be seen that the r-squared value is 0.7149, while the p-values are listed in the last column of the output table. Based on these p-values, vehicle length and ground clearance are unlikely to provide random variance to the model since the p-values are 2.60e-12 and 5.21e-08, respectively, well below the general significance value of 0.05, and thus have a significant impact on MPG. Given that the r-squared value is 0.7149, this linear regression model has positive, non-zero slope, and can be used to predict MPG. The intercept, however, also has a significant p-value of 5.08e-08, meaning that there could be other factors not included in the model that contribute to the MPG , or that the significant variables, vehicle length and ground clearance, may need to be re-scaled or transformed to improve the predictive power of this model.

### Summary Statistics on Suspension Coils

### T-Test on Suspension Coils

### Design a Study Comparing the MechaCar to the Competition


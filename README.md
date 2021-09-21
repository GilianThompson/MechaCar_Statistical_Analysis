## Overview 


## Results 

### Linear Regression to Predict MPG
Creating a multiple linear regression model for the MPG of the 50 different MechaCar prototypes produced the following statistics based on vehicle weight, vehicle length, spoiler angle, ground clearance, and AWD:

<img width="462" alt="multi lin regression code" src="https://user-images.githubusercontent.com/85901073/134171550-065076e9-f86e-42b4-8fe2-54a546123c6f.png">

From this, it can be seen that the r-squared value is 0.7149, while the p-values are listed in the last column of the output table. Based on these p-values, vehicle length and ground clearance are unlikely to provide random variance to the model since the p-values are 2.60e-12 and 5.21e-08, respectively, well below the general significance value of 0.05, and thus have a significant impact on MPG. Given that the r-squared value is 0.7149, this linear regression model has positive, non-zero slope, and can be used to predict MPG. The intercept, however, also has a significant p-value of 5.08e-08, meaning that there could be other factors not included in the model that contribute to the MPG , or that the significant variables, vehicle length and ground clearance, may need to be re-scaled or transformed to improve the predictive power of this model.

### Summary Statistics on Suspension Coils
Using the summary() function on the suspension coil data set produced the following data frame:

<img width="273" alt="total summary " src="https://user-images.githubusercontent.com/85901073/134182352-a7920e16-9803-4d9b-95d8-14461bb5b26c.png">

The design specifications for the MechaCar suspension coils say that the variance should not exceed 100 PSI, and according to the variance in the above dataframe, this specification is met since the variance across all MechaCars in all lots is 62.29356 with a standard deviation of 7.892627. However, when analyzing the suspension coil data for each of the three lots, Lot 3 has a variance of 170.2861224 with a standard deviation of 13.0493725, well above the 100 PSI limit. This information can be seen in the following dataframe: 

<img width="425" alt="lot summary" src="https://user-images.githubusercontent.com/85901073/134183204-2ebca44a-0fb9-4925-86ee-aea771423914.png">

### T-Test on Suspension Coils
Performing a t-test on the PSI from the total data across all lots produced the following results when compared to the population mean of 1500 PSI:

<img width="401" alt="t-test on all" src="https://user-images.githubusercontent.com/85901073/134190733-2626b605-562c-4fbb-8f18-5b238904f733.png">

With a p-value of 0.06028, if the significance value remains 0.05, it seems that we can assume the PSI across all lots has little statistical difference when compared to the population distribution variance. 

Performing a t-test on lots 1, 2, and 3 produced the following results, respectively:

<img width="399" alt="t-test lot1" src="https://user-images.githubusercontent.com/85901073/134192302-c2ed0ee5-6d55-4399-b3a9-ea42a97e95d9.png">

<img width="398" alt="t-test lot2" src="https://user-images.githubusercontent.com/85901073/134192519-e3865bbc-3597-4d20-9836-7b3ef40c07ec.png">

<img width="395" alt="t-test lot3" src="https://user-images.githubusercontent.com/85901073/134192548-56baadb5-b831-487d-9751-b903943ff769.png">

The p-values of lots 1 and 2 are well above the general significane value of 0.05 so it would be incorrect to reject the null hypothesis and instead should accept that the mean PSI produced from MechaCars on lots 1 and 2 are statisitcally similar to the population mean. 

The p-value of the PSI from lot 3 MechaCars is 0.04168, which is just slightly lower than the significance value. Because of this, it might be correct to assume there is some other factor(s) causing variance on this lot. 

### Design a Study Comparing the MechaCar to the Competition

The cars on lot 3 need more analysis to determine what factors are causing the statistics not to line up with the other lots and the population data. 


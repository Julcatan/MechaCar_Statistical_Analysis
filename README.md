# MechaCar_Statistical_Analysis

## Resources

RStudio

## Overview

 - Analyse car Prototype features to solve production troubles that are blocking the manufacturing team’s progress.
 - Analysis includes:
   - multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
   - Collection of summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
   - T-tests to determine if the manufacturing lots are statistically different from the mean population


##  Linear Regression to Predict MPG
#### Summary of results
 
  _**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**_

![image](https://user-images.githubusercontent.com/91682586/150991707-6ca66111-c6fe-4e5c-851a-4f0c84f969c9.png)

  In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. 
  According to our results,  **vehicle length** and **ground_clearance** (as well as **intercept**) are statistically unlikely to provide random amounts of variance to the linear model. 
  In other words the relationship between mpg and the coefficients vehicle length and ground clearance unlikely was by chance. Vehicle length and ground clearance have a   significant impact on mpg.
 
   _**Is the slope of the linear model considered to be zero? Why or why not**?_
 ![image](https://user-images.githubusercontent.com/91682586/150993739-075a09d5-526d-4cbe-9461-eb102b1d9e33.png)

 The results show that the multiple linear regression equation can be written as: 
 
 mpg =   (6.267e+00vehicle_length) +  (1.245e-03vehicle_weight) + (6.877e-02spoiler_angle) + (3.546e+00ground_clearance) + (-3.411e+00 AWD) +( -1.040e+02)
 
 ![image](https://user-images.githubusercontent.com/91682586/151009863-ff350367-a440-4665-ba8a-f89666ecaf60.png)

 The p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is 
 sufficient evidence that the slope of our linear model is not zero.
 
 
  _**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

The linear model does not predict the mpg of MechaCar prototypes effectively.

Even though the r-squared value is 0.7149, which means that roughly 70% of the variablilty of our dependent variable (mpg predictions) is explained using this linear model 
and in addition, the p-value of the linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05% we do have an intercept that is statistically significant. The intercept term explains a significant amount of variability in the dependent variable when all independent vairables are equal to zero. 

The significant intercept could mean that the significant features (like **vehicle length** and **ground_clearance**) may need scaling or transforming to help improve the predictive power of the model. Alternatively, it may mean that there are other variables that can help explain the variability of our dependent variable mpg that have not been included in our model. We may have to change our independent variables and/or transform them and then re-evaluate your coefficients and significance.
(see: Module 15.7.3)

## Summary Statistics on Suspension Coils

 _**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**_


Our analysis result shows that the variance of the suspension coils does not exceed 100 pounds per square inch for all manufacturing lots in total: 

![image](https://user-images.githubusercontent.com/91682586/151034975-e67e179f-8b83-45b9-8ff1-6a8e829f3dca.png)

The variance does not exceed  the maximum variance of 100 pounds per sqare inch for Lot 1 and 2 either. 

**It does exceed the maximum variance of 100 pounds per sqare inch for Manufacturing Lot 3.
LOT 3 has a variance of 170.29.**

![image](https://user-images.githubusercontent.com/91682586/151035153-8b41badb-c54f-4d3c-9d76-d82b16d30bbd.png)


## T-Tests on Suspension Coils

 - _T-test across all manufacturing lots_
The one-sample t-test is used to determine whether there is a statistical difference between the means of a sample dataset and a hypothesized, potential population dataset.

![image](https://user-images.githubusercontent.com/91682586/151051930-17313138-7553-4735-a1d3-ad427ff46d33.png)

The result of the test shows, assuming our significance level is the common 0.05 percent, that our p-value is below our significance level. 
Therefore, we have sufficient evidence to state that the two means are _**not statistically similar**._

 - _T-test on each Lot
_
![image](https://user-images.githubusercontent.com/91682586/151054308-71f637cd-05a4-4b09-939b-ba957a2d0a34.png)

Lot 1

![image](https://user-images.githubusercontent.com/91682586/151054423-1415a87c-05a8-46f9-b957-09c9ba0bf8ec.png)

Lot 2

![image](https://user-images.githubusercontent.com/91682586/151054543-197f14c6-43ba-4cde-97e1-4013ed35aade.png)

Lot 3







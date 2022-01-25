# MechaCar_Statistical_Analysis

## Resources

RStudio

## Overview



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
 
 
  _**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**__

The linear model predicts the mpg of MechaCar prototypes effectively.

The r-squared value is 0.7149, which means that roughly 70% of the variablilty of our dependent variable (mpg predictions) is explained using this linear model. 
In addition, the p-value of the linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. 

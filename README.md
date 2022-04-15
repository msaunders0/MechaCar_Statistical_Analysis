# MechaCar_Statistical_Analysis
Because of the MechaCar's production troubles that are blocking the manufacturing team's progress, the MecharCar's production data must be reviewed for insights to assist the manufacturing team. The purpose of this analysis is to:
<ul>
  <li> Perform linear regression to identify which variables predict MPG of the MechaCar Prototypes</li>
  <li> Summarize statistics on the PSI (pounds per square inch) of suspension coils per the manufacturing lots</li>
  <li> Conduct t-tests in order to decide whether the manufacturing lots are statistically different from the mean</li>
  <li> Design a statistical study to compare vehicle performance of MechaCar vehicles to those of other manufacturers</li>
</ul>

## Linear Regression to Predict MPG
![image](https://github.com/msaunders0/MechaCar_Statistical_Analysis/blob/main/Resources/LinearReg.png)
<ul>
  <li> Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?</li>
  <ul>
    <li> Vehicle length and vehicle ground clearance.</li>
  </ul>
  <li> Is the slope of the linear model considered to be zero? Why or why not?</li>
  <ul>
    <li> The slope of the linear model is not considered to be zero, given that the p-value is 5.35e-11, which is less than the significance level.</li>
  </ul>
  <li> Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?</li>
  <ul>
    <li> It is fair to assume that this linear model can effectively predict mpg of MechaCar prototypes given that the r-squared value of 0.7149 tells us that we can expect roughly 71% accuracy with respect to mpg predictions.</li>
  </ul>
</ul>

## Summary Statistics on Suspension Coils
![image](https://github.com/msaunders0/MechaCar_Statistical_Analysis/blob/main/Resources/suspensionSummary.png)<br>
![image](https://github.com/msaunders0/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)
<ul>
  <li> The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?</li>
  <ul>
    <li> It certainly does, considering that the total variance is only 62.29356 which clearly does not exceed the limit of 100 PSI.</li>
  </ul>
</ul>

## T-Tests on Suspension Coils
![image](https://github.com/msaunders0/MechaCar_Statistical_Analysis/blob/main/Resources/singleTTest.png)<br>
<p>Based on the above results, there is not enough evidence for rejecting the null hypothesis given that the p-value is 0.06 (higher than the significance level of 0.05), and thus the PSI across all manufacturing lots is statistically similar to the population mean of 1500 PSI.</p>

![image](https://github.com/msaunders0/MechaCar_Statistical_Analysis/blob/main/Resources/lot1Ttest.png)<br>
<p>With respect to Lot 1 (above), having a mean of 1500 and a p-value of 1 (greater than the significance level of 0.05), the null hypothesis can be accepted because there is no significant difference.</p>

![image](https://github.com/msaunders0/MechaCar_Statistical_Analysis/blob/main/Resources/lot2Ttest.png)<br>
<p>With respect to Lot 2 (above), having a mean of 1500.2 and a p-value of 0.6072, the sample mean and population mean are statistically similar and thus the null hypothesis can be accepted.</p>

![image](https://github.com/msaunders0/MechaCar_Statistical_Analysis/blob/main/Resources/lot3Ttest.png)<br>
<p>With respect to Lot 3 (above), having a mean of 1496.14 and a p-value of 0.04168 (less than the significance level of 0.05), it is feasible to reject the null hypothesis given that the sample mean and population mean do not show statistical difference.</p>

<p>Thus, there was clearly an issue in Lot 3's production.</p> 

## Study Design: MechaCar vs Competition

In order to determine how the MechaCar's safety rating compares to the competition, let us consider the following:
<ul>
  <li> Metrics</li>
  <ul>
    <li> Cost, vehicle weight, and safety rating.</li>
  </ul>
  <li> Null hypothesis<li>
  <ul>
    <li> No evidence to suggest that cost and vehicle weight negatively impact safety rating in a significant way.</li>
  </ul>
  <li> Alternative Hypothesis</li>
  <ul>
    <li> There is sufficient evidence to suggest that cost and vehicle weight impact safety rating in a significant way.</li>
  </ul>
  <li> What statistical test would you use to test the hypothesis? And why?</li>
  <ul>
    <li> Multiple linear regression can be used to analyze the effects of cost and vehicle weight against safety rating. This can be conducted for the MechaCar and all significant competitors.</li>
  </ul>
  <li> What data is needed to run the statistical test?</li>
  <ul>
    <li> The required data for the statistical test would be cost, vehicle weight, and safety ratings for various models of competitors and also for the MechaCar.</li>
  </ul>
</ul>

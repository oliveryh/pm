---

---
# Types of Project
- Object Detection from satellite imagery
    - [https://medium.com/vortechsa/satellite-images-object-detection-part-2-the-beauty-the-beast-f92ff27b696a](https://medium.com/vortechsa/satellite-images-object-detection-part-2-the-beauty-the-beast-f92ff27b696a)
    - [https://medium.com/vortechsa/satellite-images-object-detection-part-1-95-accuracy-in-a-few-lines-of-code-8ee4acd72809](https://medium.com/vortechsa/satellite-images-object-detection-part-1-95-accuracy-in-a-few-lines-of-code-8ee4acd72809)
- Time Series Modelling and Forecasting
    - [https://medium.com/vortechsa/an-introduction-to-time-series-forecasting-fa642420d240](https://medium.com/vortechsa/an-introduction-to-time-series-forecasting-fa642420d240)
- Destination Prediction
    - [https://medium.com/vortechsa/the-curious-case-of-the-sorted-array-d192a3397d0b](https://medium.com/vortechsa/the-curious-case-of-the-sorted-array-d192a3397d0b)

# Time Series Forecasting
## Key Terms
- Seasonality - Cyclical patterns to the behaviour of our time series
- Trend - Linear trend in our model
- Additional Variability - Day-to-day variations on top of seasonality

# Over Fitting
In models, over fitting occurs when the model perfectly fits the training sample but then fails to perform on unseen data
There are some techniques to reduce over fitting such as
- Information Criteria
- Dimensionality Reduction
- Piecewise Component Selection
- Regularisation

# Loss Functions
## Ordinary Least Squares (OLS)
$L=\sum^n_{i=1}(Y_i - true_i)^2$
## Lasso Regularised Regression
This type of regularisation not only minimizes the least-squares-sum but also penalizes extraneous features by minimising the sum of the absolute size of the weights.
$L_1 = L + \alpha \sum_k | W_k |$
$L$ In this case is our normal loss function and the term on the right is where we penalize the sum of weights. $\alpha$ is then determined through cross-validation to find a model that performs best on unseen data.
# Object Detection
## Class Imbalance

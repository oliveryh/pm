# High Level Steps

1. **Problem** - Explore the problem provided, are there any particular edge cases you should be asking questions about
2. **Metrics** - What metrics are important to the business and not just easy to measure. For example a mode that predicts rates of cancer incidence will heavily penalise false negatives against false positives
3. **Data** - Understand what format the data is in. Is this all the data we're receiving or can we make use of additionally sourced / publically available data
4. **Labels and Features** - Is there any feature enrichment that you can do
5. **Model** - How do you measure a good fit and how would you train your model
6. **Validation** - What kind of model validation will you perform. Hold out set, cross-validation etc?
7. **Deployment and Monitoring** - Is this a batch model or a streaming model. Does it need to be retrained on a regular basis. How would you check performance in production. How would you measure model drft

## Problem

## Metrics

[^ml-metrics]: https://alexgude.com/blog/machine-learning-metrics-interview/
- Accuracy alone is rarely a good option due to class imbalance
- F1-Score is a harmonic mean of precision and recall however it's not often the case that both of these should be equally weighed
- What does a false positive or false negative cost. [^ml-metrics]
	- If False Positives are costly, then we want to focus on Precision (TP / (TP + FP))
	- If False Negatives are costly, then we should focus on Recall (TP / (TP + FN))

## Data

- Satellite imaging data from free and commercial sources (USGS, Planet, Orbital insight)
- Shipbrokers
- Customs
- Port Agents

## Labels and Features

- Do I need an operations team to manually label data to get the ground truth
- Does historical data provide an adequate form of the ground truth (such as time series prediction)

## Model Selection

- Find a model selection flow chart?

## Validation

### Data Leakage

Data leakage occurs when information from outside the training dataset is used to create the model. The result of this is that the model can appear to be performing better than it actually will in the real-world scenario.

To address Data Leakage we can:
1. Perform data preparation within a fold of the cross-validation process
2. Hold-back a validation set that reflects real-world situations

### Overfitting

- Information Criteria
- Dimensionality Reduction
- Piecewise Component Selection
- Regularisation

## Deployment Mode

- Consider deploying in shadow mode - A situation where the model is running however actions are ignored while metrics about the model can be collected.

### Model Drift [^model-drift]

[^model-drift]: https://towardsdatascience.com/how-to-detect-model-drift-in-mlops-monitoring-7a039c22eaf9
Model Drift occurs when the real-time production data and base-line data distributions start to diverge. There are multiple types of ML Model Drift:

- **Concept Drift** - A change in the actual relationship between the actual relationship between the model inputs and output
- **Prediction Drift** - A shift in the model's predictions
- **Label Drift** - A change in the distribution of ground truth labels
- **Feature Drift** - A change in the models input data distribution.

#### Causes of Drift

- Real change in the data distribution due to externalities. To address this you might create a new model with updated representative training sets
- Data integrity issues which might require human intervention to determine the root cause.

#### How to Measure Model Drift

- **Statistical Based** - e.g. Kullback-Leibler Divergence - A measure of how much on probabilitiy distribution is difference from a second reference distribution
- **Model Based** - Use a model to determine the similarity between a given point to a referene baseline

The use of explainable AI can be used to help determine which feature's drift was the ultimate cause of model drift.

# Time Series Forecasting

## Problem

## Metrics

### Mean Error

$$ME = \frac{1}{n}\sum^N_{i=1}(A_i - F_i)$$

### Mean Squared Error

$$MSE = \frac{1}{n}\sum^N_{i=1}(A_i - F_i)^2$$

### Root Mean Squared Error

$$RME = \sqrt{\frac{1}{n}\sum^N_{i=1}(A_i - F_i)^2}$$
- Move headvily penalises large errors
- A few bad forecasts in otherwise good performance can suffer heavily from this metric

### Mean Absolute Error

- One way to avoid the risks posed by having a few outliers

## Data

## Labels and Features

- Day of the week
- External events, weather, news events etc.
- Seasonality - Cyclical patterns to the behaviour of our time series
- Trend - Linear trend in our model
- Additional Variability - Day-to-day variations on top of seasonality

## Model

## Validation

- For how long is the model trained between retraining
- We should test the model on a train/test split that reflects real-life situation
- Time Series Cross Validation

## Deployment

# Regression Model

## Problem

### Assumptions

1. **Regression model should be linear in the coefficients** - means change in target variable due to one unit change in independent variable should be constant
2. **No multicollinearity** - no correlation b/w independent variables
3. **Linearity and independence of residuals or no autocorrelation** - we can check linearity drawing the scatter plot between residuals (x-axis) and target variable values (y-axis) and independence means no correlation in error terms
4. **Homoscedasticity** - Residuals should follow Normal distribution with zero mean and equal variance (homoscedasticity).

## Metrics

### R Squared

Total sum of squares $SS_{tot} = \sum_i (y_i - \bar{y})^2$
Total sum of squares of residuals $SS_{tot} = \sum_i (y_i - f_i)^2$

### Loss Functions

## Ordinary Least Squares (OLS)

$L=\sum^n_{i=1}(Y_i - true_i)^2$

## Lasso Regularised Regression

This type of regularisation not only minimizes the least-squares-sum but also penalizes extraneous features by minimising the sum of the absolute size of the weights.

$L_1 = L + \alpha \sum_k | W_k |$

$L$ In this case is our normal loss function and the term on the right is where we penalize the sum of weights. $\\alpha$ is then determined through cross-validation to find a model that performs best on unseen data.

## Data

- **Missing Data** - Impute missing data
	- Numerical -> Median

## Labels and Features

## Model

### Model Options

- Linear Regression
- Logistic Regression
- Ridge Regression - Best option when there is a high correlation between the independent variables
- Lasso Regression - Does feature selection and prohibits large absolute sizes of coefficients
- Polynomial Regression
- Bayesian Linear Regression

## Validation

# Image Segmentation

## Problem

## Metrics

- Accuracy might not be appropriate because of the comparitively small target segments
- F1 Score = $2\frac{precision \times recall}{precision + recall}$

## Data

## Labels and Features

## Model

### Model Options

- **U-Net** - A convolutional neural net

## Validation

# Remaining Tasks

- [x] Look a the list of metrics that are appropriate for various ML case studies
- https://alexgude.com/blog/machine-learning-metrics-interview/

https://alexgude.com/blog/data-science-interview-prep-case-study/

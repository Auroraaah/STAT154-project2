# STAT154-project2
Huang Liang, Wei Mian

## Data Collection and Exploration 
Import our data and see the spread of data (labels). We also plot the distribution of the points according to the image.
We use ggpairs to demonstrate the basic relationship (scatterplots, density plots and correlation) between different variables. It is important to look into closely for density plot to make the range to identify existence cloud is consistent with that mentioned in the report.

## Data split and Exploratory Data Analysis for the Combined Data
We split data using two methods: by blocks (the location of points) and by image, setting 25% of the data for testing and 20% of the training data for validation. 

The baseline by setting all point as (-1) is around 30%.

We look into the density plots into details to ensure the cut-off points for the most three important features, NDAI, SD and CORR.

## Modeling
We used five models to classify the data and examine them through cross validation and confusion matrix
### K-Nearest Neightbour (KNN) method

### Logistic Regression

### Linear Discriminant Analysis

### Quadratic Discriminant Analysis

### Random Forest

### Other Methods to Evaluate the Classification Models
#### Receiver Operating Characteristic

#### Area Under the Curve

## Diagnosis

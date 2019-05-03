# STAT154-project2
Huang Liang, Wei Mian

## Data Collection and Exploration 
Import our data and see the spread of data (labels). We also plot the distribution of the points according to the image.
We use ggpairs to demonstrate the basic relationship (scatterplots, density plots and correlation) between different variables. It is important to look into closely for density plot to make the range to identify existence cloud is consistent with that mentioned in the report.

## Data split and Exploratory Data Analysis for the Combined Data
We split data using two methods to ensure they could not follow independent and identical distribution: 

1. By blocks (the location of points), we separate each graph into ordered 1600 blocks according to their x- and y-corrdiantes, setting 25% of the data for testing and 20% of the training data for validation. 

2. By image, we use Image 1 for training, Image 2 for testing and Image 3 for validation.

The baseline by setting all point as (-1) is around 30%.

We look into the density plots into details to ensure the cut-off points for the most three important features, NDAI, SD and CORR.

## Modeling
We used five models to classify the data for different classification models and examine them through cross validation errer and [confusion matrices](https://en.wikipedia.org/wiki/Confusion_matrix) where tables are returned. Our five classification models are:

1. K-Nearest Neightbour (KNN) method

2. Logistic Regression

3. Linear Discriminant Analysis (LDA)

4. Quadratic Discriminant Analysis (QDA)

5. Random Forest

### [Other Methods to Evaluate the Classification Models](https://www.ritchieng.com/machine-learning-evaluate-classification-model/)
We also include other methods to report the performance of our model and they are:

1. [Receiver Operating Characteristic (ROC)](https://en.wikipedia.org/wiki/Receiver_operating_characteristic)
 
2. Area Under the Curve (AUC)

## Diagnosis
### Parameter estimation
We run our diagnosis on our best performance model, KNN. This migth be becasue of its property of not assuming any distribution of independence of the data.

### Misclassification Distribution
By plotting the misclassified points, we could observe the concentration of point near the boundaries.

### Better Classifier
We use Support Vector Machine here with a relaively small sample using Split Method 1 (separating into blocks) taking 5% of the Image 1 for training and 5% of the Image 2 for testing. Plots of the point distribution and the decision boundaries are generated.

### Effect of Different Split Method
We modify our split method 2 (using Image 2 for testing and Image 1 and 3 for training) to see whether there is any differences using random forest.


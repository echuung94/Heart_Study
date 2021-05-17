# Heart Study

## Presentation

### Selected Topic 
Heart attack/failure prediction 

### Introduction 
Heart disease has the highest mortality according to CDC data on death and mortality. Heart disease is a cluster of heart conditions which affect the flow of the blood to the heart leading to a heart attack or heart failure, and the key risk factors for heart disease include high blood pressure, smoking and high cholesterol. As the leading cause of death globally and in the United States, it is important to understand the most prevalent causes and preventative measures that one can take to avoid succumbing to heart disease.

### Source of Data
We will be using [Framingham Data](https://www.kaggle.com/dileep070/heart-disease-prediction-using-logistic-regression) and [Heart Attack Analysis ](https://www.kaggle.com/rashikrahmanpritom/heart-attack-analysis-prediction-dataset) to predict the outcomes 

## Database
We cleaned our data with Python Pandas and connected it to our Postgres database with Amazon AWS S3. Below is a picture of the ERD we used for both datasets: 
<p align="center"><img src="https://github.com/echuung94/Heart_Study/blob/ncao/Resources/ERD.PNG" width="600" height="600"></p>

### Technology 
- Logistic Regression Model 
- Python
- Postgres SQL Database
- Amazon AWS RDS and S3
- Google Colab 


### Data Exploration
The data was reviewed and processed using pandas in Google Colab. To make our data usable for the model, we coverted the csv file to a dataframe, dropped the null values in the columns and rows, and then coverted all our data to integers. </br>
Our plan was to join the two datasets using an SQL database, however, we were unable to join due to the datasets not having a unique identifier to join them on. </br>
The two datasets were coverted to a PySpark DataFrame in order to export the file into Postgres SQL and then read into Google Colab using AWS S3. Having converted all the features into a usable numeric data in our primary dataset, we were able to use all the available features for the model. </br>
The testing and training data was split on the standard 80/20 ratio. </br>
In order to answer our question of whether or not an individual is likely to get coronary heart disease based on various factors, we decided to use the Logistic Regression model. This model analyzes the data and mathematically determines its probability of belonging to a class. </br>
With our dataset, we believed that we had an extensive list of factors that when used in a logistic regression, the model could predict CHD (coronary heart disease) with a generally high degree of accuracy. </br>
The limitation is the assumption of linearity between the dependent variable (an individual getting CHD) and the independent variables. In reality, the human body and the various factors listed may not be linear. </br>

### Draft Presentation/Dashboard Slides
[Google Slides](https://docs.google.com/presentation/d/1onFSrrHWJHMssUqCB5XmFOtxarz3dNbw-AfdVClvO5o/edit?usp=sharing)

### Results
<p align="center"><img src="https://github.com/echuung94/Heart_Study/blob/main/Resources/results.png" width="450" height="600"></p>
<b>Accuracy</b> - 86% for testing data </br>
<b>Precision</b> - .85 weighted average</br>
<b>Sensitivity</b> - .13 for correct positive diagnoses</br></br>

Our model resulted in an overall good accuracy score and is in line with what you would expect for a logical regression model. Our overall precision score was high and can be thought of being reliable when we do get a positive diagnosis. However, the model resulted in a low sensitivity rate for diagnosing those with heart disease, meaning that our model was not good at correctly diagnosing the individuals. 

### Recommendations and Lessons Learned
One of the main issues we ran into with our data was the inability to locate a unique identifier within the datasets, this prevented us from expanding on the factors we incorporated into our model and possibly create a more sensitive model. We do not recommend that this model be used in a clinical or a real world setting. Althought it is relatively accurate, this model shows that it does not have the sensitivity needed for a serious diagnosis.</br>
What we would do differently would be to work with a dataset that has unique identifiers and test the data with different models to better predict the individuals that are at high risk for heart disease. 

### Interactive Elements
We intend on creating filters on the dashboard so that users could filter through various features to see which factors contribute to heart disease. 

## Dashboard
We will be using Tableau to create our interactive dashboard. It will be hostedon Tableau public: [here](https://public.tableau.com/profile/abigail.mwaura#!/vizhome/HeartStudy/HeartStudy?publish=yes).

<p align="center"><img src="https://github.com/echuung94/Heart_Study/blob/main/Resources/dashboard.PNG" width="600" height="600""></p>
The age distribution charts details at which age is more susceptible to developing heart disease and heart attack. If one has lived sedentary lifestyle without maintaining a healthy workout routine, they are at a higher risk of developing heart disease/attack at a younger age. The two charts show that there significant spike at the age of 40 for both men and women. The average age an individual is more susceptible to developing heart disease is at 55. </br>
The chart below (Heart disease vs Variables) point out the likelihood that an individual may develop heart disease depending on the factors listed. 

### Communication Plan
We plan on communicating using Slack and utilizing our class times on Tuesdays and Thursdays. We have also exchanged phone numbers in case of any emergencies.

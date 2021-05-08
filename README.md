# Heart Study

## Presentation

### Selected Topic 
Heart attack/failure prediction 

### Introduction 
Heart disease has the highest mortality according to CDC data on death and mortality. Heart disease is a cluster of heart conditions which affect the flow of the blood to the heart leading to a heart attack or heart failure, and the key risk factors for heart disease include high blood pressure, smoking and high cholesterol. As the leading cause of death globally and in the United States, it is important to understand the most prevalent causes and preventative measures that one can take to avoid succumbing to heart disease.

### Source of Data
We will be using [Framingham Data](https://www.kaggle.com/dileep070/heart-disease-prediction-using-logistic-regression) and [Heart Attack Analysis ](https://www.kaggle.com/rashikrahmanpritom/heart-attack-analysis-prediction-dataset) to predict the outcomes 

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

### Communication Plan
We plan on communicating using Slack and utilizing our class times on Tuesdays and Thursdays. We have also exchanged phone numbers in case of any emergencies.

### Analysis
The image below shows a mock chart of the features that attributed most to getting heart disease. </br>
<p align="center"><img src="https://github.com/echuung94/Heart_Study/blob/main/Resources/age.png" height="350"></p></br>
The chart below displays the average BMI based on a specific age group.</br>
<p align="center"><img src="https://github.com/echuung94/Heart_Study/blob/main/Resources/age_avgbmi.png" height="350"></p>

## Database
We cleaned our data with Python Pandas and connected it to our Postgres database with Amazon AWS S3. Below is a picture of the ERD we used for both datasets: 
<p align="center"><img src="https://github.com/echuung94/Heart_Study/blob/ncao/Resources/ERD.PNG" height="350"></p>

## Dashboard
We will be using Tableau to create our interactive dashboard. It will be hostedon Tableau public. 

### Tools
Our group decided to use Postgres and Amazon RDS for database storage and integrate Tableau to display the data. 
### Interactive Elements
We intend on creating filters on the dashboard so that users could filter through various features to see which factors contribute to heart disease. 

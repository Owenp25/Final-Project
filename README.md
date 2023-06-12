# Predicting-Heart-Disease-and-Chest-Pain-Type-Project
Final Project completed in a group by me, Atticus Patrick, and Cameron Lunn. This was a collaborative effort where we split up the work equally between the three of us. We used R to analyze a public heart disease data set from kaggle where each row is an individual patient. Our aim was to look into the key factors that determine heart disease and predict the occurrence of heart disease in individuals based on a number of heart-health related predictor variables. A secondary goal was to look at chest pain type and to try and predict this in patients as well. The data used in this study consists of 5 independent sub-datasets of heart health related data. The main response variables looked at in the study were heart disease status and chest pain type. We found that the data are well suited to make predictions for heart disease status when using a decision tree. Additionally, we discovered that predicting chest pain type was very difficult and could not fit an accurate model using KNN, QDA, or a decision tree. For full report access "HeartDiseasePredictionReport.pdf".

## Introduction
Introduction
Every year, 25% of all deaths in the US are attributed to heart disease. There are many different types,
which respectively can have different root causes. Malfunctions of the valves, arteries, and other physiological
components can lead to a patient developing heart disease. On the other hand, lack of exercise, diet, and
other environmental and even genetic factors can play a role in this outcome as well. To be succinct: heart
disease is one of the biggest health-related killer the United States faces. If we can better understand the
variables that comprise the complex system of developing heart disease, we have a better shot at preventing
it from happening. The main goal for this study is to determine what factors are associated with heart
disease, and if they can be used to predict a patient’s outcome for it, as well as what factors are associated
with chest pain, and which of these factors can be used to predict types of chest pain.
Our goals / hypotheses:
1) Exploratory analysis: look at descriptive statistics, and group means. See if there are any relationships
between variables, and look at a correlation matrix of the numeric variables.
2) Use PCA to see which variables are most important and related to each other.
3) See if heart disease and chest pain type can be classified:
a) LDA/QDA
b) KNN
c) Decision Tree
4) See if factor analysis is applicable.

## EDA

![corr](https://github.com/Owenp25/Predicting-Heart-Disease-and-Chest-Pain-Type-Project/blob/master/corr%20plot.png)

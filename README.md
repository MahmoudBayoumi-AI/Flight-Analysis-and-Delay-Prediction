# Flight Analysis and Delay Prediction ✈

## 📌 Overview
Flight Analysis and Delay Prediction is a data analytics project that aims to analyze flight delays using *SQL Server* and *Power BI*. The project involves designing a structured database, cleaning and processing flight data from Kaggle, and creating an interactive dashboard for insights and decision-making.

## 🔧 Technologies Used
- *Database*: Microsoft SQL Server
- *Data Cleaning & Processing*: Python (Pandas, NumPy)
- *Visualization & Reporting*: Power BI
- *Data Import*: Bulk Insert in SQL Server

## ⚙ Project Workflow
1️⃣ *Exploratory Data Analysis (EDA)*: The Flight_delay_EDA_Code.ipynb notebook includes various analytical insights on flight delays.

2️⃣ *Data Cleaning & Processing*: The DB Tables Cleaning.ipynb notebook is used for data preparation, including handling missing values and formatting inconsistencies.

3️⃣ *Database Creation*: The Creation Code for FlightAnalysis DB.sql file contains the SQL script to create the necessary tables and enforce constraints.

4️⃣ *Data Insertion*: The SQLQuery1.sql and SQLQuery2.sql files contain BULK INSERT commands to load cleaned data into SQL Server.

5️⃣ *Power BI Dashboard*: The final step involves linking SQL Server to Power BI to create interactive dashboards for analyzing flight performance.

## 📊 Key Insights & Analyses
- Identifying major causes of flight delays
- Analyzing airline performance
- Evaluating airport efficiency
- Predicting potential delays based on historical data

## 📂 Project Files
- *Database Schema & SQL Scripts*: Contains SQL scripts for table creation and relationships.
- *Data Processing & Cleaning (Python Notebooks)*: Used for cleaning raw CSV files before importing them into SQL Server.
- *Power BI Dashboard File*: Contains visualizations and insights derived from the data.
- *Flight_delay.csv*: Raw dataset before data cleaning.
- *Cleaned_Flight_delay.csv*: Dataset after preprocessing and cleaning.

## ⚠ Important Notes
If running this project on a personal machine, ensure you update the *file paths* in the following scripts:
- DB Tables Cleaning.ipynb
- Flight_delay_EDA_Code.ipynb
- SQLQuery1.sql & SQLQuery2.sql

Ensure that the paths match the actual location of the dataset files on your system.

## 🚀 How to Run the Project
1. Perform EDA:
   
   ```bash
       jupyter notebook "Flight_delay_EDA_Code.ipynb"
   

3. Clean and prepare the data:
   ```bash
   jupyter notebook "DB Tables Cleaning.ipynb"
   

4. Set up Microsoft SQL Server and create the database:
   ```bash
   sqlcmd -S <server_name> -i "Creation Code for FlightAnalysis DB.sql"
   

5. Insert data into SQL Server:
   ```bash
   sqlcmd -S <server_name> -i "SQLQuery1.sql"
   sqlcmd -S <server_name> -i "SQLQuery2.sql"
   

6. Connect SQL Server to Power BI and build visualizations.

## 🏆 Challenges Overcome
- Ensuring relational integrity when designing the database
- Handling large datasets efficiently in *SQL Server*
- Addressing missing values and inconsistent data formats
- Optimizing query performance for faster insights

## 📌 Future Improvements
- Adding weather data to analyze its impact on flight delays
- Enhancing the predictive model for better accuracy
- Integrating real-time flight data for live monitoring

📩 *Contact*
For inquiries or suggestions, feel free to reach out via GitHub. 😊

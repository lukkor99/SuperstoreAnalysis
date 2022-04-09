# Super Store project 

<p align='justify'>This project has been made for self improvement. I wanted to squeeze three topics into one project basing only on one csv file and some free resources. Database configuration and architecture development teached me how to convert flat csv file into structured form with normalization and relationships established. Explonatory analysis using SQL Server and Jupyter Notebooks is great opportunity for on premise data analytics of huge datasets. SQL Queries works much more better than standard operations on pandas data frames. Forecasting task has shown how powerful Seasonal ARIMA model for small time series sample. It also provided interesting insights of the SuperSotre historal sales.</p>

Key components of the project:
1. Configuration of SQL Server EXPRESS
2. Database setup and data insertion 
3. Explonatory data analysis
4. Sales forecasting using Seasonal ARIMA 



### 1. Configuration of SQL Server EXPRESS
<p align='justify'>To configure SQL Server for Jupyter Notebook enter Config -> readme.md and follow instructions.</p>

### 2. Database setup and data insertion 
<p align='justify'> To recreate database schema and data follow steps: </p>

1. Database -> Schema -> CreateDB.sql 
2. Database -> Schema -> CreateSchema.sql
3. Database -> Schema -> CreateRelationship.sql
4. Database -> Insert -> TemporaryTable.sql
5. Database -> Insert -> DataInsertion.sql

### 3. Explonatory data analysis
<p aling='justify'>Notebook provides description of database and dataset. Explonatory analysis takes into account key quantitive factors of the data. Data gathered by T-SQL queries converted to pandas.DataFrame to make visualizations and output more clear. </p>

### 4. Sales forecasting using Seasonal ARIMA 
Forecasting involved:
* Data preprocessing 
* Data visualization and aggregation 
* Seasonal decomposition 
* Autocorrelation analysis 
* Differencing
* Comparison of ARIMA and Seasonal ARIMA 
* Results analysis and forecasting
 
### Technologies used :
* SQL Server EXPRESS 
* T-SQL 
* ODBC drivers 
* Python 3.9 with packages: 
    * Pandas
    * Numpy 
    * SQL alchemy 
    * Pyodbc
    * Ipython-sql
    * Matplotlib 
    * Seaborn 
    * Statsmodels

### Links and resources:
* [Dataset source](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)
* [SQL Server Setup for Jupyter](https://www.google.com/search?q=sql+server+jupytert+notebook&oq=sql+server+jupytert+notebook&aqs=edge..69i57j0i512j0i433i512l3j69i65j69i61j69i60j69i61.11350j0j1&sourceid=chrome&ie=UTF-8)
* [Time Series Talk - fundamentals of forecasting](https://www.youtube.com/watch?v=ZoJ2OctrFLA&list=PLvcbYUQ5t0UHOLnBzl46_Q6QKtFgfMGc3&ab_channel=ritvikmath)
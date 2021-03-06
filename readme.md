# Supertore analysis project 

<p align='justify'>This project has been made for self improvement. I wanted to squeeze three topics into one project basing only on one csv file and some free resources. Database configuration and architecture development teached me how to convert flat csv file into structured form with normalization and relationships established. Explonatory analysis using SQL Server and Jupyter Notebooks is great opportunity for on premise data analytics of huge datasets. SQL Queries works much more better than standard operations on pandas data frames. .</p>

Key components of the project:
1. Configuration of SQL Server 
2. Database setup and data insertion 
3. Explonatory data analysis



# 1. Configuration of SQL Server EXPRESS
<p align='justify'>To configure SQL Server for Jupyter Notebook enter Config -> readme.md and follow instructions.</p>

# 2. Database setup and data insertion 
<p align='justify'> To recreate database schema and data follow steps: </p>

1. Database -> Schema -> CreateDB.sql 
2. Database -> Schema -> CreateSchema.sql
3. Database -> Schema -> CreateRelationship.sql
4. Database -> Insert -> TemporaryTable.sql
5. Database -> Insert -> DataInsertion.sql

### Data Model: 

![DatabaseSchema](Database/Schema/DataModel.png)

# 3. Explonatory data analysis
<p aling='justify'>Notebook provides description of database and dataset. Explonatory analysis takes into account key quantitive factors of the data. Data gathered by T-SQL queries converted to pandas.DataFrame to make visualizations and output more clear. </p>

 
# Technologies used :
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


# Links and resources:
* [Dataset source](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)
* [SQL Server Setup for Jupyter](https://www.google.com/search?q=sql+server+jupytert+notebook&oq=sql+server+jupytert+notebook&aqs=edge..69i57j0i512j0i433i512l3j69i65j69i61j69i60j69i61.11350j0j1&sourceid=chrome&ie=UTF-8)
* [States names mapping](https://gist.github.com/rogerallen/1583593)
* [Geo plot](https://www.geeksforgeeks.org/python-geographical-plotting-using-plotly/#:~:text=Geographical%20plotting%20is%20used%20for,design%20graphs%2C%20especially%20interactive%20graphs.)

# Dtabase setup

### Stepts to be done 
1. Install SQL Express 2019 (Free)
2. Install ODBC Drivers (If not installed with SQL Server
3. SSMS or VS Code with SQL Server Extension required
4. While Connected to local server run CreateDB.sql Script
5. Run CreateScehma.sql & CreateRelationship.sql
6. Gather data source from [kaggle.com](https://www.kaggle.com/datasets/rohitsahoo/sales-forecasting)
7. Create temporary table and insert data

<p align='justify'>To run notebooks with analysis you need to configure ODBC dirver - configuration steps below.</p>

![ODBC setup welcome screen](images/odbc1.jpg)

![ODBC setup welcome screen](images/odbc2.jpg) 

![ODBC setup welcome screen](images/odbc3.jpg)

![ODBC setup welcome screen](images/odbc4.jpg)

![ODBC setup welcome screen](images/odbc5.jpg)


<p align='justify'>After that configuration you are ready to run analysis. All needed packages are included in requirements.txt which installs all dependecies via pip. If pip in not installed perform actions mentioned below: </p>

1. curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
2. python get-pip.py
<p align='justify'> Note: Usually pip is delivered during Python3 installation you can check your pip status by: pip -help. After pip installation you will need to add pip to your PATH variable. </p>
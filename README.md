This will give you demo of end to end implemention of data engineering project in the Azure cloud platform.

follow below steps while implemeting solution.

1. Load AdventureWorksLT2017.bak into your on-prem SQL server. using backup option.
   This will create AdventureWorksLT2017 database in your sql server.
   
3. Create login user for the database using 1. Create login.sql
   
5. Create pipeline in Azure Data factory to copy data from SQL Sever to ADLS Gen 2 and  tansform using databricks 
    pipeline = copy_all_tables
    use below notebooks in databricks:
    bronze to silver_job
    silver to gold_job 

4. create stored procedure in sql serverless end point in synapse analysis
   
6. create pipeline in synapse analysis for creating views for all table.
pipeline = Create All View

7. Connect power BI to sql serverless end point in synapse analysis and load data into power BI report.
power BI report = AdventureWorks_Report

Note: - please make changes into the Linked services as per your service names and credentials.

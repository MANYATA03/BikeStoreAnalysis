-- Importing data from a database to a workbook involves extracting information stored in a database
--  and bringing it into a spreadsheet or a similar file in a format that can be easily analyzed, manipulated, and visualized
-- Connecting Excel to a database allows you to import data dynamically, enabling automatic updates whenever the database changes using  Connector/ODBC. 
SELECT @@hostname;

SHOW VARIABLES LIKE 'hostname';

-- two sheets will created in excel one for pivot table and other for tableu dashboard

-- sheet 1
-- first-- total revenue per year as well as total revenue per month over the years using pivot table and pivot joins
-- first pivot table -total revenue per year

-- second pivot table  total revenue per month over the years
-- change in second pivot tabble affect changes in first table because of same cache-- solution is to decouple
![image](https://github.com/MANYATA03/BikeStoreAnalysis/assets/105648428/62c3627c-909b-4956-ac12-c21c9e033cb4)

To create chart use two of pivot tables and 

for pivot 1 
![image](https://github.com/MANYATA03/BikeStoreAnalysis/assets/105648428/d58fa3c4-be7d-4129-b28b-92a8ea66fd84)



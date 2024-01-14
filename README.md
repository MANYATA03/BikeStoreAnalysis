# BikeStoreAnalysis

## Table of Contents

- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Recommendations](#recommendations)

### Project Overview
---

This data analysis project aims to provide insights into the sales performance of an Bike-Store company over the past year. By analyzing various aspects of the sales data, we seek to identify trends, make data-driven recommendations, and gain a deeper understanding of the company's performance.

![bar plot](https://github.com/Irene-arch/Documenting_Example/assets/56026296/5ebedeb8-65e4-4f09-a2a5-0699119f5ff7)

•	Created a detailed SQL script to generate a dataset for a comprehensive and dynamic sales dashboard involves selecting relevant data and formatting the information for visualization. 
•	SQL-generated data into Excel and connect it to Tableau for creating a dynamic dashboard 
•	Explore sales trends over time, identifying seasonality and any long-term patterns. 


I WILL CRETAE BOTH TABLEU AND EXCEL DASHBOARD FRO THIS PROJECT 
We need to provide order_id	customers	city	state	order_date	total_units	revenue	product_name	category_name	brand_name	store_name	sales_rep these field are scattered across 9 diff table in bike store database ,so table joins are applied to generate the data 
for example
i will get orderid from sale.order ,customer name ,city from sales.cutomer
revenue and volume from sales.orderitems



Sales Data: The primary dataset used for this analysis is the "sales_data.csv" file, containing detailed information about each sale made by the company.

### Tools

- Excel - Data Cleaning
  - [Download here](https://microsoft.com)
- SQL Server - Data Analysis
- PowerBI - Creating reports


### Data Cleaning/Preparation

In the initial data preparation phase, we performed the following tasks:
1. Data loading and inspection.
2. Handling missing values.
3. Data cleaning and formatting.

### Exploratory Data Analysis

EDA involved exploring the sales data to answer key questions, such as:

- What is the overall sales trend?
- Which products are top sellers?
- What are the peak sales periods?

### Data Analysis

Include some interesting code/features worked with

```sql
SELECT * FROM table1
WHERE cond = 2;
```

### Results/Findings

The analysis results are summarized as follows:
1. The company's sales have been steadily increasing over the past year, with a noticeable peak during the holiday season.
2. Product Category A is the best-performing category in terms of sales and revenue.
3. Customer segments with high lifetime value (LTV) should be targeted for marketing efforts.

### Recommendations

Based on the analysis, we recommend the following actions:
- Invest in marketing and promotions during peak sales seasons to maximize revenue.
- Focus on expanding and promoting products in Category A.
- Implement a customer segmentation strategy to target high-LTV customers effectively.

### Limitations

I had to remove all zero values from budget and revenue columns because they would have affected the accuracy of my conclusions from the analysis. There are still a few outliers even after the omissions but even then we can still see that there is a positive correlation between both budget and number of votes with revenue.

### References

1. SQL for Businesses by werty.
2. [Stack Overflow](https://stack.com)

😄

💻

|Heading1|Heading2|
|--------|--------|
|Content|Content2|
|Python|SQL|

`column_1`

**bold**

*italic*

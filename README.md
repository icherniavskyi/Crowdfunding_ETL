# Crowdfunding Data Analysis Project

## Overview
This project involves extracting, transforming, and loading data from an Excel files named `crowdfunding.xlsx` and `contacts.xlsx` into a PostgreSQL database. The project is structured to create and populate four main tables: Categories, Subcategories, Campaigns, and Contacts.

## Files & Folders Descriptions

### Resources folder contains data sources and outcome files for data transformation and data loading:

- **crowdfunding.xlsx**: Source Excel file containing crowdfunding campaign data.
- **contacts.xlsx**: Source Excel file containing contact information.
- **category.csv**: Contains unique categories extracted from the crowdfunding data.
- **subcategory.csv**: Contains unique subcategories extracted from the crowdfunding data.
- **campaign.csv**: Contains transformed campaign data.
- **contacts.csv**: Contains contact details split into structured formats.

### Outputs folder contains snapshots of SQL tables in PostgreSQL:

- **campaign1_output.png**: First part of campaign table's outputs.
- **campaign2_output.png**: Second part of campaign table's outputs.
- **category_output.png**: Category table's outputs.
- **subcategory_output.png**: Subcategory table's outputs.
- **conatcts_output.png**: Contacts table's outputs.

### Main folder contains:

- **ETL_Mini_Project_ICherniavskyi_RMolenda.ipynb**: Jupiter Notebook file containing script needed for data transformation and creation of .csv files.
- **crowdfunding_db_schema.sql**: SQL file needed for creating a database schema and tables' creation is PostgreSQL.
- **ERD.png**: Diagram of the database.
- **README.md**: Instraction on how to run the script and actions order.

## Dependencies:
- PostgreSQL
- Python
- Pandas
- Numpy
- Datetime

## Script Execution:

### 1. Open 'ETL_Mini_Project_ICherniavskyi_RMolenda.ipynb' file and import all the dependancies:
- import pandas as pd
- import numpy as np
- from datetime import datetime as dt

### 2. Data Transformation
Run the Python scripts that will transform the data from the Excel files into structured CSV files and exports tham to 'Resources' folder.

### Categories and Subcategories
Extracts unique categories and subcategories from `crowdfunding.xlsx` and assigns unique identifiers.

#### Campaigns
Transforms campaign data, adjusting columns and data types, and linking to categories and subcategories.

#### Contacts
Structure contact information from `contacts.xlsx` using pandas dataframes method.

### 4. Database Setup
- Create a PostgreSQL database named `crowdfunding_db` and use the provided SQL schema file to create tables.
- To create tables run the script from `crowdfunding_db_schema.sql` file in PostgeSQL.

#### Pleas refer to the below image to better understand relationships in the database:
![ERD](https://github.com/icherniavskyi/Crowdfunding_ETL/blob/main/ERD.png)

### 5. Data Loading
Load the CSV files into the corresponding tables in the PostgreSQL database. Please be be aware of the order in which data should be loaded due to foreign keys constraints.

The order example of importing is:
1. Contacts table.
2. Category table.
3. Subcategory table.
4. Campaign table.

Note: The order could be changed; however, `campaign.csv` file should be imported last.

## 6. Validation
Verify the integrity and correctness of the data by running SELECT statements against each table.

1. Contacts table:

![Contacts](https://github.com/icherniavskyi/Crowdfunding_ETL/blob/main/Outputs/contacts_output.png)

2. Category table:

![Category](https://github.com/icherniavskyi/Crowdfunding_ETL/blob/main/Outputs/category_output.png)

3. Subcategory table:

![Subcategory](https://github.com/icherniavskyi/Crowdfunding_ETL/blob/main/Outputs/Subcategoty_output.png)

4. Campaign table:

![Campaign1](https://github.com/icherniavskyi/Crowdfunding_ETL/blob/main/Outputs/campaign1_output.png)
![Campaign2](https://github.com/icherniavskyi/Crowdfunding_ETL/blob/main/Outputs/campaign2_output.png)



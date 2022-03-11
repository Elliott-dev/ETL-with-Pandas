# ETL-with-Pandas (Disneyland, Chocolate Bars)
**Extract:**
There are 2 different datasets: Disneyland Review Ratings, and Chocolate Bar Ratings; limited to the years 2010-2019 from the public platform Kaggle conducted by Rachael Tatman and Arush Chillar respectively. The raw data can be found in Resources folder.

The datasets used for this project provided information on:

Disneyland Review Ratings & Chocolate Bar Ratings

Each CSV was made into a pandas DataFrame.

**Transform:**

Copied only the columns needed into a new DataFrame from both tables.

Renamed the column headers both tables.

Added 2 additional columns splitting timestamp into a year column and a month column on Disneyland Table. 

Removed NULL values in year column on Disneyland Table. 

Cacao Table passthrough. 


**Load:**
Created a connection to PostgreSQL database

Checked for a successful connection to the database and confirmed that the tables have been created

Appended DataFrames to tables;

Confirmed successful Load by querying database.

**Documentation:**

Documentation Containing Business Rules: ETL Mapping Documentation

**Instructions:**
Running the program:

Open Disneyland_and_chocolate_ETL.ipynb

run everything and when prompted, enter pgAdmin password

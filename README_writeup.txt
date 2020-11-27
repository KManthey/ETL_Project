Fast Food Nutritional Database Project
Technical Report

Purpose:
Our team sought to extract, transform, and load fast food nutritional data into SQLite for the purpose for query purposes.

Extract:
Original file sources were CSV files.

Transformation:
For the data transformation we used Pandas within jupyter notebook to accomplish the following:
- First we read the csv file into jupyter notebook as dataframes
- We added columns for restaurant, category, and item ids, which would later be used to link tables within our database.
- We assigned numeric ranges to each of these ids to create a unique ID system.
- With the intent to concat all of our menu items into one dataframe, we standardized column names and order for each of our dataframes.
- Some columns had a combination of data within the column which required us to split the data.
- We encountered some unique and challenging situations with our data.  For instances McDonalds listed serving sizes in both ounces and grams within
  the same column.  We chose to limit the serving size to ounces and strip our the grams.
- Some serving sizes contained unique values such as 1 carton, which required indentification by index and conversion to ounces.
- We also removed percentage signs and parentheses from some columns using the strip function as well as standardizing numeric decimal values.
- Our Starbucks drink data had multiple columns which had to be combined to create unique items using concatenate.
- Once standardized, we combined all of the data into a single dataframe.
- As data was cleaned and organized we combined the dataframes into one combined dataframe using pandas concat function.
- We experienced some issues with the creation of our id numbers, which required some extensive trouble-shooting
- Once ids were assigned we dropped the varchar columns representing these id and exported the final clean_combined_df to a csv file.

Load:
SQL Database Phase
- We created an ERD for the SQLite database.



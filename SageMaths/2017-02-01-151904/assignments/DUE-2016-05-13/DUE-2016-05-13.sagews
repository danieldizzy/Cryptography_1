︠4189f872-59c9-4402-b7ef-7e1cfb5e84b6i︠
%md
# Math 480 - Homework 6

## Due 6pm on May 13, 2016

︡f8a01199-1fe9-4723-8641-9d5fc14ef4c9︡{"done":true,"md":"# Math 480 - Homework 6\n\n## Due 6pm on May 13, 2016"}
︠c84c1444-debf-4362-9cce-d138ec1c8f8di︠
%md
<img src="https://datasciencelab.files.wordpress.com/2013/11/pandas-drinking-cr.png" width=300 class="pull-right" style="margin-right:30px">

## There are 5 problems. All problems have equal weight.

<font color='#666'>There are 4 pandas.</font>

︡ad858b8b-554c-4289-93ef-b8113b20b933︡{"done":true,"md":"<img src=\"https://datasciencelab.files.wordpress.com/2013/11/pandas-drinking-cr.png\" width=300 class=\"pull-right\" style=\"margin-right:30px\">\n\n## There are 5 problems. All problems have equal weight.\n\n<font color='#666'>There are 4 pandas.</font>"}
︠da18b374-1048-4d5e-8e3a-f4db75f12710s︠
# Always gets run when you start this worksheet -- makes things nice for pandas.
%auto
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib
matplotlib.style.use('ggplot')
%default_mode python
%typeset_mode True
︡b10e9a54-9d20-4fcf-89aa-c0a0e08cf492︡{"done":true}︡
︠bd9cf7c4-ec14-4cae-97d3-1c9852d242ddi︠

%md
### Problem 1 -- Your CSV file

- (1.a) Search for a CSV dataset online (google: "[a keyword] filetype:csv") and load it into pandas.
Make sure, it contains at least one column with numbers!

- (1.b) Load the file as a Pandas dataframe, and compute the sum, mean, max, min, etc. of columns with numbers (use the describe method on a dataframe).

- (1.c) Use a command from the [Pandas visualization tools](http://pandas.pydata.org/pandas-docs/stable/visualization.html) to draw at least one plot that illustrates your data.

︡a4f01e9d-0955-4db1-aa25-18d96406f14b︡{"done":true,"md":"### Problem 1 -- Your CSV file\n\n- (1.a) Search for a CSV dataset online (google: \"[a keyword] filetype:csv\") and load it into pandas.\nMake sure, it contains at least one column with numbers!\n\n- (1.b) Load the file as a Pandas dataframe, and compute the sum, mean, max, min, etc. of columns with numbers (use the describe method on a dataframe).\n\n- (1.c) Use a command from the [Pandas visualization tools](http://pandas.pydata.org/pandas-docs/stable/visualization.html) to draw at least one plot that illustrates your data."}
︠2e2cb451-d45f-4544-b59b-59ac7a960771︠
%md
(1.a) -- make some notes about how you did it here.

︡6d4c1bb5-4158-4b30-896c-04a68cafe741︡
︠4b80823a-392a-4730-839e-a0b9400b3b5c︠
# (1.b) -- load and describe

︡7c51d15b-0bd3-4b84-a9cc-3defb172d532︡
︠78f5e7a9-2222-4fc8-8efb-8267219e7e2e︠
# (1.c) -- visualize


︠8593c02c-edd8-4f7e-a456-7a1de876c40b︠
%md
### Problem 2 -- Creating/Importing Different types of files

This problem is very similar to problem 1, but with more file types (and they are smaller).   Pandas can [import many types of files](http://pandas.pydata.org/pandas-docs/version/0.17.1/io.html), including CSV files, excel spreadsheets, and much more.

- (2.a) Find or create small example files (each should have _**at least 3 rows**_) in any way you want:

    - `prob2.csv` -- a CSV file
    - `prob2.json` -- a JSON file  (hint: you can make json files using the [json Python module](https://docs.python.org/2/library/json.html))
    - `prob2.xlsx` -- an excel spreadsheet (hint: use google docs to make one)
    - `prob2.h5` -- an HDF file (hint: create such a file *using* pandas; e.g., see HDFStore docs)

- (2.b) Read each of the files above in as Pandas data frames, compute summary statistics about them (with describe), and draw one plot (of your choosing) to illustrate something about the data.

︡7f1e1bf4-66e1-445b-8c46-699188e2c42b︡{"done":true,"md":"### Problem 2 -- Creating/Importing Different types of files\n\nThis problem is very similar to problem 1, but with more file types (and they are smaller).   Pandas can [import many types of files](http://pandas.pydata.org/pandas-docs/version/0.17.1/io.html), including CSV files, excel spreadsheets, and much more.\n\n- (2.a) Find or create small example files (each should have _**at least 3 rows**_) in any way you want:\n\n    - `prob2.csv` -- a CSV file\n    - `prob2.json` -- a JSON file  (hint: you can make json files using the [json Python module](https://docs.python.org/2/library/json.html))\n    - `prob2.xlsx` -- an excel spreadsheet (hint: use google docs to make one)\n    - `prob2.h5` -- an HDF file (hint: create such a file *using* pandas; e.g., see HDFStore docs)\n\n- (2.b) Read each of the files above in as Pandas data frames, compute summary statistics about them (with describe), and draw one plot (of your choosing) to illustrate something about the data."}
︠aaaf1f4b-f4a7-4caf-8e10-c71b9813d359︠
%md
(2.a)
- Explain how you got (or created) your data:



- When you're done there should be files data.csv, data.json, data.xlsx, and data.h5 in the same directory as this worksheet.




︠8e880c03-fec5-479d-9fb9-8a079a1b3ca4︠
# 2.b




︠e5e20e96-fc94-4f5d-8d27-a52432d012c7i︠
%md
<img src="https://pbs.twimg.com/profile_images/641353910561566720/VSxsyxs7.jpg" width=200 class="pull-right">
### Problem 3 -- Sunactivity

Let `sunspots` be the sunactivity dataframe (defined below for you).

- (3.a) For how many years was the activity $\geq 100$? (Hint: how to get from a list/array of objects to the number of elements in that list/array?)
- (3.b) Plot a histogram of all activity values beginning with the year 1900.
- (3.c) Which year(s) had the highest activity?
︡1919fc38-2097-44c2-8b2e-413830ba75d2︡{"done":true,"md":"<img src=\"https://pbs.twimg.com/profile_images/641353910561566720/VSxsyxs7.jpg\" width=200 class=\"pull-right\">\n### Problem 3 -- Sunactivity\n\nLet `sunspots` be the sunactivity dataframe (defined below for you).\n\n- (3.a) For how many years was the activity $\\geq 100$? (Hint: how to get from a list/array of objects to the number of elements in that list/array?)\n- (3.b) Plot a histogram of all activity values beginning with the year 1900.\n- (3.c) Which year(s) had the highest activity?"}
︠16b1c6e7-7afb-44da-b57b-f965b78dc1a9︠
# (3.a)
from statsmodels import datasets
sunspots = datasets.sunspots.load_pandas().data.set_index("YEAR")

︠e013254b-2d19-45af-9f83-5a38b8be33c6︠
# (3.b)




︠51688536-8e42-4cab-84f0-5d0dac4e3506︠
# (3.c)





︠ccb6626c-6f28-48a1-a176-28b5e00fba92i︠
%md
### Problem 4 -- Iris flowers

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Iris_versicolor_3.jpg/1920px-Iris_versicolor_3.jpg" height=200 class='pull-right'>
<img src="https://upload.wikimedia.org/wikipedia/commons/4/46/R._A._Fischer.jpg" height=200 class="pull-right" style="margin-right:10px">

All statstic students learn about the extremely famous [iris dataset](https://en.wikipedia.org/wiki/Iris_flower_data_set)!
It lists the various sizes of petals and tries to classify them.

- (4.a) Load the iris data set and use describe to see basic statistics about it.  Hint:
        from statsmodels import datasets
        iris = datasets.get_rdataset("iris").data


- (4.b) Plot all of the sepal (length, width) pairs in a [scatterplot](http://pandas.pydata.org/pandas-docs/stable/visualization.html#scatter-plot), and then plot the petal (length, width) pairs in another scatterplot.

- (4.c) Compute the average petal width for each of the "species"-categories.
︡c8d30a61-5fef-4d87-8859-914001a93c30︡{"done":true,"md":"### Problem 4 -- Iris flowers\n\n<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Iris_versicolor_3.jpg/1920px-Iris_versicolor_3.jpg\" height=200 class='pull-right'>\n<img src=\"https://upload.wikimedia.org/wikipedia/commons/4/46/R._A._Fischer.jpg\" height=200 class=\"pull-right\" style=\"margin-right:10px\">\n\nAll statstic students learn about the extremely famous [iris dataset](https://en.wikipedia.org/wiki/Iris_flower_data_set)!\nIt lists the various sizes of petals and tries to classify them.\n\n- (4.a) Load the iris data set and use describe to see basic statistics about it.  Hint:\n        from statsmodels import datasets\n        iris = datasets.get_rdataset(\"iris\").data\n\n\n- (4.b) Plot all of the sepal (length, width) pairs in a [scatterplot](http://pandas.pydata.org/pandas-docs/stable/visualization.html#scatter-plot), and then plot the petal (length, width) pairs in another scatterplot.\n\n- (4.c) Compute the average petal width for each of the \"species\"-categories."}
︠9d67c272-f6f2-47f3-b0a4-7b0baae614b4︠
# (4.a)  -- note, this problem is trivial because we told you the answer!
from statsmodels import datasets
iris = datasets.get_rdataset("iris").data
︠f3dcfd7a-398f-4e5d-9696-2c047c4049d6︠
# (4.b)






︠2d75ef21-0f38-4696-8a7e-63beed01a399︠
# (4.c)





︠b7ceaeea-5597-4102-81c8-348810a25815i︠

%md
### Problem 5 -- Pivot Tables

<img src="http://assets.inhabitat.com/files/100mpgh3-ed01.jpg" width=300 class="pull-right">
Large datasets have a problem: they are large.
One of the most commonly used techniques for summarizing larger tables into a more compact table are [Pivot Tables](https://en.wikipedia.org/wiki/Pivot_table).

Pandas has a very powerful [`pd.pivot_table`](http://pandas.pydata.org/pandas-docs/stable/reshaping.html#pivot-tables) function.
See also http://pbpython.com/pandas-pivot-table-explained.html

Load the miles per gallon data set, which has both numerical and categorical columns:

    from statsmodels import datasets
    mpg = datasets.get_rdataset("mpg", "ggplot2").data

<br><br>
You will then compute **pivot tables**, where you aggregate columns of your choice by sum, mean, min or max by category.

- (5.a) Create a pandas data frame using the `pd.pivot_table` command that tells you the average "cty" and "hwy" (city and highway miles per gallon) for each manufacturer?

- (5.b) Has the average city mileage improved from 1999 to 2008?   Has the average highway mileage improved from 1999 to 2008?

- (5.c) Create a scatterplot of pairs (displ, hwy) for all cars in 1999, and another scatter plot for all cars in 2008.  Roughly speaking, if you increase the card displacement, does the highway gas mileage go up or down?

︡16a1f1b3-e680-4d17-850a-79acb626db21︡{"done":true,"md":"### Problem 5 -- Pivot Tables\n\n<img src=\"http://assets.inhabitat.com/files/100mpgh3-ed01.jpg\" width=300 class=\"pull-right\">\nLarge datasets have a problem: they are large.\nOne of the most commonly used techniques for summarizing larger tables into a more compact table are [Pivot Tables](https://en.wikipedia.org/wiki/Pivot_table).\n\nPandas has a very powerful [`pd.pivot_table`](http://pandas.pydata.org/pandas-docs/stable/reshaping.html#pivot-tables) function.\nSee also http://pbpython.com/pandas-pivot-table-explained.html\n\nLoad the miles per gallon data set, which has both numerical and categorical columns:\n\n    from statsmodels import datasets\n    mpg = datasets.get_rdataset(\"mpg\", \"ggplot2\").data\n\n<br><br>\nYou will then compute **pivot tables**, where you aggregate columns of your choice by sum, mean, min or max by category.\n\n- (5.a) Create a pandas data frame using the `pd.pivot_table` command that tells you the average \"cty\" and \"hwy\" (city and highway miles per gallon) for each manufacturer?\n\n- (5.b) Has the average city mileage improved from 1999 to 2008?   Has the average highway mileage improved from 1999 to 2008?\n\n- (5.c) Create a scatterplot of pairs (displ, hwy) for all cars in 1999, and another scatter plot for all cars in 2008.  Roughly speaking, if you increase the card displacement, does the highway gas mileage go up or down?"}
︠76152462-1ee1-40b6-8cb9-aac6a3b102e3︠
from statsmodels import datasets
mpg = datasets.get_rdataset("mpg", "ggplot2").data


︠fb68e025-52c8-41b6-9d83-3e26be7db849︠
# (5.a)




︠cb6a7f05-bf24-47fa-b51d-c9cc08442f1a︠
# (5.b)



︠37438788-8e1f-4092-af21-317075f7a7b4︠
# (5.c)





︠f8ea939e-bafd-43b7-9240-b400bf980003︠










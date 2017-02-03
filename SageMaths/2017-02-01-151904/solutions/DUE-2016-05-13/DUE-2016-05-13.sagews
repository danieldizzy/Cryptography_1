︠4189f872-59c9-4402-b7ef-7e1cfb5e84b6i︠
%md
<img src="https://datasciencelab.files.wordpress.com/2013/11/pandas-drinking-cr.png" width=250 class="pull-right" style="margin-right:30px">

# Math 480 - Homework 6

## Due 6pm on May 13, 2016

︡f8a01199-1fe9-4723-8641-9d5fc14ef4c9︡{"done":true,"md":"<img src=\"https://datasciencelab.files.wordpress.com/2013/11/pandas-drinking-cr.png\" width=250 class=\"pull-right\" style=\"margin-right:30px\">\n\n# Math 480 - Homework 6\n\n## Due 6pm on May 13, 2016"}
︠c84c1444-debf-4362-9cce-d138ec1c8f8di︠
%md
**There are 5 problems. All problems have equal weight.**


︡ad858b8b-554c-4289-93ef-b8113b20b933︡{"done":true,"md":"**There are 5 problems. All problems have equal weight.**"}
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
︡c61d5cab-963d-4e82-ad3e-e4552923b9e2︡{"done":true}︡
︠bd9cf7c4-ec14-4cae-97d3-1c9852d242ddi︠

%md
### Problem 1 -- Your CSV file

- (1.a) Search for a CSV dataset online (google: "[a keyword] filetype:csv") and try to load it into pandas.
Make sure, it contains at least one column with numbers!

- (1.b) Load the file as a Pandas dataframe, and compute the sum, mean, max, min, etc. of columns with numbers (use the describe method on a dataframe).

- (1.c) Use a command from the [Pandas visualization tools](http://pandas.pydata.org/pandas-docs/stable/visualization.html) to draw at least one plot that illustrates your data.

︡a4f01e9d-0955-4db1-aa25-18d96406f14b︡{"done":true,"md":"### Problem 1 -- Your CSV file\n\n- (1.a) Search for a CSV dataset online (google: \"[a keyword] filetype:csv\") and try to load it into pandas.\nMake sure, it contains at least one column with numbers!\n\n- (1.b) Load the file as a Pandas dataframe, and compute the sum, mean, max, min, etc. of columns with numbers (use the describe method on a dataframe).\n\n- (1.c) Use a command from the [Pandas visualization tools](http://pandas.pydata.org/pandas-docs/stable/visualization.html) to draw at least one plot that illustrates your data."}
︠c9c440e5-7d8a-4a08-af83-7a71f810d64di︠
%html
<font color="red"><h2>10 Points Total</h2>
<h4>Part A (2 points total)</h4>
<p>All or nothing, there should be data loaded into pandas via csv.
</p>
<h4>Part B (4 points total)</h4>
<p>Award:
    <ul>
        <li>4 points for using describe</li>
        <li>3 points if the manually computed the values that describe should give.</li>
        <li>2 points if their csv file does not load but they used describe correctly</li>
    </ul>
</p>
<h4>Part C (4 points total)</h4>
<p>Award:
    <ul>
        <li>4 points for plotting their data.</li>
        <li>2 points if they plotted correctly but their csv file did not load.</li>
    </ul>
</p>
</font>

︡ebfa70d1-7f0c-4ec9-ab46-7bac97cc7afe︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\n<h4>Part A (2 points total)</h4>\n<p>All or nothing, there should be data loaded into pandas via csv.\n</p>\n<h4>Part B (4 points total)</h4>\n<p>Award:\n    <ul>\n        <li>4 points for using describe</li>\n        <li>3 points if the manually computed the values that describe should give.</li>\n        <li>2 points if their csv file does not load but they used describe correctly</li>\n    </ul>\n</p>\n<h4>Part C (4 points total)</h4>\n<p>Award:\n    <ul>\n        <li>4 points for plotting their data.</li>\n        <li>2 points if they plotted correctly but their csv file did not load.</li>\n    </ul>\n</p>\n</font>"}
︠2e2cb451-d45f-4544-b59b-59ac7a960771i︠
%md
(1.a) -- make some notes about how you did it here.

︡6d4c1bb5-4158-4b30-896c-04a68cafe741︡{"done":true,"md":"(1.a) -- make some notes about how you did it here."}
︠4b80823a-392a-4730-839e-a0b9400b3b5cs︠
# (1.b) -- load and describe

︡6aa3b380-82ce-431a-9c68-caa9477c39a8︡{"done":true}︡
︠78f5e7a9-2222-4fc8-8efb-8267219e7e2es︠
# (1.c) -- visualize



︡ec4febdd-e153-486e-a2a4-1e48a44b862c︡{"done":true}︡
︠9baf61ce-4e09-4fe5-8fc4-76b51cde0ff8s︠
### Solution:

# Googled for "skateboard type:csv", then got github https://raw.githubusercontent.com/taulant/nodebox-sandbox/master/Skateboard_Parks.csv and downloaded raw.

d = pd.read_csv("Skateboard_Parks.csv")
d.describe()

d.plot.line(x='FID', y='PARK_ID')


︡e43b3f0e-fc20-4dc9-b896-763c1c257ca3︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>FID</th>\n      <th>PARK_ID</th>\n      <th>FACILITYID</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>count</th>\n      <td>20.00000</td>\n      <td>20.000000</td>\n      <td>20.000000</td>\n    </tr>\n    <tr>\n      <th>mean</th>\n      <td>9.50000</td>\n      <td>869.750000</td>\n      <td>28009.900000</td>\n    </tr>\n    <tr>\n      <th>std</th>\n      <td>5.91608</td>\n      <td>456.136623</td>\n      <td>6.348643</td>\n    </tr>\n    <tr>\n      <th>min</th>\n      <td>0.00000</td>\n      <td>9.000000</td>\n      <td>28000.000000</td>\n    </tr>\n    <tr>\n      <th>25%</th>\n      <td>4.75000</td>\n      <td>646.750000</td>\n      <td>28004.750000</td>\n    </tr>\n    <tr>\n      <th>50%</th>\n      <td>9.50000</td>\n      <td>867.500000</td>\n      <td>28009.500000</td>\n    </tr>\n    <tr>\n      <th>75%</th>\n      <td>14.25000</td>\n      <td>1157.500000</td>\n      <td>28015.250000</td>\n    </tr>\n    <tr>\n      <th>max</th>\n      <td>19.00000</td>\n      <td>1717.000000</td>\n      <td>28020.000000</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/26006/tmp_bzAz1N.svg","show":true,"text":null,"uuid":"373dfc33-fa16-4778-bcea-cce804bf34b3"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠37357065-eb55-4171-877d-10d012d15bcas︠

︡c0a2064f-65e9-4f9d-9b3b-7222a5d456fa︡{"done":true}︡
︠8593c02c-edd8-4f7e-a456-7a1de876c40bi︠
%md
### Problem 2 -- Creating/Importing Different types of files

This problem is very similar to problem 1, but with more file types (and they are smaller).   Pandas can [import many types of files](http://pandas.pydata.org/pandas-docs/version/0.17.1/io.html), including CSV files, excel spreadsheets, and much more.

- (2.a) Find or create small example files (each should have _**at least 3 rows**_) in any way you want:

    - `prob2.csv` -- a CSV file
    - `prob2.json` -- a JSON file  (hint: you can make json files using the [json Python module](https://docs.python.org/2/library/json.html))
    - `prob2.xls` -- an excel spreadsheet (hint: use google docs to make one)
    - `prob2.h5` -- an HDF file (hint: create such a file *using* pandas; e.g., see HDFStore docs)

- (2.b) Read each of the files above in as Pandas data frames, compute summary statistics about them (with describe), and draw one plot (of your choosing) to illustrate something about the data.

︡7f1e1bf4-66e1-445b-8c46-699188e2c42b︡{"done":true,"md":"### Problem 2 -- Creating/Importing Different types of files\n\nThis problem is very similar to problem 1, but with more file types (and they are smaller).   Pandas can [import many types of files](http://pandas.pydata.org/pandas-docs/version/0.17.1/io.html), including CSV files, excel spreadsheets, and much more.\n\n- (2.a) Find or create small example files (each should have _**at least 3 rows**_) in any way you want:\n\n    - `prob2.csv` -- a CSV file\n    - `prob2.json` -- a JSON file  (hint: you can make json files using the [json Python module](https://docs.python.org/2/library/json.html))\n    - `prob2.xls` -- an excel spreadsheet (hint: use google docs to make one)\n    - `prob2.h5` -- an HDF file (hint: create such a file *using* pandas; e.g., see HDFStore docs)\n\n- (2.b) Read each of the files above in as Pandas data frames, compute summary statistics about them (with describe), and draw one plot (of your choosing) to illustrate something about the data."}
︠aaaf1f4b-f4a7-4caf-8e10-c71b9813d359i︠
%md
(2.a)
- Explain how you got (or created) your data:



- When you're done there should be files data.csv, data.json, data.xls, and data.h5 in the same directory as this worksheet.


︡37a10892-ee49-43dd-84cb-309ab50fec42︡{"done":true,"md":"(2.a)\n- Explain how you got (or created) your data:\n\n\n\n- When you're done there should be files data.csv, data.json, data.xls, and data.h5 in the same directory as this worksheet."}
︠72d8aa94-a4bc-4b88-97ca-4a4f9db53607i︠
%html
<font color="red"><h2>10 Points Total</h2>
<h4>Part A (1 point for CSV, JSON, and xlsx. 2 points for h5; 5 points total)</h4>
<p>Award (for each file type):
    <ul>
        <li>Full points if they have the file and explained how they got it. (code to make the file counts as it's self explanitory)</li>
        <li>Half points if they're missing one of the requirements for the full point.</li>
    </ul>
</p>
<h4>Part B (1 point per file type import and 1 point for a plot. 5 points total)</h4>
<p>Award: (per file type).
    <ul>
        <li>1 point if they used read_XXXX(file_name) correctly and used describe.</li>
        <li>0.5 points if did not use describe()</li>
        <li>0 points if they did not read from file (eg. read from a variable)</li>
    </ul>
</p>
Award 1 point for the plot of some data.
</font>
︡79d92d54-4e23-49c2-925c-a09540e76e81︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\n<h4>Part A (1 point for CSV, JSON, and xlsx. 2 points for h5; 5 points total)</h4>\n<p>Award (for each file type):\n    <ul>\n        <li>Full points if they have the file and explained how they got it. (code to make the file counts as it's self explanitory)</li>\n        <li>Half points if they're missing one of the requirements for the full point.</li>\n    </ul>\n</p>\n<h4>Part B (1 point per file type import and 1 point for a plot. 5 points total)</h4>\n<p>Award: (per file type).\n    <ul>\n        <li>1 point if they used read_XXXX(file_name) correctly and used describe.</li>\n        <li>0.5 points if did not use describe()</li>\n        <li>0 points if they did not read from file (eg. read from a variable)</li>\n    </ul>\n</p>\nAward 1 point for the plot of some data.\n</font>"}
︠ae901d01-c9b4-4b64-9472-f87ccd737c23i︠
%md
### Solution
︡b76b8a6f-bbf7-4c87-8242-d9a5a9954448︡{"done":true,"md":"### Solution"}
︠29e7a901-5477-40bb-aa96-dd09b0368710s︠
# Creating CSV File
raw_data = {'first_name': ['Jason', 'Molly', 'Tina', 'Jake', 'Amy'],
        'last_name': ['Miller', 'Jacobson', ".", 'Milner', 'Cooze'],
        'age': [42, 52, 36, 24, 73],
        'preTestScore': [4, 24, 31, ".", "."],
        'postTestScore': ["25,000", "94,000", 57, 62, 70]}
df = pd.DataFrame(raw_data, columns = ['first_name', 'last_name', 'age', 'preTestScore', 'postTestScore'])
df.to_csv('prob2.csv')
︡cc1c6c20-c10e-4308-b59a-f649b1d948c0︡{"done":true}︡
︠6b5a3af5-58cc-4bcc-93f6-1566cb1ef85ei︠
%md
- Json was downloaded from [here](https://api.github.com/repos/pydata/pandas/issues?per_page=5) via this [example](http://hayd.github.io/2013/pandas-json/)
- xlsx was created in google drive and exported as xlsx
︡8827d835-0f57-4a06-8a71-39401f71cb73︡{"done":true,"md":"- Json was downloaded from [here](https://api.github.com/repos/pydata/pandas/issues?per_page=5) via this [example](http://hayd.github.io/2013/pandas-json/)\n- xlsx was created in google drive and exported as xlsx"}
︠bed3b145-fc57-451c-903c-f507492df260s︠
# Creating hdf file
# From example here: http://pandas.pydata.org/pandas-docs/version/0.17.1/io.html#io-hdf5
store = pd.HDFStore('prob2.h5')
np.random.seed(1234)
index = pd.date_range('1/1/2000', periods=8)
df = pd.DataFrame(np.random.randn(8, 3), index=index, columns=['A', 'B', 'C'])
store["df"] = df
︡29163be5-39b5-41c5-bc06-7648a1d2051a︡{"done":true}︡
︠9704e2e5-023f-4eab-a38e-71df9b8c444as︠
# (2.b)
csv_data  = pd.read_csv("prob2.csv")
json_data = pd.read_json("prob2.json")
xls_data  = pd.read_excel("prob2.xlsx")
h5_data  = pd.read_hdf("prob2.h5")

csv_data.describe()
json_data.describe()
xls_data.describe()
h5_data.describe()
︡35e65187-0be8-45e7-9aac-f0f68387fae7︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>Unnamed: 0</th>\n      <th>age</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>count</th>\n      <td>5.000000</td>\n      <td>5.000000</td>\n    </tr>\n    <tr>\n      <th>mean</th>\n      <td>2.000000</td>\n      <td>45.400000</td>\n    </tr>\n    <tr>\n      <th>std</th>\n      <td>1.581139</td>\n      <td>18.460769</td>\n    </tr>\n    <tr>\n      <th>min</th>\n      <td>0.000000</td>\n      <td>24.000000</td>\n    </tr>\n    <tr>\n      <th>25%</th>\n      <td>1.000000</td>\n      <td>36.000000</td>\n    </tr>\n    <tr>\n      <th>50%</th>\n      <td>2.000000</td>\n      <td>42.000000</td>\n    </tr>\n    <tr>\n      <th>75%</th>\n      <td>3.000000</td>\n      <td>52.000000</td>\n    </tr>\n    <tr>\n      <th>max</th>\n      <td>4.000000</td>\n      <td>73.000000</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>assignee</th>\n      <th>comments</th>\n      <th>id</th>\n      <th>number</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>count</th>\n      <td>0.0</td>\n      <td>5.000000</td>\n      <td>5.000000e+00</td>\n      <td>5.000000</td>\n    </tr>\n    <tr>\n      <th>mean</th>\n      <td>NaN</td>\n      <td>2.600000</td>\n      <td>1.537063e+08</td>\n      <td>13117.400000</td>\n    </tr>\n    <tr>\n      <th>std</th>\n      <td>NaN</td>\n      <td>4.722288</td>\n      <td>6.382248e+04</td>\n      <td>2.073644</td>\n    </tr>\n    <tr>\n      <th>min</th>\n      <td>NaN</td>\n      <td>0.000000</td>\n      <td>1.536583e+08</td>\n      <td>13115.000000</td>\n    </tr>\n    <tr>\n      <th>25%</th>\n      <td>NaN</td>\n      <td>0.000000</td>\n      <td>1.536615e+08</td>\n      <td>13116.000000</td>\n    </tr>\n    <tr>\n      <th>50%</th>\n      <td>NaN</td>\n      <td>1.000000</td>\n      <td>1.536700e+08</td>\n      <td>13117.000000</td>\n    </tr>\n    <tr>\n      <th>75%</th>\n      <td>NaN</td>\n      <td>1.000000</td>\n      <td>1.537364e+08</td>\n      <td>13119.000000</td>\n    </tr>\n    <tr>\n      <th>max</th>\n      <td>NaN</td>\n      <td>11.000000</td>\n      <td>1.538051e+08</td>\n      <td>13120.000000</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>Time</th>\n      <th>12:30 - 2:30</th>\n      <th>12:30 - 2:30.1</th>\n      <th>11:45 - 12:45</th>\n      <th>12:30 - 2:30.2</th>\n      <th>12:30 - 2:30.3</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>count</th>\n      <td>2</td>\n      <td>4</td>\n      <td>4</td>\n      <td>3</td>\n      <td>4</td>\n      <td>4</td>\n    </tr>\n    <tr>\n      <th>unique</th>\n      <td>2</td>\n      <td>4</td>\n      <td>4</td>\n      <td>3</td>\n      <td>4</td>\n      <td>4</td>\n    </tr>\n    <tr>\n      <th>top</th>\n      <td>Location</td>\n      <td>April 4th</td>\n      <td>April 5th</td>\n      <td>MGH</td>\n      <td>April 16th</td>\n      <td>Ryan</td>\n    </tr>\n    <tr>\n      <th>freq</th>\n      <td>1</td>\n      <td>1</td>\n      <td>1</td>\n      <td>1</td>\n      <td>1</td>\n      <td>1</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>A</th>\n      <th>B</th>\n      <th>C</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>count</th>\n      <td>8.000000</td>\n      <td>8.000000</td>\n      <td>8.000000</td>\n    </tr>\n    <tr>\n      <th>mean</th>\n      <td>0.049540</td>\n      <td>-0.545917</td>\n      <td>0.454165</td>\n    </tr>\n    <tr>\n      <th>std</th>\n      <td>1.143521</td>\n      <td>1.066463</td>\n      <td>0.622934</td>\n    </tr>\n    <tr>\n      <th>min</th>\n      <td>-2.242685</td>\n      <td>-2.021255</td>\n      <td>-0.334077</td>\n    </tr>\n    <tr>\n      <th>25%</th>\n      <td>-0.398481</td>\n      <td>-1.279958</td>\n      <td>-0.038889</td>\n    </tr>\n    <tr>\n      <th>50%</th>\n      <td>0.236777</td>\n      <td>-0.678556</td>\n      <td>0.421265</td>\n    </tr>\n    <tr>\n      <th>75%</th>\n      <td>0.883022</td>\n      <td>0.246429</td>\n      <td>0.913359</td>\n    </tr>\n    <tr>\n      <th>max</th>\n      <td>1.321158</td>\n      <td>1.150036</td>\n      <td>1.432707</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠e5e20e96-fc94-4f5d-8d27-a52432d012c7i︠
%md
<img src="https://pbs.twimg.com/profile_images/641353910561566720/VSxsyxs7.jpg" width=200 class="pull-right">
### Problem 3 -- Sunactivity

Let `sunspots` be the sunactivity dataframe from the lecture.

- (3.a) For how many years was the activity $\geq 100$? (Hint: how to get from a list/array of objects to the number of elements in that list/array?)
- (3.b) Plot a histogram of all activity values beginning with the year 1900.
- (3.c) Which year(s) had the highest activity?
︡1919fc38-2097-44c2-8b2e-413830ba75d2︡{"done":true,"md":"<img src=\"https://pbs.twimg.com/profile_images/641353910561566720/VSxsyxs7.jpg\" width=200 class=\"pull-right\">\n### Problem 3 -- Sunactivity\n\nLet `sunspots` be the sunactivity dataframe from the lecture.\n\n- (3.a) For how many years was the activity $\\geq 100$? (Hint: how to get from a list/array of objects to the number of elements in that list/array?)\n- (3.b) Plot a histogram of all activity values beginning with the year 1900.\n- (3.c) Which year(s) had the highest activity?"}
︠452b24f7-39a8-4723-ac2b-361da7d552d0i︠
%html
<font color="red"><h2>10 Points Total</h2>
<h4>Part A (4 points)</h4>
<p>Award:
    <ul>
        <li>4 points if they 'just got the answer' using Pandas functionality (should be short)</li>
        <li>2 points if they used something like a for loop</li>
        <li>0 points if they got the wrong answer</li>
    </ul>
</p>
<h4>Part B (4 pointsl)</h4>
<p>Award:
    <ul>
        <li>4 points for the correct histogram</li>
        <li>2 points if they made a histogram but with the wrong subset of data</li>
        <li>0 points for no histogram</li>
    </ul>
</p>
<h4>Part C (2 pointsl)</h4>
<p>Award: (per file type).
    <ul>
        <li>2 points if they gave the correct answer with relatively short code</li>
        <li>1 point if they gave the correct answer but for looped through the data</li>
        <li>0 points if they gave the wrong answer</li>
    </ul>
</p>
</font>
︡f641ecb9-b65d-4b62-864e-a68e239f7410︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\n<h4>Part A (4 points)</h4>\n<p>Award:\n    <ul>\n        <li>4 points if they 'just got the answer' using Pandas functionality (should be short)</li>\n        <li>2 points if they used something like a for loop</li>\n        <li>0 points if they got the wrong answer</li>\n    </ul>\n</p>\n<h4>Part B (4 pointsl)</h4>\n<p>Award:\n    <ul>\n        <li>4 points for the correct histogram</li>\n        <li>2 points if they made a histogram but with the wrong subset of data</li>\n        <li>0 points for no histogram</li>\n    </ul>\n</p>\n<h4>Part C (2 pointsl)</h4>\n<p>Award: (per file type).\n    <ul>\n        <li>2 points if they gave the correct answer with relatively short code</li>\n        <li>1 point if they gave the correct answer but for looped through the data</li>\n        <li>0 points if they gave the wrong answer</li>\n    </ul>\n</p>\n</font>"}
︠16b1c6e7-7afb-44da-b57b-f965b78dc1a9s︠
# (3.a)
from statsmodels import datasets
sunspots = datasets.sunspots.load_pandas().data.set_index("YEAR")

print "number of years when activity was > 100:"
len(sunspots[sunspots.SUNACTIVITY>100])
︡9240105e-03ff-437e-8cb8-e5c030777365︡{"stdout":"number of years when activity was > 100:\n"}︡{"html":"<div align='center'>$\\displaystyle 43$</div>"}︡{"done":true}︡
︠e013254b-2d19-45af-9f83-5a38b8be33c6s︠
# (3.b)

sunspots[1900:].plot.hist()
︡ae9d39b6-50b3-48a9-a296-501a92a6cb00︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/26006/tmp_LxMl8O.svg","show":true,"text":null,"uuid":"272ae097-ca06-4aae-9da4-cb4c0f9a682c"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠51688536-8e42-4cab-84f0-5d0dac4e3506s︠
# (3.c)

m = sunspots.max().SUNACTIVITY
sunspots[sunspots.SUNACTIVITY == m]
︡1d0bc586-4500-4d19-af77-b35b890309a9︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>SUNACTIVITY</th>\n    </tr>\n    <tr>\n      <th>YEAR</th>\n      <th></th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>1957.0</th>\n      <td>190.2</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠fdf89c06-2082-45b1-b2b0-9bd44e570232s︠

︡263f003c-dbba-41dc-bc98-6157046aa7ca︡{"done":true}︡
︠ccb6626c-6f28-48a1-a176-28b5e00fba92i︠
%md
### Problem 4 -- Iris flowers

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Iris_versicolor_3.jpg/1920px-Iris_versicolor_3.jpg" height=200 class='pull-right'>
<img src="https://upload.wikimedia.org/wikipedia/commons/4/46/R._A._Fischer.jpg" height=200 class="pull-right" style="margin-right:10px">

All statstic students learn about the extremely famous [iris dataset](https://en.wikipedia.org/wiki/Iris_flower_data_set)!
It lists the various sizes of petals and tries to classify them.

- (4.a) Load the iris data set and use describe to see basic statistics about it.  Hint:
        from statsmodels import datasets; iris = datasets.get_rdataset("iris").data


- (4.b) Plot all of the sepal (length, width) pairs in a [scatterplot](http://pandas.pydata.org/pandas-docs/stable/visualization.html#scatter-plot), and then plot the petal (length, width) pairs in another scatterplot.

- (4.c) Compute the average petal width for each of the "species"-categories.
︡c8d30a61-5fef-4d87-8859-914001a93c30︡{"done":true,"md":"### Problem 4 -- Iris flowers\n\n<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Iris_versicolor_3.jpg/1920px-Iris_versicolor_3.jpg\" height=200 class='pull-right'>\n<img src=\"https://upload.wikimedia.org/wikipedia/commons/4/46/R._A._Fischer.jpg\" height=200 class=\"pull-right\" style=\"margin-right:10px\">\n\nAll statstic students learn about the extremely famous [iris dataset](https://en.wikipedia.org/wiki/Iris_flower_data_set)!\nIt lists the various sizes of petals and tries to classify them.\n\n- (4.a) Load the iris data set and use describe to see basic statistics about it.  Hint:\n        from statsmodels import datasets; iris = datasets.get_rdataset(\"iris\").data\n\n\n- (4.b) Plot all of the sepal (length, width) pairs in a [scatterplot](http://pandas.pydata.org/pandas-docs/stable/visualization.html#scatter-plot), and then plot the petal (length, width) pairs in another scatterplot.\n\n- (4.c) Compute the average petal width for each of the \"species\"-categories."}
︠7b2b9684-ae4c-4233-acad-c1e8547b23a6i︠
%html
<font color="red"><h2>10 Points Total</h2>
<h4>Part A (1 points)</h4>
<p>Award:
    <ul>
        <li>1 point for doing iris.describe()</li>
    </ul>
</p>
<h4>Part B (2 points per plot, 4 points total)</h4>
<p>Award: (per plot)
    <ul>
        <li>2 points for the correct plot with a simple solution (about 1 or 2 lines)</li>
        <li>1 point for the correct plot with a more involved solution</li>
        <li>0 points the wrong plot</li>
    </ul>
</p>
<h4>Part C (5 points)</h4>
<p>Award:
    <ul>
        <li>5 points for finding the correct average petal width for each species.</li>
        <li>4 points for the correct widths without labeling the species.</li>
        <li>2 points for the wrong answer but a reasonable attempt.</li>
    </ul>
</p>
</font>
︡4948e047-0075-4648-8c61-cbea8fe5c983︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\n<h4>Part A (1 points)</h4>\n<p>Award:\n    <ul>\n        <li>1 point for doing iris.describe()</li>\n    </ul>\n</p>\n<h4>Part B (2 points per plot, 4 points total)</h4>\n<p>Award: (per plot)\n    <ul>\n        <li>2 points for the correct plot with a simple solution (about 1 or 2 lines)</li>\n        <li>1 point for the correct plot with a more involved solution</li>\n        <li>0 points the wrong plot</li>\n    </ul>\n</p>\n<h4>Part C (5 points)</h4>\n<p>Award:\n    <ul>\n        <li>5 points for finding the correct average petal width for each species.</li>\n        <li>4 points for the correct widths without labeling the species.</li>\n        <li>2 points for the wrong answer but a reasonable attempt.</li>\n    </ul>\n</p>\n</font>"}
︠9d67c272-f6f2-47f3-b0a4-7b0baae614b4s︠
# (4.a)
from statsmodels import datasets
iris = datasets.get_rdataset("iris").data
iris.describe()
︡abb67372-1838-4c6b-9ed6-1c2cd7274330︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>Sepal.Length</th>\n      <th>Sepal.Width</th>\n      <th>Petal.Length</th>\n      <th>Petal.Width</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>count</th>\n      <td>150.000000</td>\n      <td>150.000000</td>\n      <td>150.000000</td>\n      <td>150.000000</td>\n    </tr>\n    <tr>\n      <th>mean</th>\n      <td>5.843333</td>\n      <td>3.057333</td>\n      <td>3.758000</td>\n      <td>1.199333</td>\n    </tr>\n    <tr>\n      <th>std</th>\n      <td>0.828066</td>\n      <td>0.435866</td>\n      <td>1.765298</td>\n      <td>0.762238</td>\n    </tr>\n    <tr>\n      <th>min</th>\n      <td>4.300000</td>\n      <td>2.000000</td>\n      <td>1.000000</td>\n      <td>0.100000</td>\n    </tr>\n    <tr>\n      <th>25%</th>\n      <td>5.100000</td>\n      <td>2.800000</td>\n      <td>1.600000</td>\n      <td>0.300000</td>\n    </tr>\n    <tr>\n      <th>50%</th>\n      <td>5.800000</td>\n      <td>3.000000</td>\n      <td>4.350000</td>\n      <td>1.300000</td>\n    </tr>\n    <tr>\n      <th>75%</th>\n      <td>6.400000</td>\n      <td>3.300000</td>\n      <td>5.100000</td>\n      <td>1.800000</td>\n    </tr>\n    <tr>\n      <th>max</th>\n      <td>7.900000</td>\n      <td>4.400000</td>\n      <td>6.900000</td>\n      <td>2.500000</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠f3dcfd7a-398f-4e5d-9696-2c047c4049d6s︠
# (4.b)
iris.plot.scatter(x='Sepal.Length', y = 'Sepal.Width')
iris.plot.scatter(x='Petal.Length', y = 'Petal.Width')

︡925cd70b-ecb1-46e8-940d-9ebbc0e63748︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/26006/tmp_7pSDDU.svg","show":true,"text":null,"uuid":"25b9cd5f-b8f6-46af-b7a6-266946261f8a"},"once":false}︡{"html":"<div align='center'></div>"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/26006/tmp_DeCPLP.svg","show":true,"text":null,"uuid":"30dcba4f-4d25-4acf-88be-11be37dfab9a"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠2d75ef21-0f38-4696-8a7e-63beed01a399s︠
# (4.c)
iris.groupby('Species').describe()
for s in iris.Species.unique():
    print s, iris["Petal.Width"][iris.Species == s].mean()
︡0be6b965-f163-4b13-bd66-8b1cd202ea96︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th></th>\n      <th>Petal.Length</th>\n      <th>Petal.Width</th>\n      <th>Sepal.Length</th>\n      <th>Sepal.Width</th>\n    </tr>\n    <tr>\n      <th>Species</th>\n      <th></th>\n      <th></th>\n      <th></th>\n      <th></th>\n      <th></th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th rowspan=\"8\" valign=\"top\">setosa</th>\n      <th>count</th>\n      <td>50.000000</td>\n      <td>50.000000</td>\n      <td>50.000000</td>\n      <td>50.000000</td>\n    </tr>\n    <tr>\n      <th>mean</th>\n      <td>1.462000</td>\n      <td>0.246000</td>\n      <td>5.006000</td>\n      <td>3.428000</td>\n    </tr>\n    <tr>\n      <th>std</th>\n      <td>0.173664</td>\n      <td>0.105386</td>\n      <td>0.352490</td>\n      <td>0.379064</td>\n    </tr>\n    <tr>\n      <th>min</th>\n      <td>1.000000</td>\n      <td>0.100000</td>\n      <td>4.300000</td>\n      <td>2.300000</td>\n    </tr>\n    <tr>\n      <th>25%</th>\n      <td>1.400000</td>\n      <td>0.200000</td>\n      <td>4.800000</td>\n      <td>3.200000</td>\n    </tr>\n    <tr>\n      <th>50%</th>\n      <td>1.500000</td>\n      <td>0.200000</td>\n      <td>5.000000</td>\n      <td>3.400000</td>\n    </tr>\n    <tr>\n      <th>75%</th>\n      <td>1.575000</td>\n      <td>0.300000</td>\n      <td>5.200000</td>\n      <td>3.675000</td>\n    </tr>\n    <tr>\n      <th>max</th>\n      <td>1.900000</td>\n      <td>0.600000</td>\n      <td>5.800000</td>\n      <td>4.400000</td>\n    </tr>\n    <tr>\n      <th rowspan=\"8\" valign=\"top\">versicolor</th>\n      <th>count</th>\n      <td>50.000000</td>\n      <td>50.000000</td>\n      <td>50.000000</td>\n      <td>50.000000</td>\n    </tr>\n    <tr>\n      <th>mean</th>\n      <td>4.260000</td>\n      <td>1.326000</td>\n      <td>5.936000</td>\n      <td>2.770000</td>\n    </tr>\n    <tr>\n      <th>std</th>\n      <td>0.469911</td>\n      <td>0.197753</td>\n      <td>0.516171</td>\n      <td>0.313798</td>\n    </tr>\n    <tr>\n      <th>min</th>\n      <td>3.000000</td>\n      <td>1.000000</td>\n      <td>4.900000</td>\n      <td>2.000000</td>\n    </tr>\n    <tr>\n      <th>25%</th>\n      <td>4.000000</td>\n      <td>1.200000</td>\n      <td>5.600000</td>\n      <td>2.525000</td>\n    </tr>\n    <tr>\n      <th>50%</th>\n      <td>4.350000</td>\n      <td>1.300000</td>\n      <td>5.900000</td>\n      <td>2.800000</td>\n    </tr>\n    <tr>\n      <th>75%</th>\n      <td>4.600000</td>\n      <td>1.500000</td>\n      <td>6.300000</td>\n      <td>3.000000</td>\n    </tr>\n    <tr>\n      <th>max</th>\n      <td>5.100000</td>\n      <td>1.800000</td>\n      <td>7.000000</td>\n      <td>3.400000</td>\n    </tr>\n    <tr>\n      <th rowspan=\"8\" valign=\"top\">virginica</th>\n      <th>count</th>\n      <td>50.000000</td>\n      <td>50.000000</td>\n      <td>50.000000</td>\n      <td>50.000000</td>\n    </tr>\n    <tr>\n      <th>mean</th>\n      <td>5.552000</td>\n      <td>2.026000</td>\n      <td>6.588000</td>\n      <td>2.974000</td>\n    </tr>\n    <tr>\n      <th>std</th>\n      <td>0.551895</td>\n      <td>0.274650</td>\n      <td>0.635880</td>\n      <td>0.322497</td>\n    </tr>\n    <tr>\n      <th>min</th>\n      <td>4.500000</td>\n      <td>1.400000</td>\n      <td>4.900000</td>\n      <td>2.200000</td>\n    </tr>\n    <tr>\n      <th>25%</th>\n      <td>5.100000</td>\n      <td>1.800000</td>\n      <td>6.225000</td>\n      <td>2.800000</td>\n    </tr>\n    <tr>\n      <th>50%</th>\n      <td>5.550000</td>\n      <td>2.000000</td>\n      <td>6.500000</td>\n      <td>3.000000</td>\n    </tr>\n    <tr>\n      <th>75%</th>\n      <td>5.875000</td>\n      <td>2.300000</td>\n      <td>6.900000</td>\n      <td>3.175000</td>\n    </tr>\n    <tr>\n      <th>max</th>\n      <td>6.900000</td>\n      <td>2.500000</td>\n      <td>7.900000</td>\n      <td>3.800000</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"stdout":"setosa 0.246\nversicolor 1.326\nvirginica 2.026\n"}︡{"done":true}︡
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
︠5e7553ce-8927-42ea-87c4-d4f9ec49c5c6i︠
%html
<font color="red"><h2>10 Points Total</h2>
Deduct 2 points from each part where they use an involved solution (eg. for-looping)
For parts A and B, deduct 1 point if they did not use a pivot table.
<h4>Part A (4 points)</h4>
<p>Award:
    <ul>
        <li>4 points for a correct table showing just the relevant, requested information.</li>
        <li>3 points for a correct table showing extra information</li>
    </ul>
</p>
<h4>Part B (4 points total)</h4>
<p>Award:
    <ul>
        <li>4 points for a correct table showing just the relevant, requested information.</li>
        <li>3 points for a correct table showing extra information</li>
    </ul>
</p>
<h4>Part C (1 points per plot, 2 points total)</h4>
<p>
    No pivot table is required for this part.
</p>
<p>Award: (per plot)
    <ul>
        <li>1 point for the correct plot with a simple solution (about 1 or 2 lines)</li>
        <li>0.5 points for the correct plot with a more involved solution</li>
        <li>0 points the wrong plot</li>
    </ul>
</p>
</font>
︡bf861ce9-339a-4a84-b6a0-d7c1947802ee︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\nDeduct 2 points from each part where they use an involved solution (eg. for-looping)\nFor parts A and B, deduct 1 point if they did not use a pivot table.\n<h4>Part A (4 points)</h4>\n<p>Award:\n    <ul>\n        <li>4 points for a correct table showing just the relevant, requested information.</li>\n        <li>3 points for a correct table showing extra information</li>\n    </ul>\n</p>\n<h4>Part B (4 points total)</h4>\n<p>Award:\n    <ul>\n        <li>4 points for a correct table showing just the relevant, requested information.</li>\n        <li>3 points for a correct table showing extra information</li>\n    </ul>\n</p>\n<h4>Part C (1 points per plot, 2 points total)</h4>\n<p>\n    No pivot table is required for this part.\n</p>\n<p>Award: (per plot)\n    <ul>\n        <li>1 point for the correct plot with a simple solution (about 1 or 2 lines)</li>\n        <li>0.5 points for the correct plot with a more involved solution</li>\n        <li>0 points the wrong plot</li>\n    </ul>\n</p>\n</font>"}
︠0be42a97-ea84-4e7a-92bc-de4ee95bf6dfs︠
from statsmodels import datasets
mpg = datasets.get_rdataset("mpg", "ggplot2").data
mpg.head(5) # only the first few rows
︡75ed561d-b37f-463c-848a-7ee366bf1ab8︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>manufacturer</th>\n      <th>model</th>\n      <th>displ</th>\n      <th>year</th>\n      <th>cyl</th>\n      <th>trans</th>\n      <th>drv</th>\n      <th>cty</th>\n      <th>hwy</th>\n      <th>fl</th>\n      <th>class</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>0</th>\n      <td>audi</td>\n      <td>a4</td>\n      <td>1.8</td>\n      <td>1999</td>\n      <td>4</td>\n      <td>auto(l5)</td>\n      <td>f</td>\n      <td>18</td>\n      <td>29</td>\n      <td>p</td>\n      <td>compact</td>\n    </tr>\n    <tr>\n      <th>1</th>\n      <td>audi</td>\n      <td>a4</td>\n      <td>1.8</td>\n      <td>1999</td>\n      <td>4</td>\n      <td>manual(m5)</td>\n      <td>f</td>\n      <td>21</td>\n      <td>29</td>\n      <td>p</td>\n      <td>compact</td>\n    </tr>\n    <tr>\n      <th>2</th>\n      <td>audi</td>\n      <td>a4</td>\n      <td>2.0</td>\n      <td>2008</td>\n      <td>4</td>\n      <td>manual(m6)</td>\n      <td>f</td>\n      <td>20</td>\n      <td>31</td>\n      <td>p</td>\n      <td>compact</td>\n    </tr>\n    <tr>\n      <th>3</th>\n      <td>audi</td>\n      <td>a4</td>\n      <td>2.0</td>\n      <td>2008</td>\n      <td>4</td>\n      <td>auto(av)</td>\n      <td>f</td>\n      <td>21</td>\n      <td>30</td>\n      <td>p</td>\n      <td>compact</td>\n    </tr>\n    <tr>\n      <th>4</th>\n      <td>audi</td>\n      <td>a4</td>\n      <td>2.8</td>\n      <td>1999</td>\n      <td>6</td>\n      <td>auto(l5)</td>\n      <td>f</td>\n      <td>16</td>\n      <td>26</td>\n      <td>p</td>\n      <td>compact</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠fb68e025-52c8-41b6-9d83-3e26be7db849s︠
# (5.a)

pd.pivot_table(mpg, values=['cty', 'hwy'], columns=['manufacturer'], aggfunc=np.mean)
︡bab30ee5-b51a-4036-8198-269a1cf3bd45︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th>manufacturer</th>\n      <th>audi</th>\n      <th>chevrolet</th>\n      <th>dodge</th>\n      <th>ford</th>\n      <th>honda</th>\n      <th>hyundai</th>\n      <th>jeep</th>\n      <th>land rover</th>\n      <th>lincoln</th>\n      <th>mercury</th>\n      <th>nissan</th>\n      <th>pontiac</th>\n      <th>subaru</th>\n      <th>toyota</th>\n      <th>volkswagen</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>cty</th>\n      <td>17.611111</td>\n      <td>15.000000</td>\n      <td>13.135135</td>\n      <td>14.00</td>\n      <td>24.444444</td>\n      <td>18.642857</td>\n      <td>13.500</td>\n      <td>11.5</td>\n      <td>11.333333</td>\n      <td>13.25</td>\n      <td>18.076923</td>\n      <td>17.0</td>\n      <td>19.285714</td>\n      <td>18.529412</td>\n      <td>20.925926</td>\n    </tr>\n    <tr>\n      <th>hwy</th>\n      <td>26.444444</td>\n      <td>21.894737</td>\n      <td>17.945946</td>\n      <td>19.36</td>\n      <td>32.555556</td>\n      <td>26.857143</td>\n      <td>17.625</td>\n      <td>16.5</td>\n      <td>17.000000</td>\n      <td>18.00</td>\n      <td>24.615385</td>\n      <td>26.4</td>\n      <td>25.571429</td>\n      <td>24.911765</td>\n      <td>29.222222</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠cb6a7f05-bf24-47fa-b51d-c9cc08442f1as︠

# (5.b)
pd.pivot_table(mpg, values=['hwy', 'cty'], columns=['year'], aggfunc=np.mean)

︡72dfc833-d003-4b34-a5d6-18c79b39e312︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th>year</th>\n      <th>1999</th>\n      <th>2008</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>cty</th>\n      <td>17.017094</td>\n      <td>16.700855</td>\n    </tr>\n    <tr>\n      <th>hwy</th>\n      <td>23.427350</td>\n      <td>23.452991</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠37438788-8e1f-4092-af21-317075f7a7b4s︠
# (5.c)
mpg[mpg.year==1999].plot.scatter(x='displ', y='hwy')
mpg[mpg.year==2008].plot.scatter(x='displ', y='hwy')
︡3d7a0744-6a92-4324-a1d6-2ecad6e4c3b6︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/26006/tmp_nucTx7.svg","show":true,"text":null,"uuid":"83433acb-4840-427e-9594-fd48a0b2e528"},"once":false}︡{"html":"<div align='center'></div>"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/26006/tmp_JRnIO4.svg","show":true,"text":null,"uuid":"2419ab43-cd56-4b03-96cc-724e008fa016"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡










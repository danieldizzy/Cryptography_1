︠1f0475e5-35fa-43d8-a22e-4771f76e3893i︠
%md
# [Intro to Pandas Data Structures](http://www.gregreda.com/2013/10/26/intro-to-pandas-data-structures/)


︡6f6aafdd-5b50-4bda-91e3-771f98e560ec︡{"done":true,"md":"# [Intro to Pandas Data Structures](http://www.gregreda.com/2013/10/26/intro-to-pandas-data-structures/)"}
︠2912fc99-d2c5-44a8-9cd2-70f65e541012s︠

%auto
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
︡612a4705-5bb7-48f8-b280-2b45fab66b7f︡{"done":true}︡
︠bcb6c7de-4c39-441e-990b-f21e18c83ed3s︠
%auto
# so that numbers are Python by default, not sage, which would confuse pandas.
%default_mode python

# make all output look nice, e.g., html tables, without havig to explicitly type show.
%typeset_mode True
︡7632e688-b817-40a6-8ca3-8f80f489b0e4︡{"done":true}︡
︠43aa2b6e-adc8-4646-8cf9-8c76b2643905s︠
# create a Series with an arbitrary list
s = pd.Series([7, 'Heisenberg', 3.14, -1789710578, 'Happy Eating!'])
s
︡3f49025b-6faf-4a13-a0f7-dc10c6a4fa8c︡{"stdout":"0                7\n1       Heisenberg\n2             3.14\n3      -1789710578\n4    Happy Eating!\ndtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠f268a415-2cb5-4b0b-8a48-21ed4135dbbas︠
# Arbitrary index
s = pd.Series([7, 'Heisenberg', 3.14, -1789710578, 'Happy Eating!'],
              index=['A', 'Z', 'C', 'Y', 'E'])
s
︡56126612-20e0-4ade-9821-6e5fba7485cb︡{"stdout":"A                7\nZ       Heisenberg\nC             3.14\nY      -1789710578\nE    Happy Eating!\ndtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠163364be-eca2-4425-bfc5-252391d64379s︠
d = {'Chicago': 1000, 'New York': 1300, 'Portland': 900, 'San Francisco': 1100,
     'Austin': 450, 'Boston': None}
cities = pd.Series(d)
cities
︡e3dc0e88-babd-464f-8875-0a177f91642a︡{"stdout":"Austin            450.0\nBoston              NaN\nChicago          1000.0\nNew York         1300.0\nPortland          900.0\nSan Francisco    1100.0\ndtype: float64\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠15ca2614-1ae1-4429-8878-401df33f93d7︡{"done":true}
(cities < 1000)
︡c8d461af-6e72-4ff4-9d01-a19daed5fdf6︡{"stdout":"Austin            True\nBoston           False\nChicago          False\nNew York         False\nPortland          True\nSan Francisco    False\ndtype: bool\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠71d2cd20-a96c-4343-9df8-bc89be4874de︡{"done":true}
cities[cities < 1000]
︡673b4e89-f508-4f5d-b1f4-321980b38a30︡{"stdout":"Austin      450.0\nPortland    900.0\ndtype: float64\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠9adf174e-edb7-47f9-a2dc-741f7b0174b4s︠
cities[cities < 1000] = 750
cities[cities < 1000]
print
cities
︡b4b3bbb4-9c70-417e-821e-d7801781f6d2︡{"stdout":"Austin      750.0\nPortland    750.0\ndtype: float64\n"}︡{"html":"<div align='center'></div>"}︡{"stdout":"\n"}︡{"stdout":"Austin            750.0\nBoston              NaN\nChicago          1000.0\nNew York         1300.0\nPortland          750.0\nSan Francisco    1100.0\ndtype: float64\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠e59b5739-098e-4dfb-bf2e-625eb89d3312s︠
"Austin" in cities
"Seattle" in cities
︡ed187ede-f282-4c18-aa0b-d810378f0d9e︡{"html":"<div align='center'>$\\displaystyle \\mathrm{True}$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{False}$</div>"}︡{"done":true}︡
︠35b83f30-6cfe-428b-a5d5-17a959bf7f55s︠
cities["Seattle"] = 200
print "Seattle" in cities
print
cities

︡572d0a34-6b59-4cf7-90ab-6b53032e42b5︡{"stdout":"True\n"}︡{"stdout":"\n"}︡{"stdout":"Austin            750.0\nBoston              NaN\nChicago          1000.0\nNew York         1300.0\nPortland          750.0\nSan Francisco    1100.0\nSeattle           200.0\ndtype: float64\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠cd7047eb-a840-4c24-8232-ded2190c028fi︠
%md
## Dataframes
︡79cec6cd-7420-44b8-be27-6e5566633541︡{"done":true,"md":"## Dataframes"}
︠dbae0f70-e55d-4996-8bd0-08c84fdb6c4es︠
data = {'year': [2010, 2011, 2012, 2011, 2012, 2010, 2011, 2012],
        'team': ['Bears', 'Bears', 'Bears', 'Packers', 'Packers', 'Lions', 'Lions', 'Lions'],
        'wins': [11, 8, 10, 15, 11, 6, 10, 4],
        'losses': [5, 8, 6, 1, 5, 10, 6, 12]}
football = pd.DataFrame(data, columns=['year', 'team', 'wins', 'losses'])
football
︡afd231e2-4fb1-4f13-8edd-1f1412da4c50︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>year</th>\n      <th>team</th>\n      <th>wins</th>\n      <th>losses</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>0</th>\n      <td>2010</td>\n      <td>Bears</td>\n      <td>11</td>\n      <td>5</td>\n    </tr>\n    <tr>\n      <th>1</th>\n      <td>2011</td>\n      <td>Bears</td>\n      <td>8</td>\n      <td>8</td>\n    </tr>\n    <tr>\n      <th>2</th>\n      <td>2012</td>\n      <td>Bears</td>\n      <td>10</td>\n      <td>6</td>\n    </tr>\n    <tr>\n      <th>3</th>\n      <td>2011</td>\n      <td>Packers</td>\n      <td>15</td>\n      <td>1</td>\n    </tr>\n    <tr>\n      <th>4</th>\n      <td>2012</td>\n      <td>Packers</td>\n      <td>11</td>\n      <td>5</td>\n    </tr>\n    <tr>\n      <th>5</th>\n      <td>2010</td>\n      <td>Lions</td>\n      <td>6</td>\n      <td>10</td>\n    </tr>\n    <tr>\n      <th>6</th>\n      <td>2011</td>\n      <td>Lions</td>\n      <td>10</td>\n      <td>6</td>\n    </tr>\n    <tr>\n      <th>7</th>\n      <td>2012</td>\n      <td>Lions</td>\n      <td>4</td>\n      <td>12</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠c44d9465-2a51-45fe-be68-f8dd088e90fcs︠

football.to_excel('football.xlsx', index=False)
︡e128ce95-2431-4070-81f5-08e20e3e076d︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 905, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/pandas/core/frame.py\", line 1414, in to_excel\n    excel_writer = ExcelWriter(excel_writer, engine=engine)\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/pandas/io/excel.py\", line 713, in __init__\n    if not openpyxl_compat.is_compat(major_ver=self.openpyxl_majorver):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/pandas/compat/openpyxl_compat.py\", line 27, in is_compat\n    import openpyxl\nImportError: No module named openpyxl\n"}︡{"done":true}︡
︠2d89b0d0-14a6-4f0c-acde-0d8e652b7c6es︠
url = 'https://raw.github.com/gjreda/best-sandwiches/master/data/best-sandwiches-geocode.tsv'

# fetch the text from the URL and read it into a DataFrame
from_url = pd.read_table(url, sep='\t')
from_url.head(3)
︡e5d591fc-ddba-49ac-869b-d071f2ab3da9︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>rank</th>\n      <th>sandwich</th>\n      <th>restaurant</th>\n      <th>description</th>\n      <th>price</th>\n      <th>address</th>\n      <th>city</th>\n      <th>phone</th>\n      <th>website</th>\n      <th>full_address</th>\n      <th>formatted_address</th>\n      <th>lat</th>\n      <th>lng</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>0</th>\n      <td>1</td>\n      <td>BLT</td>\n      <td>Old Oak Tap</td>\n      <td>The B is applewood smoked&amp;mdash;nice and snapp...</td>\n      <td>$10</td>\n      <td>2109 W. Chicago Ave.</td>\n      <td>Chicago</td>\n      <td>773-772-0406</td>\n      <td>theoldoaktap.com</td>\n      <td>2109 W. Chicago Ave., Chicago</td>\n      <td>2109 West Chicago Avenue, Chicago, IL 60622, USA</td>\n      <td>41.895734</td>\n      <td>-87.679960</td>\n    </tr>\n    <tr>\n      <th>1</th>\n      <td>2</td>\n      <td>Fried Bologna</td>\n      <td>Au Cheval</td>\n      <td>Thought your bologna-eating days had retired w...</td>\n      <td>$9</td>\n      <td>800 W. Randolph St.</td>\n      <td>Chicago</td>\n      <td>312-929-4580</td>\n      <td>aucheval.tumblr.com</td>\n      <td>800 W. Randolph St., Chicago</td>\n      <td>800 West Randolph Street, Chicago, IL 60607, USA</td>\n      <td>41.884672</td>\n      <td>-87.647754</td>\n    </tr>\n    <tr>\n      <th>2</th>\n      <td>3</td>\n      <td>Woodland Mushroom</td>\n      <td>Xoco</td>\n      <td>Leave it to Rick Bayless and crew to come up w...</td>\n      <td>$9.50.</td>\n      <td>445 N. Clark St.</td>\n      <td>Chicago</td>\n      <td>312-334-3688</td>\n      <td>rickbayless.com</td>\n      <td>445 N. Clark St., Chicago</td>\n      <td>445 North Clark Street, Chicago, IL 60654, USA</td>\n      <td>41.890602</td>\n      <td>-87.630925</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠c0f0b21f-b600-4ba4-b5e2-ca292cdc019a︠
︠2cbc9700-d027-463f-9b95-b18ebd90289b︠










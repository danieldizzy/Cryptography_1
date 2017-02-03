︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-05-11
### William Stein

## **Lectures 20: Pandas (part 2 of 3)**

<img src="http://news.nationalgeographic.com/content/dam/news/2015/12/15/pandas/01pandainsemination.adapt.768.1.jpg" class="pull-right" width=300>

Today:

1. Reminder: your homework and peer grading is due Friday at 6pm.  Update about peer grading guidelines.
2. Start the screencast.
3. More pandas...
  - getting data into SMC
  - Series
  - DataFrames


︡70e03e40-9a05-428f-83b3-b56d801d9744︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-05-11\n### William Stein\n\n## **Lectures 20: Pandas (part 2 of 3)**\n\n<img src=\"http://news.nationalgeographic.com/content/dam/news/2015/12/15/pandas/01pandainsemination.adapt.768.1.jpg\" class=\"pull-right\" width=300>\n\nToday:\n\n1. Reminder: your homework and peer grading is due Friday at 6pm.  Update about peer grading guidelines.\n2. Start the screencast.\n3. More pandas...\n  - getting data into SMC\n  - Series\n  - DataFrames"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8s︠
%auto
import pandas as pd
pd.__version__
import numpy as np
import matplotlib.pyplot as plt
import matplotlib
matplotlib.style.use('ggplot')
%default_mode python    # avoid Sage data types like Integer, which cause trouble (due to the Sage preparser).
%typeset_mode True
︡dc5adc11-bae6-4652-9d81-405e13fff5c4︡{"stdout":"u'0.18.1'\n"}︡{"done":true}︡
︠8b560d57-fa23-45ff-a946-3125dc346c3ei︠
%md
## 1. Getting data into SMC

<a href="https://www.google.com/about/datacenters/inside/locations/council-bluffs/" class="pull-right" ><img src="https://www.google.com/about/datacenters/images/locations/councilbluffs-home1.jpg" width=300>
<br>
Some deer at the Google data center<br>
in Iowa where SMC lives.
</a>

- WARNING: SMC has **absolutely no direct access** to the files on your laptop.  It is a remote computer account running in the cloud.  That said, if you use pandas/python, etc, on your own computer at some point, it will of course have direct access.   (Maybe do a live demo of `python get-pip.py` then `pip install --user pandas` on my mac laptop.)

- +New, paste the link into the box, click "Download from Internet".
- +New, drag and drop, upload a file (only up to 30MB right now).
- Use `wget` or `curl` from the terminal or in a %sh cell.
- Use `scp` or `rsync` (see project settings... SSH button) from your computer to the project.

︡e9666143-d30a-4467-a31f-a352335d97b0︡{"done":true,"md":"## 1. Getting data into SMC\n\n<a href=\"https://www.google.com/about/datacenters/inside/locations/council-bluffs/\" class=\"pull-right\" ><img src=\"https://www.google.com/about/datacenters/images/locations/councilbluffs-home1.jpg\" width=300>\n<br>\nSome deer at the Google data center<br>\nin Iowa where SMC lives.\n</a>\n\n- WARNING: SMC has **absolutely no direct access** to the files on your laptop.  It is a remote computer account running in the cloud.  That said, if you use pandas/python, etc, on your own computer at some point, it will of course have direct access.   (Maybe do a live demo of `python get-pip.py` then `pip install --user pandas` on my mac laptop.)\n\n- +New, paste the link into the box, click \"Download from Internet\".\n- +New, drag and drop, upload a file (only up to 30MB right now).\n- Use `wget` or `curl` from the terminal or in a %sh cell.\n- Use `scp` or `rsync` (see project settings... SSH button) from your computer to the project."}
︠469cd1c1-31bf-49ce-9a92-3f199146ed79i︠
%md
I've never mentioned `%sh` before -- it's just like the terminal but from
a worksheet.  As long as a command isn't interactive, it should work for you...
︡4c328f07-386b-4831-a789-61755c42eabf︡{"done":true,"md":"I've never mentioned `%sh` before -- it's just like the terminal but from\na worksheet.  As long as a command isn't interactive, it should work for you..."}
︠8781548b-1b8d-4477-9cd9-a93b073e8c7as︠
%sh
wget http://spatialkeydocs.s3.amazonaws.com/FL_insurance_sample.csv.zip
︡bca14f11-787e-4750-9548-b78b469bf605︡
︠de595a22-0217-4d12-82a8-cf65fb3c5f93s︠
%sh
ls
︡9f310e6d-f72c-474c-b783-7cab76ffed53︡
︠4b3664fc-5d72-4f75-9f99-540fe840f5a2s︠
%sh
unzip FL_insurance_sample.csv.zip
︡7d154547-f589-4936-a989-4e314d5c4bea︡
︠f964a924-81b7-402b-9810-117f2cb111e8s︠
df = pd.read_csv('FL_insurance_sample.csv')
df.head(10)
︡be942ac8-9bc5-4a52-a309-1550fab2b028︡
︠ff61a580-d869-460e-b366-52d236ce78e6s︠
df.describe()
︡228fa845-a2b0-42de-9053-48f8a84dea9f︡
︠6d8ee396-3292-4496-9546-9b6513c2f509i︠
%md

## `pd.Series`

http://pandas.pydata.org/pandas-docs/version/0.18.1/dsintro.html#series

---

- Datasets are built out of `pd.Series` objects, which are like a List of values, but with a specific type (like floating point number, integer, string, ...) and an index.  More precisely, a `pd.Series` is a "One-dimensional ndarray with axis labels"

- Larger `pd.DataFrame` objects are built out of several such series. Each of them is a column, must have the same length, and each column has a name.

**Examples:**

︡51ba28bb-4558-4e24-801f-ed2f5bbcbb93︡{"done":true,"md":"\n## `pd.Series`\n\nhttp://pandas.pydata.org/pandas-docs/version/0.18.1/dsintro.html#series\n\n---\n\n- Datasets are built out of `pd.Series` objects, which are like a List of values, but with a specific type (like floating point number, integer, string, ...) and an index.  More precisely, a `pd.Series` is a \"One-dimensional ndarray with axis labels\"\n\n- Larger `pd.DataFrame` objects are built out of several such series. Each of them is a column, must have the same length, and each column has a name.\n\n**Examples:**"}
︠63e2b410-b359-46ec-b384-c31be4a4ecd8s︠
names = pd.Series(["Bob", "Marlene", "Joe", "Jane"])
age   = pd.Series([55, 18, 71, 22])
︡5209e55d-9232-4c7c-9e88-b4073f7bbeb7︡{"done":true}︡
︠dcb7b818-9d2e-4abb-8b64-c1e3b6145032s︠
names
︡1583a984-8f24-4f47-bb68-64ffede585c1︡{"stdout":"0        Bob\n1    Marlene\n2        Joe\n3       Jane\ndtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠44c4ae9e-5e72-4dcf-a9b1-13799c4e4b34s︠
age
︡87ca4dc2-f447-49ae-9aaf-7cdd131660b8︡{"stdout":"0    55\n1    18\n2    71\n3    22\ndtype: int64\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠5c5dc93c-07e7-4864-9fef-6de400a0c7acs︠
s = pd.Series(['john', 'private', 389, 'nathan'], index=['name', 'rank', 'number', 'name'])
s
︡062680c6-4eb0-4826-ba17-d0193a32921a︡{"stdout":"name         john\nrank      private\nnumber        389\nname       nathan\ndtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠f03e1e22-7551-4a36-be2c-2e0f527a6ccas︠
s['rank']
︡d5b0bf52-27e3-465e-874e-50777921cd23︡{"html":"<div align='center'>private</div>"}︡{"done":true}︡
︠c52eaf75-a373-4a7e-9cc3-17a44384bf3bs︠
s['name']
︡1c783557-4774-4608-9c61-d063d57b3014︡{"stdout":"name      john\nname    nathan\ndtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠d95d2337-36e0-4346-a461-4b6819316edes︠
t = pd.Series([39, 'seargent'], index=['number', 'rank'])
s + t
︡aacb516a-bec4-4e8c-9764-8255cff3ee30︡{"stdout":"name                  NaN\nname                  NaN\nnumber                428\nrank      privateseargent\ndtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠f29ef141-09fa-4ea8-9d7f-79840a52b8ddis︠
%md Indexing...
︡534c57ca-9fa0-44fb-a37c-baf2113c4771︡{"hide":"input"}︡{"md":"Indexing..."}︡{"done":true}︡
︠f58ba0bc-c7f5-4769-b4ef-3686f3867924s︠
age
︡f07986fe-2e8d-4d01-9a8b-fc647b43277a︡{"stdout":"0    55\n1    18\n2    71\n3    22\ndtype: int64\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠8ec2a85f-fd71-4fef-9894-d32b99ee7010s︠
age[2]
︡6e8f68bd-27ac-4cbe-a919-1cc9c3eecc28︡{"html":"<div align='center'>$\\displaystyle 71$</div>"}︡{"done":true}︡
︠10e2c7e0-1bc4-4337-a578-8bb175cb8ac5s︠
age[1:-1]
︡b568e543-3c41-44ae-841f-6a1784335fd4︡{"stdout":"1    18\n2    71\ndtype: int64\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠a460549f-178a-4db5-a329-1e0c5326ed04s︠
age[age > 30]
︡784f6a15-6c3a-4245-8ef7-cabe4000bfe3︡{"stdout":"0    55\n2    71\ndtype: int64\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠2d886de8-e4cb-4574-af6f-ff1e7d261a87s︠
age[age > 30][age < 60]
︡55fee20f-e0ce-4868-8c83-eed6bd280227︡{"stdout":"0    55\ndtype: int64\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠89a8ec78-5083-4d1c-883b-ff4fbf54aece︠

︠7c1b1564-a513-4f85-8acc-88bbe02333f8i︠
%md
... so a pd.Series is much like a Python dict except you can do
arithmetic, there is an order, you can have the same
key multiple times, indexing is amazing.  And everything is super fast.
︡6ff99eb0-7db6-4382-a168-7088ca2cc17a︡{"done":true,"md":"... so a pd.Series is much like a Python dict except you can do\narithmetic, there is an order, you can have the same\nkey multiple times, indexing is amazing.  And everything is super fast."}
︠5ea98ba0-d2e6-4445-a88c-970ac6811adci︠
%md
**Exercise right now!:**
- Make a Python dict `d` of your choosing, then try doing `pd.Series(d)`.  It should work.
- Make up 3 different pd.Series objects with various choices of values and index.
- Try adding them together and see what happens.
︡f5f3e40b-b5ef-40c8-a27b-6fcd9becd54e︡{"done":true,"md":"**Exercise right now!:**\n- Make a Python dict `d` of your choosing, then try doing `pd.Series(d)`.  It should work.\n- Make up 3 different pd.Series objects with various choices of values and index.\n- Try adding them together and see what happens."}
︠55fef44d-1c2f-47b5-8171-68db227d4018︠

︠d9362b43-5b4a-42e2-b2d4-5ed18cd9ca73i︠
%md
<img src="nyt.png" width=500 class="pull-right" style="margin-left:50px">



I got this in a "spam" email from [Enthought](https://www.enthought.com/?utm_source=Enthought+Contacts&utm_campaign=0ca52d18bb-1605_Data_Import_Tool_Webinar_EU_5_10_205_10_2016&utm_medium=email&utm_term=0_906d1cd342-0ca52d18bb-422543997) today on [a course](http://blog.enthought.com/python/webinar-fast-forward-through-the-dirty-work-of-data-analysis-new-python-data-import-and-manipulation-tool-makes-short-work-of-data-munging-drudgery/#.VzNw_BUrKHo) they run about Pandas!

> "50 to 80 percent of time is spent wading through the tedium of the first two steps – acquiring and wrangling data – before even getting to the real work of analysis and insight." -- [New York Times](http://mobile.nytimes.com/2014/08/18/technology/for-big-data-scientists-hurdle-to-insights-is-janitor-work.html?_r=2&utm_source=Enthought+Contacts&utm_campaign=0ca52d18bb-1605_Data_Import_Tool_Webinar_EU_5_10_205_10_2016&utm_medium=email&utm_term=0_906d1cd342-0ca52d18bb-422543997)
︡9b7820f2-a8e2-4eb3-b256-74734fe8a1e0︡{"done":true,"md":"<img src=\"nyt.png\" width=500 class=\"pull-right\" style=\"margin-left:50px\">\n\n\n\nI got this in a \"spam\" email from [Enthought](https://www.enthought.com/?utm_source=Enthought+Contacts&utm_campaign=0ca52d18bb-1605_Data_Import_Tool_Webinar_EU_5_10_205_10_2016&utm_medium=email&utm_term=0_906d1cd342-0ca52d18bb-422543997) today on [a course](http://blog.enthought.com/python/webinar-fast-forward-through-the-dirty-work-of-data-analysis-new-python-data-import-and-manipulation-tool-makes-short-work-of-data-munging-drudgery/#.VzNw_BUrKHo) they run about Pandas!\n\n> \"50 to 80 percent of time is spent wading through the tedium of the first two steps – acquiring and wrangling data – before even getting to the real work of analysis and insight.\" -- [New York Times](http://mobile.nytimes.com/2014/08/18/technology/for-big-data-scientists-hurdle-to-insights-is-janitor-work.html?_r=2&utm_source=Enthought+Contacts&utm_campaign=0ca52d18bb-1605_Data_Import_Tool_Webinar_EU_5_10_205_10_2016&utm_medium=email&utm_term=0_906d1cd342-0ca52d18bb-422543997)"}
︠58d7de65-fe24-4dfb-becd-aca472b8a997i︠
%md
## `pd.DataFrame`

Documentation: http://pandas.pydata.org/pandas-docs/version/0.18.1/dsintro.html#dataframe

DataFrame = "a 2-dimensional labeled data structure with columns of potentially different types."

Think of it as:

- a spreadsheet, or
- a SQL table, or
- a dict of `pd.Series` objects.
︡c03b0920-f083-423b-8f08-09006eae9aa1︡{"done":true,"md":"## `pd.DataFrame`\n\nDocumentation: http://pandas.pydata.org/pandas-docs/version/0.18.1/dsintro.html#dataframe\n\nDataFrame = \"a 2-dimensional labeled data structure with columns of potentially different types.\"\n\nThink of it as:\n\n- a spreadsheet, or\n- a SQL table, or\n- a dict of `pd.Series` objects."}
︠c72697bd-679d-4776-9fe8-9a5e5af4dca3i︠
%md
Now, we build a `pd.DataFrame`:
︡f7d17d4b-4259-4466-9039-844f78eba5f6︡{"done":true,"md":"Now, we build a `pd.DataFrame`:"}
︠3d05e081-c8d7-41b3-8103-5c854aad3368s︠

names = pd.Series(["William", "Marlene", "Jon", "Jane"])
age   = pd.Series([42, 68, 19, 22])

# We are literally making this data frame from a dictionary of series objects!
# (This gives us no control over the order of the columns though...)
people = pd.DataFrame({"name": names, "age":  age})
people
︡f7a7c450-c490-4b7f-b75e-fe932185fb15︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>age</th>\n      <th>name</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>0</th>\n      <td>42</td>\n      <td>William</td>\n    </tr>\n    <tr>\n      <th>1</th>\n      <td>68</td>\n      <td>Marlene</td>\n    </tr>\n    <tr>\n      <th>2</th>\n      <td>19</td>\n      <td>Jon</td>\n    </tr>\n    <tr>\n      <th>3</th>\n      <td>22</td>\n      <td>Jane</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠7342b458-2514-4130-ae79-866300452e84s︠
# Excplicit control of column order:
pd.DataFrame({"name": names, "age":  age}, columns=['name', 'age'])
︡4c3268e1-cda2-497b-a51c-5d48fbd9b839︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>name</th>\n      <th>age</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>0</th>\n      <td>William</td>\n      <td>42</td>\n    </tr>\n    <tr>\n      <th>1</th>\n      <td>Marlene</td>\n      <td>68</td>\n    </tr>\n    <tr>\n      <th>2</th>\n      <td>Jon</td>\n      <td>19</td>\n    </tr>\n    <tr>\n      <th>3</th>\n      <td>Jane</td>\n      <td>22</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠b533e73b-21a3-4bde-b2aa-5a59d4fd4ccbi︠
%md
The bold numbers or values on the left are called the "index".

The index is used to uniquely identify a row.

**Use people.ix[i] to get the row with given index!**

This isn't obvious.  You just have to memorize it.  Learn it now.
︡d65b821b-7f56-4e06-91dc-5323b7adb04f︡{"done":true,"md":"The bold numbers or values on the left are called the \"index\".\n\nThe index is used to uniquely identify a row.\n\n**Use people.ix[i] to get the row with given index!**\n\nThis isn't obvious.  You just have to memorize it.  Learn it now."}
︠1c2c2b48-1bc5-4bb6-8922-ddbbd643a5a8s︠
# get the row with index "1" -- which
people.ix[1]
︡26c7ee2b-87bf-406a-b24d-a3c8e34bdd95︡{"stdout":"age          68\nname    Marlene\nName: 1, dtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠3946f9d5-1cff-4887-aa0e-d403cf0c75cei︠
%md
Of course, the rows don't have to be indexed by numbers -- anything hashable is allowed.
︡d0c35bbc-6ff7-4678-b1bf-1b8c22920e29︡{"done":true,"md":"Of course, the rows don't have to be indexed by numbers -- anything hashable is allowed."}
︠3377f166-2f21-4387-9c91-5033b76bc137s︠
d = pd.DataFrame({'col1':{'name':'william', 'rank':'private'},
                  'col2':{'name':'jon', 'rank':'general', 'ser':5077}})
d
︡b50d8032-d731-4a80-9a12-009a9d3e2148︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>col1</th>\n      <th>col2</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>name</th>\n      <td>william</td>\n      <td>jon</td>\n    </tr>\n    <tr>\n      <th>rank</th>\n      <td>private</td>\n      <td>general</td>\n    </tr>\n    <tr>\n      <th>ser</th>\n      <td>NaN</td>\n      <td>5077</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠ef7ff71a-1fbb-4232-9c43-3383f9ace225s︠
d.ix['rank']
︡63024215-0ff2-426b-bf15-85719c9d708f︡{"stdout":"col1    private\ncol2    general\nName: rank, dtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠9270636a-05d8-41b2-b03d-6d984b8cf8c6︠
d.ix['ser']
︡cf7eba54-eddd-440c-b471-2464fcc0ff82︡{"stdout":"col1     NaN\ncol2    5077\nName: ser, dtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠cbc63eca-e14c-4fe8-9e45-674e0eecfa50i︠
%md
** Exercise right now!**
Make a data frame for which there are two rows with the same index i, showing
that the index **need not be unique**!  [Hint: we made such a series above]

What happens when you type `d.ix[i]`?

︡ddf83908-df8c-4b7a-8be7-35b75084aeda︡{"done":true,"md":"** Exercise right now!**\nMake a data frame for which there are two rows with the same index i, showing\nthat the index **need not be unique**!  [Hint: we made such a series above]\n\nWhat happens when you type `d.ix[i]`?"}
︠db224f23-36ba-4788-b574-86faa9417400︠

︠ce38cd3c-2f72-406a-b456-d3450536992f︠

︠44542d09-b5b5-4b26-a463-c31d4b605538i︠
%md

NOTE: Besides `.ix`, there are also other properties for various purposes. Read more about them here:

* `.ix`, `.loc`, `.iloc`: http://pandas.pydata.org/pandas-docs/stable/indexing.html#different-choices-for-indexing

︡ede21d00-d4c5-49d8-80cf-ab748af626b3︡{"done":true,"md":"\nNOTE: Besides `.ix`, there are also other properties for various purposes. Read more about them here:\n\n* `.ix`, `.loc`, `.iloc`: http://pandas.pydata.org/pandas-docs/stable/indexing.html#different-choices-for-indexing"}
︠21c7d161-7036-4a68-9faf-13cb76bfe356s︠
d = pd.DataFrame({'col1':{'name':'william', 'rank':'private'},
                  'col2':{'name':'jon', 'rank':'general', 'ser':5077}})
d
︡5385c5ad-3337-41a1-8798-43734c474195︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>col1</th>\n      <th>col2</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>name</th>\n      <td>william</td>\n      <td>jon</td>\n    </tr>\n    <tr>\n      <th>rank</th>\n      <td>private</td>\n      <td>general</td>\n    </tr>\n    <tr>\n      <th>ser</th>\n      <td>NaN</td>\n      <td>5077</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠980b6a28-ee44-4b73-a0bb-aebeafb0e6d8s︠
d.loc[['name', 'rank']]
︡f63b91f9-ca90-49e8-8af4-76edd88b6b3f︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>col1</th>\n      <th>col2</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>name</th>\n      <td>william</td>\n      <td>jon</td>\n    </tr>\n    <tr>\n      <th>rank</th>\n      <td>private</td>\n      <td>general</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠99402c18-7ad7-45ef-9251-1c3090ce2c81s︠
d.iloc[1]
︡cacb097c-9a93-4710-a99a-4ee2d48a1642︡{"stdout":"col1    private\ncol2    general\nName: rank, dtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠139c9b99-c078-41c9-b7ea-91eefa27d65bs︠
d.iloc[0]
︡fd02a3ba-81f6-4cda-871c-153baa6c2a32︡{"stdout":"col1    william\ncol2        jon\nName: name, dtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠06c83304-5dd2-426d-8d0e-589ce9f23885s︠
d.iloc[-1]
︡c417642b-d740-4d79-84a8-24e914fd92c1︡{"stdout":"col1     NaN\ncol2    5077\nName: ser, dtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠4a51c9ab-f939-4eb7-8c98-89516643f110si︠
%md
### Question: How to get all rows starting from index 1 up to the end?

Answer: slicing.
︡ff414e46-ab34-4eea-a47e-12799079169a︡{"done":true,"md":"### Question: How to get all rows starting from index 1 up to the end?\n\nAnswer: slicing."}
︠192ebc97-1e2a-437e-a1b6-c4d6d36440d5s︠
people = pd.DataFrame({"name": names, "age":  age})
people
︡d49233fc-21b4-4dcd-8d9b-d553c18e0a89︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>age</th>\n      <th>name</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>0</th>\n      <td>42</td>\n      <td>William</td>\n    </tr>\n    <tr>\n      <th>1</th>\n      <td>68</td>\n      <td>Marlene</td>\n    </tr>\n    <tr>\n      <th>2</th>\n      <td>19</td>\n      <td>Jon</td>\n    </tr>\n    <tr>\n      <th>3</th>\n      <td>22</td>\n      <td>Jane</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠0c10ce06-487c-4025-9519-70d462eb4194s︠
people[:2]
︡11c8b0f2-13c4-48a8-a61f-84036d328e0d︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>age</th>\n      <th>name</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>0</th>\n      <td>42</td>\n      <td>William</td>\n    </tr>\n    <tr>\n      <th>1</th>\n      <td>68</td>\n      <td>Marlene</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠a1053369-4054-4ba2-9d9f-ece1e26670f8s︠
people[1:3]
︡5df0b9f1-6427-4e88-aa53-22414a27ceeb︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>age</th>\n      <th>name</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>1</th>\n      <td>68</td>\n      <td>Marlene</td>\n    </tr>\n    <tr>\n      <th>2</th>\n      <td>19</td>\n      <td>Jon</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠b345ac3a-2fd9-451d-b198-1c896c5a573bs︠
people[::2]
︡a17c0e41-da21-485f-b7af-e831f722022a︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>age</th>\n      <th>name</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>0</th>\n      <td>42</td>\n      <td>William</td>\n    </tr>\n    <tr>\n      <th>2</th>\n      <td>19</td>\n      <td>Jon</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠67ed5a29-18f3-4fe5-b390-18c0f76235e9i︠
%md
## CSV

CSV is a very simple column-oriented data format, where a text file contains rows and a comma is a delimiter for the columns.

[see animals.csv](animals.csv)

The first row contains the header, describing the columns.

Pandas then imports this file via `pd.read_csv()` (the argument of this function could not only be a filename, but also a URL link 'http://...' pointint to a csv file)
︡94857e37-80b6-4859-8028-674211b4cc09︡{"done":true,"md":"## CSV\n\nCSV is a very simple column-oriented data format, where a text file contains rows and a comma is a delimiter for the columns.\n\n[see animals.csv](animals.csv)\n\nThe first row contains the header, describing the columns.\n\nPandas then imports this file via `pd.read_csv()` (the argument of this function could not only be a filename, but also a URL link 'http://...' pointint to a csv file)"}
︠bf6aa821-f7b2-4f4c-bd94-e60cadb6255es︠
open("animals.csv",'w').write(
"""name,type,tail,legs,age,color
joe,elephant,Y,4,16,gray
tim,dog,Y,4,7,golden
susan,cat,Y,4,4,black
frank,fish,N,0,1,green
olivia,spider,N,6,.5,black
minki,cat,Y,4,6,white""")
︡ab1230f9-767f-4218-8c77-ffd2497275d6︡{"done":true}︡
︠eea5483a-c993-4b73-b5d3-19d81b32916bs︠
%sh
cat animals.csv
︡8111c48e-0d37-4119-9872-471eb3ce0ee4︡{"stdout":"name,type,tail,legs,age,color\njoe,elephant,Y,4,16,gray\ntim,dog,Y,4,7,golden\nsusan,cat,Y,4,4,black\nfrank,fish,N,0,1,green\nolivia,spider,N,6,.5,black\nminki,cat,Y,4,6,white"}︡{"done":true}
︠cdbe496f-5e32-4e3a-a710-92180a31a0e3s︠
animals = pd.read_csv("animals.csv")
animals
︡35437224-b67b-4511-8112-c871eec49569︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>name</th>\n      <th>type</th>\n      <th>tail</th>\n      <th>legs</th>\n      <th>age</th>\n      <th>color</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>0</th>\n      <td>joe</td>\n      <td>elephant</td>\n      <td>Y</td>\n      <td>4</td>\n      <td>16.0</td>\n      <td>gray</td>\n    </tr>\n    <tr>\n      <th>1</th>\n      <td>tim</td>\n      <td>dog</td>\n      <td>Y</td>\n      <td>4</td>\n      <td>7.0</td>\n      <td>golden</td>\n    </tr>\n    <tr>\n      <th>2</th>\n      <td>susan</td>\n      <td>cat</td>\n      <td>Y</td>\n      <td>4</td>\n      <td>4.0</td>\n      <td>black</td>\n    </tr>\n    <tr>\n      <th>3</th>\n      <td>frank</td>\n      <td>fish</td>\n      <td>N</td>\n      <td>0</td>\n      <td>1.0</td>\n      <td>green</td>\n    </tr>\n    <tr>\n      <th>4</th>\n      <td>olivia</td>\n      <td>spider</td>\n      <td>N</td>\n      <td>6</td>\n      <td>0.5</td>\n      <td>black</td>\n    </tr>\n    <tr>\n      <th>5</th>\n      <td>minki</td>\n      <td>cat</td>\n      <td>Y</td>\n      <td>4</td>\n      <td>6.0</td>\n      <td>white</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠ced40a18-82c4-4410-afb5-2264d385a9a3︠
# access columns
animals.name
︡6bdf37c4-d2f4-479f-ac89-52832a322fed︡{"stdout":"0       joe\n1       tim\n2     susan\n3     frank\n4    olivia\n5     minki\nName: name, dtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠22af5c58-dc93-4673-8b40-76f9910796f3i︠
%md

The power of Pandas is, that you can start asking questions about this data, filter it, compare it with other datasets, or even picture it in a plot very easily.
︡53629e69-09aa-4cb9-b571-1c7d03349e8a︡{"done":true,"md":"\nThe power of Pandas is, that you can start asking questions about this data, filter it, compare it with other datasets, or even picture it in a plot very easily."}
︠fd0c5e82-78fb-49fa-9a11-cee1f3e6b7f4s︠
animals.describe()
︡dd2311ab-324f-463e-91f5-a9af90604100︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>legs</th>\n      <th>age</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>count</th>\n      <td>6.000000</td>\n      <td>6.000000</td>\n    </tr>\n    <tr>\n      <th>mean</th>\n      <td>3.666667</td>\n      <td>5.750000</td>\n    </tr>\n    <tr>\n      <th>std</th>\n      <td>1.966384</td>\n      <td>5.654644</td>\n    </tr>\n    <tr>\n      <th>min</th>\n      <td>0.000000</td>\n      <td>0.500000</td>\n    </tr>\n    <tr>\n      <th>25%</th>\n      <td>4.000000</td>\n      <td>1.750000</td>\n    </tr>\n    <tr>\n      <th>50%</th>\n      <td>4.000000</td>\n      <td>5.000000</td>\n    </tr>\n    <tr>\n      <th>75%</th>\n      <td>4.000000</td>\n      <td>6.750000</td>\n    </tr>\n    <tr>\n      <th>max</th>\n      <td>6.000000</td>\n      <td>16.000000</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠f61ceff0-81e0-463d-b36d-df302bfae8f2︠
# average age?
animals.age.mean()
︡5a2af398-482a-4f34-b10b-3c61e5f14862︡{"html":"<div align='center'>$\\displaystyle 5.75$</div>"}︡{"done":true}︡
︠3d4d8a8c-bd93-4459-b485-4a6d3bcd5eefs︠
# which ones are younger than 6?
animals[animals.age < 6]
︡94b87829-5658-47b5-9cd0-8daf3a0a97e4︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>name</th>\n      <th>type</th>\n      <th>tail</th>\n      <th>legs</th>\n      <th>age</th>\n      <th>color</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>2</th>\n      <td>susan</td>\n      <td>cat</td>\n      <td>Y</td>\n      <td>4</td>\n      <td>4.0</td>\n      <td>black</td>\n    </tr>\n    <tr>\n      <th>3</th>\n      <td>frank</td>\n      <td>fish</td>\n      <td>N</td>\n      <td>0</td>\n      <td>1.0</td>\n      <td>green</td>\n    </tr>\n    <tr>\n      <th>4</th>\n      <td>olivia</td>\n      <td>spider</td>\n      <td>N</td>\n      <td>6</td>\n      <td>0.5</td>\n      <td>black</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠e3d0c5bc-b9f0-4e4b-b1b3-19688b9679d1s︠
animals.ix[animals.legs == 4]
︡92276ea6-951b-4166-b5b4-1d09604d33df︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>name</th>\n      <th>type</th>\n      <th>tail</th>\n      <th>legs</th>\n      <th>age</th>\n      <th>color</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>0</th>\n      <td>joe</td>\n      <td>elephant</td>\n      <td>Y</td>\n      <td>4</td>\n      <td>16.0</td>\n      <td>gray</td>\n    </tr>\n    <tr>\n      <th>1</th>\n      <td>tim</td>\n      <td>dog</td>\n      <td>Y</td>\n      <td>4</td>\n      <td>7.0</td>\n      <td>golden</td>\n    </tr>\n    <tr>\n      <th>2</th>\n      <td>susan</td>\n      <td>cat</td>\n      <td>Y</td>\n      <td>4</td>\n      <td>4.0</td>\n      <td>black</td>\n    </tr>\n    <tr>\n      <th>5</th>\n      <td>minki</td>\n      <td>cat</td>\n      <td>Y</td>\n      <td>4</td>\n      <td>6.0</td>\n      <td>white</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠1cd7d133-39d4-4a07-9bd3-0e36e7ab9411is︠
%md Question: which animal(s) has/have the largest number of legs?
︡879052c6-abb7-4b36-be0f-1bf64d44129c︡{"hide":"input"}︡{"md":"Question: which animal(s) has/have the largest number of legs?"}︡{"done":true}
︠625bc261-8621-4daf-995b-8a4c005d5d8cs︠
animals.name.ix[animals.legs == animals.legs.max()]
︡f386da26-1673-4364-94bd-48b3fbc69f72︡{"stdout":"4    olivia\nName: name, dtype: object\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠c21667bb-6d13-4359-ab9e-5d99755d0db0s︠
animals.legs
︡ac70d21e-38c6-4de9-b4bd-c786b015e0b8︡{"stdout":"0    4\n1    4\n2    4\n3    0\n4    6\n5    4\nName: legs, dtype: int64\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠5357547d-1a26-4324-9dbb-eedbeca713b6s︠
animals.legs.plot.hist()
︡aa58d477-5e6a-4a58-835d-b650d36aa137︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/21707/tmp_jS0fvj.svg","show":true,"text":null,"uuid":"ff45e959-9f38-4595-aefa-98520e1492ea"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠a4fc9b32-cab6-4b71-ad4e-115b3ce93699i︠
%md

## Plotting

In a related library "statsmodels", there are also various datasets included. Try plotting one of them (where it makes sense)
︡b3b0585c-1ffb-4fc5-993f-65a3eb87099d︡{"done":true,"md":"\n## Plotting\n\nIn a related library \"statsmodels\", there are also various datasets included. Try plotting one of them (where it makes sense)"}
︠a3635010-810e-4318-89c4-8ada3cd72a57s︠
%auto
from statsmodels import datasets
︡c5b18dca-7b29-4938-bec1-237a4a75f767︡{"done":true}
︠b3d17730-848d-4da2-967b-749de86d3984s︠
x = datasets.statecrime
d = x.load_pandas().data # accesses the pandas dataframe
d.head(10) # .head or .tail give you the n-th rows at top or at the bottom
︡ac9d9bd5-2c07-44bb-abbb-0259c1f85ca7︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>violent</th>\n      <th>murder</th>\n      <th>hs_grad</th>\n      <th>poverty</th>\n      <th>single</th>\n      <th>white</th>\n      <th>urban</th>\n    </tr>\n    <tr>\n      <th>state</th>\n      <th></th>\n      <th></th>\n      <th></th>\n      <th></th>\n      <th></th>\n      <th></th>\n      <th></th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>Alabama</th>\n      <td>459.9</td>\n      <td>7.1</td>\n      <td>82.1</td>\n      <td>17.5</td>\n      <td>29.0</td>\n      <td>70.0</td>\n      <td>48.65</td>\n    </tr>\n    <tr>\n      <th>Alaska</th>\n      <td>632.6</td>\n      <td>3.2</td>\n      <td>91.4</td>\n      <td>9.0</td>\n      <td>25.5</td>\n      <td>68.3</td>\n      <td>44.46</td>\n    </tr>\n    <tr>\n      <th>Arizona</th>\n      <td>423.2</td>\n      <td>5.5</td>\n      <td>84.2</td>\n      <td>16.5</td>\n      <td>25.7</td>\n      <td>80.0</td>\n      <td>80.07</td>\n    </tr>\n    <tr>\n      <th>Arkansas</th>\n      <td>530.3</td>\n      <td>6.3</td>\n      <td>82.4</td>\n      <td>18.8</td>\n      <td>26.3</td>\n      <td>78.4</td>\n      <td>39.54</td>\n    </tr>\n    <tr>\n      <th>California</th>\n      <td>473.4</td>\n      <td>5.4</td>\n      <td>80.6</td>\n      <td>14.2</td>\n      <td>27.8</td>\n      <td>62.7</td>\n      <td>89.73</td>\n    </tr>\n    <tr>\n      <th>Colorado</th>\n      <td>340.9</td>\n      <td>3.2</td>\n      <td>89.3</td>\n      <td>12.9</td>\n      <td>21.4</td>\n      <td>84.6</td>\n      <td>76.86</td>\n    </tr>\n    <tr>\n      <th>Connecticut</th>\n      <td>300.5</td>\n      <td>3.0</td>\n      <td>88.6</td>\n      <td>9.4</td>\n      <td>25.0</td>\n      <td>79.1</td>\n      <td>84.83</td>\n    </tr>\n    <tr>\n      <th>Delaware</th>\n      <td>645.1</td>\n      <td>4.6</td>\n      <td>87.4</td>\n      <td>10.8</td>\n      <td>27.6</td>\n      <td>71.9</td>\n      <td>68.71</td>\n    </tr>\n    <tr>\n      <th>District of Columbia</th>\n      <td>1348.9</td>\n      <td>24.2</td>\n      <td>87.1</td>\n      <td>18.4</td>\n      <td>48.0</td>\n      <td>38.7</td>\n      <td>100.00</td>\n    </tr>\n    <tr>\n      <th>Florida</th>\n      <td>612.6</td>\n      <td>5.5</td>\n      <td>85.3</td>\n      <td>14.9</td>\n      <td>26.6</td>\n      <td>76.9</td>\n      <td>87.44</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠f6ed8a9f-061a-4403-88ad-463712f8de76s︠
d.violent.plot.hist()
︡ec366cfa-7d8f-4a82-9968-ba3e1c0deee5︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/21707/tmp_E2eHRo.svg","show":true,"text":null,"uuid":"7235f59d-4ae3-4968-9748-bbdf2f5f2972"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠6e872bf5-ba03-471a-953d-10dbb63cd95c










︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-05-09
### William Stein

## **Lectures 19: Pandas (part 1 of 3)**



︡70e03e40-9a05-428f-83b3-b56d801d9744︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-05-09\n### William Stein\n\n## **Lectures 19: Pandas (part 1 of 3)**"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md

## Notes:

- Homework (and grading that is due this friday at 6pm) is assigned
- Screencast...
- We will talk about Pandas this week, then statsmodels and numpy/scipy starting next week (rather than wait until the end).
- Pandas - overview
- Pandas foundations ("in 10 minutes")
- Start on your homework
︡1a0bc88e-bb4a-410a-bdc5-d34a0de26702︡{"done":true,"md":"\n## Notes:\n\n- Homework (and grading that is due this friday at 6pm) is assigned\n- Screencast...\n- We will talk about Pandas this week, then statsmodels and numpy/scipy starting next week (rather than wait until the end).\n- Pandas - overview\n- Pandas foundations (\"in 10 minutes\")\n- Start on your homework"}
︠f00f53d1-c921-48a9-bd09-8c28e7182744i︠
%md
## Pandas Overview

> "[pandas](http://pandas.pydata.org/) is an open source, BSD-licensed library providing high-performance, easy-to-use data structures and data analysis tools for the Python programming language."

- Problem pandas solves: data analysis and modeling.   pandas enables you to carry out your entire data analysis workflow in Python without having to switch to a more domain specific language like R.

- Pandas does not implement significant modeling functionality outside of linear and panel regression. Instead one uses [statsmodels](http://statsmodels.sourceforge.net/) ("estimate statistical models, and perform statistical tests") and [scikit-learn](http://scikit-learn.org/stable/) ("Machine Learning in Python"), which we will look at next week.

- Look at the overview of functionality at the bottom here: http://pandas.pydata.org/#library-highlights
︡b4530f26-e2ff-4042-8a15-8fd4921e84b7︡{"done":true,"md":"## Pandas Overview\n\n> \"[pandas](http://pandas.pydata.org/) is an open source, BSD-licensed library providing high-performance, easy-to-use data structures and data analysis tools for the Python programming language.\"\n\n- Problem pandas solves: data analysis and modeling.   pandas enables you to carry out your entire data analysis workflow in Python without having to switch to a more domain specific language like R.\n\n- Pandas does not implement significant modeling functionality outside of linear and panel regression. Instead one uses [statsmodels](http://statsmodels.sourceforge.net/) (\"estimate statistical models, and perform statistical tests\") and [scikit-learn](http://scikit-learn.org/stable/) (\"Machine Learning in Python\"), which we will look at next week.\n\n- Look at the overview of functionality at the bottom here: http://pandas.pydata.org/#library-highlights"}
︠1052c117-2547-4b23-9f77-8c8e0f179cb4i︠
%md

Next, let's see some very basic foundations, before you try it out...

- Look at the very beginning of ten-minutes-to-pandas.sagews in same directory.
- Look at the beginning of plotting.sagews in same directory.
- Wednesday: pandas101 data example
︡b3218c56-7d33-470e-b06e-6e2f98378cfd︡{"done":true,"md":"\nNext, let's see some very basic foundations, before you try it out...\n\n- Look at the very beginning of ten-minutes-to-pandas.sagews in same directory.\n- Look at the beginning of plotting.sagews in same directory.\n- Wednesday: pandas101 data example"}
︠cbbc5a55-ba37-4429-a7a1-9e4e34b3c36c︠










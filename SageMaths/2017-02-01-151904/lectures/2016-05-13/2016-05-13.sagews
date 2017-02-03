︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-05-13
### William Stein

## **Lectures 21: Stats (part 3 of 3) **

Announcements:

- Homework due at 6pm tonight.

- Peer grading deadline extended until 6pm on Monday evening.

- Next week: numpy

- Today:
  - statsmodels
  - scikit-learn
  - working session/QA.

- REMIND ME: screencast

- Here's a [slideshow about the "data analysis and statistics in python"](http://www.slideshare.net/wesm/data-analysis-and-statistics-in-python-using-pandas-and-statsmodels), or why Python is (quickly getting) better than R.

︡70e03e40-9a05-428f-83b3-b56d801d9744︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-05-13\n### William Stein\n\n## **Lectures 21: Stats (part 3 of 3) **\n\nAnnouncements:\n\n- Homework due at 6pm tonight.\n\n- Peer grading deadline extended until 6pm on Monday evening.\n\n- Next week: numpy\n\n- Today:\n  - statsmodels\n  - scikit-learn\n  - working session/QA.\n\n- REMIND ME: screencast\n\n- Here's a [slideshow about the \"data analysis and statistics in python\"](http://www.slideshare.net/wesm/data-analysis-and-statistics-in-python-using-pandas-and-statsmodels), or why Python is (quickly getting) better than R."}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md
## [statsmodels](http://statsmodels.sourceforge.net/)

> "Python module that allows users to explore data, estimate statistical models, and perform statistical tests."

Documentation: http://statsmodels.sourceforge.net/stable/

︡c6edf16f-960c-442e-a15d-33fb3328227e︡{"done":true,"md":"## [statsmodels](http://statsmodels.sourceforge.net/)\n\n> \"Python module that allows users to explore data, estimate statistical models, and perform statistical tests.\"\n\nDocumentation: http://statsmodels.sourceforge.net/stable/"}
︠811b6b94-bd5c-4de1-9181-f7bf72043916s︠
%auto
%default_mode python
%typeset_mode True
import statsmodels.api as sm
import pandas
from patsy import dmatrices
︡00a33646-7517-44af-9ac1-3e4f9e46bbe9︡{"done":true}︡
︠cf7f135d-6520-461b-8ceb-69c6fd67a8c0i︠
%md
## 1. The statsmodels ["Getting started" tutorial](http://statsmodels.sourceforge.net/stable/gettingstarted.html)!

> We download the Guerry dataset, a collection of historical data used in support of Andre-Michel Guerry’s 1833 Essay on the Moral Statistics of France. The data set is hosted online in comma-separated values format (CSV) by the Rdatasets repository. We could download the file locally and then load it using read_csv, but pandas takes care of all of this automatically for us:
︡57c90e04-a83f-49d8-b7ac-986c74e0ff63︡{"done":true,"md":"## 1. The statsmodels [\"Getting started\" tutorial](http://statsmodels.sourceforge.net/stable/gettingstarted.html)!\n\n> We download the Guerry dataset, a collection of historical data used in support of Andre-Michel Guerry’s 1833 Essay on the Moral Statistics of France. The data set is hosted online in comma-separated values format (CSV) by the Rdatasets repository. We could download the file locally and then load it using read_csv, but pandas takes care of all of this automatically for us:"}
︠339df9e8-44d1-4550-9e20-ab5edc21c0c6s︠
df = sm.datasets.get_rdataset("Guerry", "HistData").data   # this is a familiar Pandas dataframe
df.head()
︡c8aadff1-e649-44aa-bb48-bf12fb064f12︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>dept</th>\n      <th>Region</th>\n      <th>Department</th>\n      <th>Crime_pers</th>\n      <th>Crime_prop</th>\n      <th>Literacy</th>\n      <th>Donations</th>\n      <th>Infants</th>\n      <th>Suicides</th>\n      <th>MainCity</th>\n      <th>Wealth</th>\n      <th>Commerce</th>\n      <th>Clergy</th>\n      <th>Crime_parents</th>\n      <th>Infanticide</th>\n      <th>Donation_clergy</th>\n      <th>Lottery</th>\n      <th>Desertion</th>\n      <th>Instruction</th>\n      <th>Prostitutes</th>\n      <th>Distance</th>\n      <th>Area</th>\n      <th>Pop1831</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>0</th>\n      <td>1</td>\n      <td>E</td>\n      <td>Ain</td>\n      <td>28870</td>\n      <td>15890</td>\n      <td>37</td>\n      <td>5098</td>\n      <td>33120</td>\n      <td>35039</td>\n      <td>2:Med</td>\n      <td>73</td>\n      <td>58</td>\n      <td>11</td>\n      <td>71</td>\n      <td>60</td>\n      <td>69</td>\n      <td>41</td>\n      <td>55</td>\n      <td>46</td>\n      <td>13</td>\n      <td>218.372</td>\n      <td>5762</td>\n      <td>346.03</td>\n    </tr>\n    <tr>\n      <th>1</th>\n      <td>2</td>\n      <td>N</td>\n      <td>Aisne</td>\n      <td>26226</td>\n      <td>5521</td>\n      <td>51</td>\n      <td>8901</td>\n      <td>14572</td>\n      <td>12831</td>\n      <td>2:Med</td>\n      <td>22</td>\n      <td>10</td>\n      <td>82</td>\n      <td>4</td>\n      <td>82</td>\n      <td>36</td>\n      <td>38</td>\n      <td>82</td>\n      <td>24</td>\n      <td>327</td>\n      <td>65.945</td>\n      <td>7369</td>\n      <td>513.00</td>\n    </tr>\n    <tr>\n      <th>2</th>\n      <td>3</td>\n      <td>C</td>\n      <td>Allier</td>\n      <td>26747</td>\n      <td>7925</td>\n      <td>13</td>\n      <td>10973</td>\n      <td>17044</td>\n      <td>114121</td>\n      <td>2:Med</td>\n      <td>61</td>\n      <td>66</td>\n      <td>68</td>\n      <td>46</td>\n      <td>42</td>\n      <td>76</td>\n      <td>66</td>\n      <td>16</td>\n      <td>85</td>\n      <td>34</td>\n      <td>161.927</td>\n      <td>7340</td>\n      <td>298.26</td>\n    </tr>\n    <tr>\n      <th>3</th>\n      <td>4</td>\n      <td>E</td>\n      <td>Basses-Alpes</td>\n      <td>12935</td>\n      <td>7289</td>\n      <td>46</td>\n      <td>2733</td>\n      <td>23018</td>\n      <td>14238</td>\n      <td>1:Sm</td>\n      <td>76</td>\n      <td>49</td>\n      <td>5</td>\n      <td>70</td>\n      <td>12</td>\n      <td>37</td>\n      <td>80</td>\n      <td>32</td>\n      <td>29</td>\n      <td>2</td>\n      <td>351.399</td>\n      <td>6925</td>\n      <td>155.90</td>\n    </tr>\n    <tr>\n      <th>4</th>\n      <td>5</td>\n      <td>E</td>\n      <td>Hautes-Alpes</td>\n      <td>17488</td>\n      <td>8174</td>\n      <td>69</td>\n      <td>6962</td>\n      <td>23076</td>\n      <td>16171</td>\n      <td>1:Sm</td>\n      <td>83</td>\n      <td>65</td>\n      <td>10</td>\n      <td>22</td>\n      <td>23</td>\n      <td>64</td>\n      <td>79</td>\n      <td>35</td>\n      <td>7</td>\n      <td>1</td>\n      <td>320.280</td>\n      <td>5549</td>\n      <td>129.10</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠628b557f-48b3-4682-bbb9-43b2a00903b6i︠
%md
> We select the variables of interest and look at the bottom 5 rows:
︡7251180a-8274-4116-aee7-422c7c247717︡{"done":true,"md":"> We select the variables of interest and look at the bottom 5 rows:"}
︠bf5e1940-27b1-476d-8a99-a1a9f4603afbs︠
df = df[ ['Department', 'Lottery', 'Literacy', 'Wealth', 'Region'] ]
df.tail(5)
︡39252833-59aa-49bc-88ec-c6bb42d68664︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>Department</th>\n      <th>Lottery</th>\n      <th>Literacy</th>\n      <th>Wealth</th>\n      <th>Region</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>81</th>\n      <td>Vienne</td>\n      <td>40</td>\n      <td>25</td>\n      <td>68</td>\n      <td>W</td>\n    </tr>\n    <tr>\n      <th>82</th>\n      <td>Haute-Vienne</td>\n      <td>55</td>\n      <td>13</td>\n      <td>67</td>\n      <td>C</td>\n    </tr>\n    <tr>\n      <th>83</th>\n      <td>Vosges</td>\n      <td>14</td>\n      <td>62</td>\n      <td>82</td>\n      <td>E</td>\n    </tr>\n    <tr>\n      <th>84</th>\n      <td>Yonne</td>\n      <td>51</td>\n      <td>47</td>\n      <td>30</td>\n      <td>C</td>\n    </tr>\n    <tr>\n      <th>85</th>\n      <td>Corse</td>\n      <td>83</td>\n      <td>49</td>\n      <td>37</td>\n      <td>NaN</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠38eeb46f-e9eb-41c6-9083-468b690e8598i︠
%md
> Notice that there is one missing observation in the Region column. We eliminate it using a DataFrame method provided by pandas:
︡4ef96b4c-c394-4171-a059-b81c58a4d56a︡{"done":true,"md":"> Notice that there is one missing observation in the Region column. We eliminate it using a DataFrame method provided by pandas:"}
︠57b28741-b664-4783-bece-ee69564845c1s︠
df = df.dropna()
df.tail(5)
︡47db53ab-be40-4c4a-8c6a-31265c4657ba︡{"html":"<table border=\"1\" class=\"dataframe\">\n  <thead>\n    <tr style=\"text-align: right;\">\n      <th></th>\n      <th>Department</th>\n      <th>Lottery</th>\n      <th>Literacy</th>\n      <th>Wealth</th>\n      <th>Region</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr>\n      <th>80</th>\n      <td>Vendee</td>\n      <td>68</td>\n      <td>28</td>\n      <td>56</td>\n      <td>W</td>\n    </tr>\n    <tr>\n      <th>81</th>\n      <td>Vienne</td>\n      <td>40</td>\n      <td>25</td>\n      <td>68</td>\n      <td>W</td>\n    </tr>\n    <tr>\n      <th>82</th>\n      <td>Haute-Vienne</td>\n      <td>55</td>\n      <td>13</td>\n      <td>67</td>\n      <td>C</td>\n    </tr>\n    <tr>\n      <th>83</th>\n      <td>Vosges</td>\n      <td>14</td>\n      <td>62</td>\n      <td>82</td>\n      <td>E</td>\n    </tr>\n    <tr>\n      <th>84</th>\n      <td>Yonne</td>\n      <td>51</td>\n      <td>47</td>\n      <td>30</td>\n      <td>C</td>\n    </tr>\n  </tbody>\n</table>"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠4fe74dcb-8ee0-4f36-b344-52fe1ec21eaei︠
%md
Some statistics...

> **Substantive motivation and model:** We want to know whether literacy rates in the 86 French departments are associated with per capita wagers on the Royal Lottery in the 1820s. We need to control for the level of wealth in each department, and we also want to include a series of dummy variables on the right-hand side of our regression equation to control for unobserved heterogeneity due to regional effects. The model is estimated using ordinary least squares regression (OLS).

(WARNING: I'm not a statistician...)

Use patsy‘s to create design matrices, then use statsmodels to do an ordinary least squares fit.
︡a3579fe1-4dee-47d9-840b-5416815c9762︡{"done":true,"md":"Some statistics...\n\n> **Substantive motivation and model:** We want to know whether literacy rates in the 86 French departments are associated with per capita wagers on the Royal Lottery in the 1820s. We need to control for the level of wealth in each department, and we also want to include a series of dummy variables on the right-hand side of our regression equation to control for unobserved heterogeneity due to regional effects. The model is estimated using ordinary least squares regression (OLS).\n\n(WARNING: I'm not a statistician...)\n\nUse patsy‘s to create design matrices, then use statsmodels to do an ordinary least squares fit."}
︠b73e296a-da0c-424c-899e-20a0225b2dc9s︠
y,X = dmatrices('Lottery ~ Literacy + Wealth + Region', data=df, return_type='dataframe')
mod = sm.OLS(y, X)    # Describe model
res = mod.fit()       # Fit model
res.summary()         # Summarize model
︡b3001567-ada4-4c58-8bf4-53cf713cadc1︡{"stdout":"                            OLS Regression Results                            \n==============================================================================\nDep. Variable:                Lottery   R-squared:                       0.338\nModel:                            OLS   Adj. R-squared:                  0.287\nMethod:                 Least Squares   F-statistic:                     6.636\nDate:                Fri, 13 May 2016   Prob (F-statistic):           1.07e-05\nTime:                        18:39:29   Log-Likelihood:                -375.30\nNo. Observations:                  85   AIC:                             764.6\nDf Residuals:                      78   BIC:                             781.7\nDf Model:                           6                                         \nCovariance Type:            nonrobust                                         \n===============================================================================\n                  coef    std err          t      P>|t|      [95.0% Conf. Int.]\n-------------------------------------------------------------------------------\nIntercept      38.6517      9.456      4.087      0.000        19.826    57.478\nRegion[T.E]   -15.4278      9.727     -1.586      0.117       -34.793     3.938\nRegion[T.N]   -10.0170      9.260     -1.082      0.283       -28.453     8.419\nRegion[T.S]    -4.5483      7.279     -0.625      0.534       -19.039     9.943\nRegion[T.W]   -10.0913      7.196     -1.402      0.165       -24.418     4.235\nLiteracy       -0.1858      0.210     -0.886      0.378        -0.603     0.232\nWealth          0.4515      0.103      4.390      0.000         0.247     0.656\n==============================================================================\nOmnibus:                        3.049   Durbin-Watson:                   1.785\nProb(Omnibus):                  0.218   Jarque-Bera (JB):                2.694\nSkew:                          -0.340   Prob(JB):                        0.260\nKurtosis:                       2.454   Cond. No.                         371.\n==============================================================================\n\nWarnings:\n[1] Standard Errors assume that the covariance matrix of the errors is correctly specified.\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠98088372-1dee-44d6-86ac-d1e54b3454cdi︠
%md
> statsmodels also provides graphics functions. For example, we can draw a plot of partial regression for a set of regressors by:
︡e6d82880-bf56-41d0-8180-b2fce2858e0c︡{"done":true,"md":"> statsmodels also provides graphics functions. For example, we can draw a plot of partial regression for a set of regressors by:"}
︠3f0a14d0-7b09-4f79-bd19-d4301b0e54bes︠
sm.graphics.plot_partregress('Lottery', 'Wealth', ['Region', 'Literacy'],
                              data=df, obs_labels=False)
︡24d078ac-99c1-4ab7-98c8-38313b3cccc6︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/24603/tmp_OPEk3z.svg","show":true,"text":null,"uuid":"ef93ad34-1487-4338-8658-ff3ae7609f37"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠b6433174-4dac-4601-8279-cd1ac5a0d079i︠
%md
## 2. Scikit Learn: Easy Machine Learning

From [their website](http://scikit-learn.org/stable/):

> Machine Learning in Python
>
> - Simple and efficient tools for data mining and data analysis
> - Accessible to everybody, and reusable in various contexts
> - Built on NumPy, SciPy, and matplotlib
> - Open source, commercially usable - BSD license
︡9a423255-4cf5-437d-95a5-43f9ca625a87︡{"done":true,"md":"## 2. Scikit Learn: Easy Machine Learning\n\nFrom [their website](http://scikit-learn.org/stable/):\n\n> Machine Learning in Python\n>\n> - Simple and efficient tools for data mining and data analysis\n> - Accessible to everybody, and reusable in various contexts\n> - Built on NumPy, SciPy, and matplotlib\n> - Open source, commercially usable - BSD license"}
︠118d5d6b-741f-434b-aeca-3586e02887e8︠
from sklearn import datasets
digits = datasets.load_digits()
︡bcd4b4c4-ae3a-4354-bbf7-81c87cdeb689︡{"done":true}︡
︠972554b3-4156-49ac-ae3b-ad392c18c94di︠
%md
This "digits" thing is 1797 hand-written low-resolution numbers from the postcal code numbers on letters (zip codes)...
︡a4fab599-67f8-4365-a941-540aac22cc40︡{"done":true,"md":"This \"digits\" thing is 1797 hand-written low-resolution numbers from the postcal code numbers on letters (zip codes)..."}
︠18bd77b7-92b0-438e-940a-ded005163854s︠
type(digits.data)
︡a8feca20-2046-415b-904c-45efb465904a︡{"stdout":"<type 'numpy.ndarray'>\n"}︡{"done":true}︡
︠ad50625b-bbbd-4de4-8e39-b1bcaaa39d92s︠
digits.data
︡588f9446-d13b-4878-84d1-7b289f2e6fde︡{"stdout":"[[  0.   0.   5. ...,   0.   0.   0.]\n [  0.   0.   0. ...,  10.   0.   0.]\n [  0.   0.   0. ...,  16.   9.   0.]\n ..., \n [  0.   0.   1. ...,   6.   0.   0.]\n [  0.   0.   2. ...,  12.   0.   0.]\n [  0.   0.  10. ...,  12.   1.   0.]]\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠11cf6512-2f55-4102-bffb-edb80bd23fbes︠
digits.target
︡8c76bcd9-dede-4428-acd7-03b5ebcb3f0e︡{"stdout":"[0 1 2 ..., 8 9 8]\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠750af3e6-31b6-43f0-a29d-50052aa70f68︠
len(digits.target)
︡dc871311-f0ca-4a6a-959f-59a4faba7d34︡{"html":"<div align='center'>$\\displaystyle 1797$</div>"}︡{"done":true}︡
︠31b3a429-6077-4503-b823-acc2e47baa61s︠
import matplotlib.pyplot as plt
def plot_data(n):
    print "scan of %s"%digits.target[n]
    show(plt.matshow(digits.data[n].reshape(8,8), interpolation="nearest", cmap=plt.cm.Greys_r))
︡7b1133f7-8aa9-490a-b6ff-0e8f3c558486︡{"done":true}︡
︠c2435c53-709a-4073-b8f8-44c7c9188536s︠
digits.data[0]
︡c32e7e82-d364-4f08-a859-72c5c01fdc39︡{"stdout":"[  0.   0.   5.  13.   9.   1.   0.   0.   0.   0.  13.  15.  10.  15.   5.\n   0.   0.   3.  15.   2.   0.  11.   8.   0.   0.   4.  12.   0.   0.   8.\n   8.   0.   0.   5.   8.   0.   0.   9.   8.   0.   0.   4.  11.   0.   1.\n  12.   7.   0.   0.   2.  14.   5.  10.  12.   0.   0.   0.   0.   6.  13.\n  10.   0.   0.   0.]\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠edfb7cbf-c3eb-412f-9a45-1918cfaea856s︠
plot_data(0)
︡023cc7ca-16aa-4970-905a-05cdc019f317︡{"stdout":"scan of 0\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/24603/tmp_2OtnlN.png","show":true,"text":null,"uuid":"fcd43d8e-e7a9-435e-8b7c-8a6c51ec6660"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠f869f188-420a-4a3e-8cd1-929127b14d0ds︠
plot_data(389)
︡17d5c109-791d-4c6e-b331-10ca9392c98e︡{"stdout":"scan of 3\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/24603/tmp_A9nCpX.png","show":true,"text":null,"uuid":"82acad3f-f60b-45b6-8e6e-a938212839b8"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠2addb358-47d0-4cc8-8036-a95eae15a7abi︠
%md
**Example/goal here:**

> "In the case of the digits dataset, the task is to predict, given an image, which digit it represents. We are given 1797 samples of each of the 10 possible classes (the digits zero through nine) on which we fit an estimator to be able to predict the classes to which unseen samples belong."
︡4b5fefe3-f6ed-471e-8ab7-2510b492ec97︡{"done":true,"md":"**Example/goal here:**\n\n> \"In the case of the digits dataset, the task is to predict, given an image, which digit it represents. We are given 1797 samples of each of the 10 possible classes (the digits zero through nine) on which we fit an estimator to be able to predict the classes to which unseen samples belong.\""}
︠afc2a942-e0b9-423f-81bd-f03e79211e44s︠
from sklearn import svm     # use a support vector machine...
clf = svm.SVC(gamma=0.001, C=100.)
# We set params manually;, but scikit learn has techniques for finding these params automatically
︡925362f1-2113-4839-87a3-78cb9ff19fb3︡{"done":true}︡
︠f45734eb-0f4d-48a5-a34f-663487031ba2s︠
plot_data(1796)
︡dd182723-b80b-4e95-a9d0-861ec92afc22︡{"stdout":"scan of 8\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/24603/tmp_VOSunJ.png","show":true,"text":null,"uuid":"2510047a-04ed-4c80-87e6-4e8703e68090"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠afa5afff-03ff-414d-bc9e-147471aa506ci︠
%md
This clf is a "classifier".  Right now it doesn't know anything at all about our actual data.

We  **teach** it by passing in our data to the fit method...

> "We use all the images of our dataset apart from the last one. We select this training set with the [:-1] Python syntax, which produces a new array that contains all but the last entry of digits.data:"
︡6b52cd8e-2f3a-4b42-9dc7-3f43025b8c60︡{"done":true,"md":"This clf is a \"classifier\".  Right now it doesn't know anything at all about our actual data.\n\nWe  **teach** it by passing in our data to the fit method...\n\n> \"We use all the images of our dataset apart from the last one. We select this training set with the [:-1] Python syntax, which produces a new array that contains all but the last entry of digits.data:\""}
︠4963bb68-612a-4a40-8322-8bd973e59c3bs︠
# Train our classifier by giving it 1796 scanned digits!
clf.fit(digits.data[:-1], digits.target[:-1])
︡a43ba1ae-3cb8-48c8-9ceb-7fe96f3c086f︡{"stdout":"SVC(C=100.0, cache_size=200, class_weight=None, coef0=0.0,\n  decision_function_shape=None, degree=3, gamma=0.001, kernel='rbf',\n  max_iter=-1, probability=False, random_state=None, shrinking=True,\n  tol=0.001, verbose=False)"}︡{"stdout":"\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠6a234c11-2434-4844-aa58-5a86ce256c05s︠
plot_data(1796)  # the last one -- not given
︡7100b74f-60fd-4bde-a2f0-a1ecfb205158︡{"stdout":"scan of 8\n"}︡{"stderr":"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/matplotlib-1.5.0-py2.7-linux-x86_64.egg/matplotlib/pyplot.py:516: RuntimeWarning: More than 20 figures have been opened. Figures created through the pyplot interface (`matplotlib.pyplot.figure`) are retained until explicitly closed and may consume too much memory. (To control this warning, see the rcParam `figure.max_open_warning`).\n  max_open_warning, RuntimeWarning)\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/24603/tmp_WX0Nu9.png","show":true,"text":null,"uuid":"2510047a-04ed-4c80-87e6-4e8703e68090"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠2f9729b7-0287-4d09-8d96-c1aed84c56afs︠
digits.data[-1:]
︡f95cd819-6517-445d-87ed-d17e27450d54︡{"stdout":"[[  0.   0.  10.  14.   8.   1.   0.   0.   0.   2.  16.  14.   6.   1.\n    0.   0.   0.   0.  15.  15.   8.  15.   0.   0.   0.   0.   5.  16.\n   16.  10.   0.   0.   0.   0.  12.  15.  15.  12.   0.   0.   0.   4.\n   16.   6.   4.  16.   6.   0.   0.   8.  16.  10.   8.  16.   8.   0.\n    0.   1.   8.  12.  14.  12.   1.   0.]]\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠df7b2781-bb1d-455c-96ca-66275f17624es︠
digits.target[1796]
︡2af4002a-6995-4eca-9552-d9aa86507ace︡{"html":"<div align='center'>$\\displaystyle 8$</div>"}︡{"done":true}︡
︠8bf45991-d432-4730-be6a-7dcee20039abs︠
# it predicts it is an 8 correctly!
clf.predict(digits.data[-1:])
︡8bb62e83-d7f1-4ad5-905c-fb8df5e8f372︡{"stdout":"[8]\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠07dfb81a-0065-4eb3-8d4f-b765f60f6624i︠
%md
** Exercise for you right now: **
Run the prediction on all 1797 scaned values to see how many are correct.
︡579950ac-04cc-464a-835f-e0c1aef0b31c︡{"done":true,"md":"** Exercise for you right now: **\nRun the prediction on all 1797 scaned values to see how many are correct."}
︠60ac5684-b78b-4627-98c6-18e376655439︠
# To get you started, here is how to test the 5 scalled value.
digits.target[5]
clf.predict(digits.data[5:6])
︡d79b6eb4-a233-4d58-8bdb-b17ff9ef55f4︡{"html":"<div align='center'>$\\displaystyle 5$</div>"}︡{"stdout":"[5]\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠c469e48e-0343-4c96-8802-488af83d57b4s︠
n = 15
digits.target[n] == clf.predict(digits.data[n:n+1])[0]
︡12c7c83f-cb67-449c-ac4b-01a801e7a669︡{"stdout":"True\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠f07abd81-10e9-4afc-be0e-1539514acc81︠
# After you do this -- completely recreate clf but trained on way less data!
︠2b70db74-74a3-483e-bd1b-fc159738507as︠
plot_data(5)
︡f693e436-e95e-4366-998a-511d58e403ef︡{"stdout":"scan of 5\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/24603/tmp_MKv958.png","show":true,"text":null,"uuid":"b16c8087-7857-4833-87bc-dc0f4b704ba2"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠59ae4564-8cf0-4f99-9f0d-717f3c44c288i︠
%md
### bonus

plots of low dimensional embeddings of the digits dataset:

http://scikit-learn.org/stable/auto_examples/manifold/plot_lle_digits.html
︡ccb2056d-ac61-45ef-8b86-83c3239b1d5d︡{"done":true,"md":"### bonus\n\nplots of low dimensional embeddings of the digits dataset:\n\nhttp://scikit-learn.org/stable/auto_examples/manifold/plot_lle_digits.html"}
︠2c8b4295-afa8-4a35-891e-13e8280e2d6f︠










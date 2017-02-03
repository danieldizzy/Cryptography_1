︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-05-16
### William Stein

## **Lectures 22: Numpy, Matplotlib, and Scipy (part 1 of 3)**

1. Homework DUE 2016-05-20 is now available.
2. Reminder: peer grading of homework DUE-2016-05-06 is due tonight at 6pm.
3. Peer grading guidelines for homework DUE-2016-05-13 are available.
3. Start screencast
4. 10min -- Very brief first intro to numpy, matplotlib and scipy (more Wed and Friday)
5. 15min+ -- Talk about the 3 homework problems
6. Get started on homework or start working through some of the tutorials on your own in a worksheet.
︡70e03e40-9a05-428f-83b3-b56d801d9744︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-05-16\n### William Stein\n\n## **Lectures 22: Numpy, Matplotlib, and Scipy (part 1 of 3)**\n\n1. Homework DUE 2016-05-20 is now available.\n2. Reminder: peer grading of homework DUE-2016-05-06 is due tonight at 6pm.\n3. Peer grading guidelines for homework DUE-2016-05-13 are available.\n3. Start screencast\n4. 10min -- Very brief first intro to numpy, matplotlib and scipy (more Wed and Friday)\n5. 15min+ -- Talk about the 3 homework problems\n6. Get started on homework or start working through some of the tutorials on your own in a worksheet."}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md

## 10 minute intro to numpy, matplotlib and scipy.

- Numpy, Matplotlib, and Scipy are (along with Cython) **the foundation** of the Scientific Python Stack.

- Pretty much everything in the world of Python "data science" depends on them.

- The community is unified around them as the foundation on which to build.

- All are very polished and heavily used at this point.

- Written in mostly C, C++ and some Fortran (scipy).  Very highly optimized for speed.  Lots of "vectorized operations".

- When you hear about running Python in your web browser, or from Java, or on top of a JIT, probably none of  Numpy, Matplotlib, and Scipy are supported in that context, so people doing numerical python work will not be excited.


<img width=300 src="http://earthpy.org/numpy.png" class="pull-right">
### [Numpy:](http://www.numpy.org/) provides an $n$-dimensional array object and lots of functionality with it.
> "NumPy is the fundamental package for scientific computing with Python."

You should spend 2 hours and go through the [Numpy Tutorial](https://docs.scipy.org/doc/numpy-dev/user/quickstart.html).


<img width=300 src="http://matplotlib.org/_static/logo2.png" class="pull-right">
### [Matplotlib:](http://matplotlib.org/) provides graphics much like matlab (and much more).
> "matplotlib is a python 2D plotting library which produces publication quality figures in a variety of hardcopy formats and interactive environments across platforms."

You should spend an hour and go through this [Matplotlib tutorial](http://www.labri.fr/perso/nrougier/teaching/matplotlib/).

<img width=300 src="http://gracca.github.io/images/python-scipy.png" class="pull-right">
### [Scipy:](https://www.scipy.org/scipylib/index.html) provides many numerical algorithms beyonds just matrices...
> "Scipy is the fundamental library for scientific computing. It provides many user-friendly and efficient numerical routines such as routines for numerical integration and optimization."

You should spend several hours on the [Scipy tutorial](http://docs.scipy.org/doc/scipy/reference/tutorial/).

︡3a917849-f0b6-478a-a1aa-9f81e4ead39b︡{"done":true,"md":"\n## 10 minute intro to numpy, matplotlib and scipy.\n\n- Numpy, Matplotlib, and Scipy are (along with Cython) **the foundation** of the Scientific Python Stack.  \n\n- Pretty much everything in the world of Python \"data science\" depends on them.  \n\n- The community is unified around them as the foundation on which to build.\n\n- All are very polished and heavily used at this point.\n\n- Written in mostly C, C++ and some Fortran (scipy).  Very highly optimized for speed.  Lots of \"vectorized operations\".\n\n- When you hear about running Python in your web browser, or from Java, or on top of a JIT, probably none of  Numpy, Matplotlib, and Scipy are supported in that context, so people doing numerical python work will not be excited.\n\n\n<img width=300 src=\"http://earthpy.org/numpy.png\" class=\"pull-right\">\n### [Numpy:](http://www.numpy.org/) provides an $n$-dimensional array object and lots of functionality with it.\n> \"NumPy is the fundamental package for scientific computing with Python.\"\n\nYou should spend 2 hours and go through the [Numpy Tutorial](https://docs.scipy.org/doc/numpy-dev/user/quickstart.html).\n\n\n<img width=300 src=\"http://matplotlib.org/_static/logo2.png\" class=\"pull-right\">\n### [Matplotlib:](http://matplotlib.org/) provides graphics much like matlab (and much more).\n> \"matplotlib is a python 2D plotting library which produces publication quality figures in a variety of hardcopy formats and interactive environments across platforms.\"\n\nYou should spend an hour and go through this [Matplotlib tutorial](http://www.labri.fr/perso/nrougier/teaching/matplotlib/).\n\n<img width=300 src=\"http://gracca.github.io/images/python-scipy.png\" class=\"pull-right\">\n### [Scipy:](https://www.scipy.org/scipylib/index.html) provides many numerical algorithms beyonds just matrices...\n> \"Scipy is the fundamental library for scientific computing. It provides many user-friendly and efficient numerical routines such as routines for numerical integration and optimization.\"\n\nYou should spend several hours on the [Scipy tutorial](http://docs.scipy.org/doc/scipy/reference/tutorial/)."}
︠6fbd35cc-0e17-4e8d-88b3-b6378ae5990c︠












︠4189f872-59c9-4402-b7ef-7e1cfb5e84b6i︠
%md
# Math 480 - Homework DUE 2016-05-20: numpy, scipy, and matplotlib

## Due 6pm on May 20, 2016

︡f8a01199-1fe9-4723-8641-9d5fc14ef4c9︡{"done":true,"md":"# Math 480 - Homework DUE 2016-05-20: numpy, scipy, and matplotlib\n\n## Due 6pm on May 20, 2016"}
︠c84c1444-debf-4362-9cce-d138ec1c8f8di︠
%md
## There are **THREE** problems. All problems have equal weight.

︡ad858b8b-554c-4289-93ef-b8113b20b933︡{"done":true,"md":"## There are **THREE** problems. All problems have equal weight."}
︠488c12a8-a7e6-49be-ae2f-f8e7b808e4e3i︠
%md

<img class='pull-right' src='matplotlib-hat.png' width=300>

### Problem 1 -- A comparison of 3d plots.

As you know, Sage has its own [3d plotting functionality](http://doc.sagemath.org/html/en/reference/plot3d) built in.
A significant drawback of Sage's 3d plotting (right now -- you could change this someday!) is that there is no support for
generating publication quality pdf 3d plots using Sage's built-in 3d plotting.  This problem is about several distinct ways
to draw 3d plots using Sage.

Your goal is to create several files -- `hat1.png`, `hat2.png`, and `hat3.pdf` -- containing plots of the **<font color='red'>bright red</font>** Mexican hat function
$\displaystyle \psi(x,y) = \frac{1}{\pi\sigma^4}\left(1-\frac{x^2+y^2}{2\sigma^2}\right) \mathrm{e}^{-(x^2+y^2)/2\sigma^2}$<br/>
in the following ways, where $\sigma = 0.6$ and $-2\leq x, y \leq 2$.   In each case, you should attempt to label the $z$-axis with the function
definition (the formula right above) using nice-looking LaTeX.

There are 3 parts to this problem.

︡87f4c1cb-d079-4ed8-8418-24c6010deae8︡{"done":true,"md":"\n<img class='pull-right' src='matplotlib-hat.png' width=300>\n\n### Problem 1 -- A comparison of 3d plots.\n\nAs you know, Sage has its own [3d plotting functionality](http://doc.sagemath.org/html/en/reference/plot3d) built in.\nA significant drawback of Sage's 3d plotting (right now -- you could change this someday!) is that there is no support for\ngenerating publication quality pdf 3d plots using Sage's built-in 3d plotting.  This problem is about several distinct ways\nto draw 3d plots using Sage.\n\nYour goal is to create several files -- `hat1.png`, `hat2.png`, and `hat3.pdf` -- containing plots of the **<font color='red'>bright red</font>** Mexican hat function\n$\\displaystyle \\psi(x,y) = \\frac{1}{\\pi\\sigma^4}\\left(1-\\frac{x^2+y^2}{2\\sigma^2}\\right) \\mathrm{e}^{-(x^2+y^2)/2\\sigma^2}$<br/>\nin the following ways, where $\\sigma = 0.6$ and $-2\\leq x, y \\leq 2$.   In each case, you should attempt to label the $z$-axis with the function\ndefinition (the formula right above) using nice-looking LaTeX.\n\nThere are 3 parts to this problem."}
︠46e66bed-2923-422e-943a-d8bbaf55cf56i︠
%md

#### (Problem 1a.) Plotting using Sage:

- Use Sage's [plot3d](http://doc.sagemath.org/html/en/reference/plot3d/sage/plot/plot3d/plot3d.html) and [text3d](http://doc.sagemath.org/html/en/reference/plot3d/sage/plot/plot3d/shapes2.html#sage.plot.plot3d.shapes2.text3d) commands.  Your text should **NOT** look good since Sage 3d plotting doesn't support LaTeX properly yet.  The output of this problem should be the standard interactive 3d graph that you can rotate around.  Don't forget to set the color and please set `mesh=True` in your plot3d command.

- Reminder: the surface should be **red** and the axes ranges are -2 to 2.

- Create a file called `hat1.png` that contains a picture of your 3d plot.  The only current way to do this is to use your computer's screen capture functionality, then upload the resulting graphic using +New.  So do that.
︡606d59e5-4928-4ea9-b166-c6384200431a︡{"done":true,"md":"\n#### (Problem 1a.) Plotting using Sage:\n\n- Use Sage's [plot3d](http://doc.sagemath.org/html/en/reference/plot3d/sage/plot/plot3d/plot3d.html) and [text3d](http://doc.sagemath.org/html/en/reference/plot3d/sage/plot/plot3d/shapes2.html#sage.plot.plot3d.shapes2.text3d) commands.  Your text should **NOT** look good since Sage 3d plotting doesn't support LaTeX properly yet.  The output of this problem should be the standard interactive 3d graph that you can rotate around.  Don't forget to set the color and please set `mesh=True` in your plot3d command.\n\n- Reminder: the surface should be **red** and the axes ranges are -2 to 2.\n\n- Create a file called `hat1.png` that contains a picture of your 3d plot.  The only current way to do this is to use your computer's screen capture functionality, then upload the resulting graphic using +New.  So do that."}
︠c0fb9d49-4497-4e81-b26b-71feacadb8f8︠
# Solution 1a.




︠12319094-ec6a-43a2-8784-22cf0b1124b9i︠
%md
#### (Problem 1b.) Using Sage 3d ray tracer.

- Render your Sage 3d graphic from above, but instead using Sage's [Tachyon 3d raytracer](http://jedi.ks.uiuc.edu/~johns/raytracer/), so you get a static png image in a file.  Here is an example of how to render using Tachyon in a worksheet: `icosahedron().save('example_icosahedron.png'); smc.file('example_icosahedron.png')`
- The image file that you create should be called `hat2.png` and should end up in the current directory (same directory as your worksheet).
- Set the color of your plot to be red and make the range of the x and y axis be from -2 to 2.
- Label the plot with a beautiful latex formula... which will **NOT** actually work or look beautiful, due to shortcomings in Sage.

︡5e7deb41-b5e8-423c-af2e-c777f526b95f︡{"done":true,"md":"#### (Problem 1b.) Using Sage 3d ray tracer.\n\n- Render your Sage 3d graphic from above, but instead using Sage's [Tachyon 3d raytracer](http://jedi.ks.uiuc.edu/~johns/raytracer/), so you get a static png image in a file.  Here is an example of how to render using Tachyon in a worksheet: `icosahedron().save('example_icosahedron.png'); smc.file('example_icosahedron.png')`\n- The image file that you create should be called `hat2.png` and should end up in the current directory (same directory as your worksheet).\n- Set the color of your plot to be red and make the range of the x and y axis be from -2 to 2.\n- Label the plot with a beautiful latex formula... which will **NOT** actually work or look beautiful, due to shortcomings in Sage."}
︠22ec91d2-9ac3-4b61-8c64-636fc1aba4da︠
# Solution 1b.





︠2e18d1a0-19e5-4636-a9c8-d253110a0993i︠
%md

#### (Problem 1c.) Using [plot_surface](http://matplotlib.org/mpl_toolkits/mplot3d/tutorial.html#surface-plots) from matplotlib to plot the Mexican hat.  This is more
difficult than the other approaches above... but **it looks great**!

 - Look at the source code for the first [example](http://matplotlib.org/mpl_examples/mplot3d/surface3d_demo.py) and change it appropriately.
 - Remember to set the color of your plot to be red and make the range of the x and y axis be from -2 to 2.
 - Remember to label the title with a beautiful latex formula...
 - Remember to have matplotlib save the resulting image to the file `hat3.pdf`, in addition to displaying it.
︡c9eb90fd-3591-4dc9-8026-c150ded7efad︡{"done":true,"md":"\n#### (Problem 1c.) Using [plot_surface](http://matplotlib.org/mpl_toolkits/mplot3d/tutorial.html#surface-plots) from matplotlib to plot the Mexican hat.  This is more\ndifficult than the other approaches above... but **it looks great**!\n\n - Look at the source code for the first [example](http://matplotlib.org/mpl_examples/mplot3d/surface3d_demo.py) and change it appropriately.\n - Remember to set the color of your plot to be red and make the range of the x and y axis be from -2 to 2.\n - Remember to label the title with a beautiful latex formula...\n - Remember to have matplotlib save the resulting image to the file `hat3.pdf`, in addition to displaying it."}
︠4c813a14-4be8-4a65-a3ab-52ef6d00ddc7︠
# Solution 1c.
%python




︠ae7c4944-c502-4ad7-aa83-737f19b71406i︠
%md
### Problem 2 -- histograms and interact

The following function draws a histogram using Matplotlib.   Try running it to verify that it works for you.
︡41b700c1-dfc6-443c-9e4a-73ae6829c2ad︡{"done":true,"md":"### Problem 2 -- histograms and interact\n\nThe following function draws a histogram using Matplotlib.   Try running it to verify that it works for you."}
︠a9dc21a3-b0c2-4617-a229-c8d72a3a5cees︠
def hist():
    import numpy as np
    import matplotlib.pyplot as plt

    mu, sigma = 100, 15
    x = mu + sigma * np.random.randn(1000)

    # the histogram of the data
    n, bins, patches = plt.hist(x, 50, normed=1, facecolor='g', alpha=0.75)

    plt.xlabel('Smarts')
    plt.ylabel('Probability')
    plt.title('Histogram of IQ')
    plt.text(60, .025, r'$\mu=100,\ \sigma=15$')
    plt.axis([40, 160, 0, 0.03])
    plt.grid(True)
    plt.show()
hist()    
︡15d6e3f3-0ee2-4fd8-9c1b-1dd0b2600776︡{"file":{"filename":"35f35c4f-db94-4d25-ba0a-36f39025c4f9.svg","show":true,"text":null,"uuid":"5b6f61c6-9e1f-4f92-8f0a-9554c996b041"},"once":false}︡{"done":true}︡
︠44fd8b24-1931-4be0-b68e-e987aae21687i︠
%md
#### (Problem 2.a) Making your histogram function have inputs.
- Copy hist and make a new version that takes as input several relevant inputs:
`def hist_a(samples=1000, mu=100, sigma=15, bins=50, facecolor='g', alpha=0.75)`
so that you can instead call hist_a with different inputs.
- Call `hist_a` with the defaults, and also call it with every single input changed to something else in such as way that you can easily verify with your eyes that you correctly modified the body of the function to use the inputs to the function.
- The plot should correctly explain what mu and sigma are.  Also, ensure that no matter what the inputs, the plot and text isn't partly cut off or missing from the figure.
︡aaa3c320-b267-4cd3-8881-a48d677aae33︡{"done":true,"md":"#### (Problem 2.a) Making your histogram function have inputs.\n- Copy hist and make a new version that takes as input several relevant inputs:\n`def hist_a(samples=1000, mu=100, sigma=15, bins=50, facecolor='g', alpha=0.75)`\nso that you can instead call hist_a with different inputs.\n- Call `hist_a` with the defaults, and also call it with every single input changed to something else in such as way that you can easily verify with your eyes that you correctly modified the body of the function to use the inputs to the function.\n- The plot should correctly explain what mu and sigma are.  Also, ensure that no matter what the inputs, the plot and text isn't partly cut off or missing from the figure."}
︠270fd678-5b77-4b04-8182-b05a80083a40︠
# Solution 2.a
def hist_a(...):
    import numpy as np
    import matplotlib.pyplot as plt

    # ... Your code goes here


    plt.show()



︠1ab14ff8-a5fa-4174-b464-edf0be765233i︠
%md
#### (Problem 2.b) Making your histogram function **interactive**.

- Make a copy of `hist_a` called `hist_b` and put `@interact` on the line before `def hist_b(...)` and evaluate.
- You will see input boxes for each of samples, mu, sigma, etc.
- Try editing some of them and hitting enter, and you'll see the output get updated as a result.
- Evaluate interact? in another worksheet (or cell) and look through some examples and docs involving `@interact` (you can also look at https://wiki.sagemath.org/interact for more examples.)
- Make it so each of the inputs to hist_b uses either a slider, dropdown, color selector, or buttons to select from a reasonable range of values (up to you).
- E.g., replace `facecolor='g'` by `facecolor=Color('red')` to get a color selector.  You will have to figure out how to convert something like `Color('red')`, which is a Sage color, into something that is valid input as the facecolor to matplotlib!  As usual, you will have to search docs and Google.

︡f7e3a54c-6245-4b59-a04c-77184944c5d7︡{"done":true,"md":"#### (Problem 2.b) Making your histogram function **interactive**.\n\n- Make a copy of `hist_a` called `hist_b` and put `@interact` on the line before `def hist_b(...)` and evaluate.\n- You will see input boxes for each of samples, mu, sigma, etc.\n- Try editing some of them and hitting enter, and you'll see the output get updated as a result.\n- Evaluate interact? in another worksheet (or cell) and look through some examples and docs involving `@interact` (you can also look at https://wiki.sagemath.org/interact for more examples.)\n- Make it so each of the inputs to hist_b uses either a slider, dropdown, color selector, or buttons to select from a reasonable range of values (up to you).\n- E.g., replace `facecolor='g'` by `facecolor=Color('red')` to get a color selector.  You will have to figure out how to convert something like `Color('red')`, which is a Sage color, into something that is valid input as the facecolor to matplotlib!  As usual, you will have to search docs and Google."}
︠3f4b57e6-1324-462e-9810-a076ae62d071︠
# Solution 2.b
@interact
def hist_b(...):
    import numpy as np
    import matplotlib.pyplot as plt

    # ... Your code goes here


    plt.show()

︠70580a16-fbdc-4c59-b6c4-3309fe39648bi︠
%md
#### (Problem 2.c) Adding a button to choose a distribution:

- Make a copy of `hist_b` above (with the interact) and call it `hist_c`.  Add another button called dist, with values 'randn' and a at least 2 other distributions **of your choice**. Type `np.random.[tab key]` and read the documentation to find some other distributions (up to you which to add).
- Modify the code inside of `hist_c` so that it properly plots a histogram for sampling from the given distribution.
- In particular, you will have to change the line `x = mu + sigma * np.random.randn(samples)` to a more complicated if statement.   (NOTE: You may just parameterize your distribution by mu and sigma still, even if that doesn't really make sense.)

︡91ed7a3b-cced-4813-a770-76d512de1fbb︡{"done":true,"md":"#### (Problem 2.c) Adding a button to choose a distribution:\n\n- Make a copy of `hist_b` above (with the interact) and call it `hist_c`.  Add another button called dist, with values 'randn' and a at least 2 other distributions **of your choice**. Type `np.random.[tab key]` and read the documentation to find some other distributions (up to you which to add).\n- Modify the code inside of `hist_c` so that it properly plots a histogram for sampling from the given distribution.\n- In particular, you will have to change the line `x = mu + sigma * np.random.randn(samples)` to a more complicated if statement.   (NOTE: You may just parameterize your distribution by mu and sigma still, even if that doesn't really make sense.)"}

# Solution 2.c
@interact
def hist_c(...):
    import numpy as np
    import matplotlib.pyplot as plt

    # ... Your code goes here


    plt.show()

︠792787bf-6505-4c5f-ad7f-2e6a8855f234i︠
%md
### Problem 3: Image compression with singular value decomposition

Read about singular value decomposition:
- https://en.wikipedia.org/wiki/Singular_value_decomposition.
- https://www.reddit.com/r/MachineLearning/comments/2b4nxd/eli5_singular_value_decomposition/cj1ua3j

There are 4 parts to this problem. Use the code below to assist you.
︡82c38d5c-0081-4b95-a9b3-38a19d1752fc︡{"done":true,"md":"### Problem 3: Image compression with singular value decomposition\n\nRead about singular value decomposition:\n- https://en.wikipedia.org/wiki/Singular_value_decomposition.\n- https://www.reddit.com/r/MachineLearning/comments/2b4nxd/eli5_singular_value_decomposition/cj1ua3j\n\nThere are 4 parts to this problem. Use the code below to assist you."}
︠7a8d90cf-b59f-46e7-9ef4-563d1ac84195s︠
# Working code to get you going... - you'll have to change the image name, and some parameters.
from scipy.ndimage import imread
import matplotlib.pyplot as plt
imgmat = imread("example_lion.jpg", flatten=True)
U, sigma, V = np.linalg.svd(imgmat)
k = 5  # Your parameter to set
reconstruct_img = np.matrix(U[:, :k]) * np.diag(sigma[:k]) * np.matrix(V[:k, :])
lion = plt.imshow(reconstruct_img)
plt.show()
︡7a26fbee-d8d9-4123-bc21-c0fbb28c42aa︡{"file":{"filename":"a0a976a2-7950-4a58-b800-16b7e9d58d00.svg","show":true,"text":null,"uuid":"7ad66743-9d4b-4758-b7e4-684516e335e2"},"once":false}︡{"done":true}︡
︠81b1d35f-e52b-4f76-aa13-87beaa5e4c87i︠
%md
#### (Problem 3.a) Computing the SVD
- Upload your favorite image (preferably between 100 and 1000 pixels wide and tall)
- Use `scipy.ndimage.imread` to turn your image into a numpy matrix of grayscale entries. (When you call np.shape on this matrix, it should have the same dimensions as your image).
- Use numpy to compute the singular value decomposition (U, Sigma, and V) of your image.
- Use the first $k = 10$ vectors of the SVD to re-create the original matrix.
- Use matplotlib's *imshow* command (making sure to set *cmap* to "gray", otherwise you'll get a very colorful picture!) to display the new matrix, which is a compressed version of the original image.

︡b77a0100-85a4-4afb-9e41-a4efcd19ac13︡{"done":true,"md":"#### (Problem 3.a) Computing the SVD\n- Upload your favorite image (preferably between 100 and 1000 pixels wide and tall)\n- Use `scipy.ndimage.imread` to turn your image into a numpy matrix of grayscale entries. (When you call np.shape on this matrix, it should have the same dimensions as your image).\n- Use numpy to compute the singular value decomposition (U, Sigma, and V) of your image.\n- Use the first $k = 10$ vectors of the SVD to re-create the original matrix.\n- Use matplotlib's *imshow* command (making sure to set *cmap* to \"gray\", otherwise you'll get a very colorful picture!) to display the new matrix, which is a compressed version of the original image."}
︠740a287a-842b-4257-94d7-764c548982ca︠





︠ba17f37e-5813-4db5-a1d7-a72016aaff41i︠
%md
#### (Problem 3.b) Examining the results
- Qualitatively, how well do you think the SVD compression with 10 vectors does at preserving the original image?
- Can you still tell what it's a picture of?

︡73dba335-4ba6-49d3-9ce7-4e01df510058︡{"done":true,"md":"#### (Problem 3.b) Examining the results\n- Qualitatively, how well do you think the SVD compression with 10 vectors does at preserving the original image?\n- Can you still tell what it's a picture of?"}
︠637a5e89-4a2e-4542-acb7-94516e4b7e1a︠
%md






︠51f717ba-c985-4ced-83b5-f1b65600469di︠
%md

#### (Problem 3.c) Further analysis
- What's the total combined size (number of entries) of the parts of U, Sigma and V that were used to reconstruct the image in part 1?
- What's the total size (number of entries) of the original matrix? What's the compression ratio?
︡fcae587f-e77d-4da4-91b6-b10f3197ef82︡{"done":true,"md":"\n#### (Problem 3.c) Further analysis\n- What's the total combined size (number of entries) of the parts of U, Sigma and V that were used to reconstruct the image in part 1?\n- What's the total size (number of entries) of the original matrix? What's the compression ratio?"}
︠cfe9fb90-fec0-4940-bd52-daa8717879f0︠
# Solution 3.c
# compressed = ...
# uncompressed = ...




︠229c1b5b-a227-41ff-8965-ee698871fe80i︠
%md
#### (Problem 3.d) Messing around
- Try fiddling with the value of $k$ (using more or less of the SVD vectors to reconstruct the image).
- How many of the SVD vectors do you need to use before the compressed version is indistinguishable from the original?
︡54e920ea-eb97-4601-b629-c9a3c7bb91e0︡{"done":true,"md":"#### (Problem 3.d) Messing around\n- Try fiddling with the value of $k$ (using more or less of the SVD vectors to reconstruct the image).\n- How many of the SVD vectors do you need to use before the compressed version is indistinguishable from the original?"}
︠6d60bd18-5552-4f9e-815b-fbca18b77564︠












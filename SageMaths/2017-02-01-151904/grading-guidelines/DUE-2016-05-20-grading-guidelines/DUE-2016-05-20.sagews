︠4189f872-59c9-4402-b7ef-7e1cfb5e84b6i︠
%md
# Math 480 - Homework 6: numpy, scipy, and matplotlib

## Due 6pm on May 20, 2016

︡f8a01199-1fe9-4723-8641-9d5fc14ef4c9︡{"done":true,"md":"# Math 480 - Homework 6: numpy, scipy, and matplotlib\n\n## Due 6pm on May 20, 2016"}
︠bceb18a6-93ae-4697-bc4f-0995e865a08ci︠
%html
<font color="red"><h1>HOMEWORK TOTAL: 60 POINTS</h1>
    <h3>
        When you deduct points, state the reason.
    </h3>
Use your best judgement when assigning points. For example, if you feel their equation was just off by a slight typo, and it was worth 2 points, only deduct 0.5 or 1 point.
</font>


︡39c14d6d-3740-4f89-b96f-2ea2d010d617︡{"done":true,"html":"<font color=\"red\"><h1>HOMEWORK TOTAL: 60 POINTS</h1>\n    <h3>\n        When you deduct points, state the reason.\n    </h3>\nUse your best judgement when assigning points. For example, if you feel their equation was just off by a slight typo, and it was worth 2 points, only deduct 0.5 or 1 point.\n</font>"}
︠c84c1444-debf-4362-9cce-d138ec1c8f8di︠
%md
## There are **THREE** problems. All problems are worth 20 points.

︡ad858b8b-554c-4289-93ef-b8113b20b933︡{"done":true,"md":"## There are **THREE** problems. All problems are worth 20 points."}
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

︡87f4c1cb-d079-4ed8-8418-24c6010deae8︡{"done":true,"md":"\n<img class='pull-right' src='matplotlib-hat.png' width=300>\n\n### Problem 1 -- A comparison of 3d plots.\n\nAs you know, Sage has its own [3d plotting functionality](http://doc.sagemath.org/html/en/reference/plot3d) built in.\nA significant drawback of Sage's 3d plotting (right now -- you could change this someday!) is that there is no support for\ngenerating publication quality pdf 3d plots using Sage's built-in 3d plotting.  This problem is about several distinct ways\nto draw 3d plots using Sage.\n\nYour goal is to create several files -- `hat1.png`, `hat2.png`, and `hat3.pdf` -- containing plots of the **<font color='red'>bright red</font>** Mexican hat function\n$\\displaystyle \\psi(x,y) = \\frac{1}{\\pi\\sigma^4}\\left(1-\\frac{x^2+y^2}{2\\sigma^2}\\right) \\mathrm{e}^{-(x^2+y^2)/2\\sigma^2}$<br/>\nin the following ways, where $\\sigma = 0.6$ and $-2\\leq x, y \\leq 2$.   In each case, you should attempt to label the $z$-axis with the function\ndefinition (the formula right above) using nice-looking LaTeX."}
︠bbcca028-4a17-4416-aaf7-96d3f8626192i︠
%html
<font color="red"><h2>20 Points Total</h2>
Part A : 5 pts<br/>
Part B : 5 pts<br/>
Part C : 10 pts
</font>
︡3a631b48-9bad-47ea-b7cd-635ff75cbe4c︡{"done":true,"html":"<font color=\"red\"><h2>20 Points Total</h2>\nPart A : 5 pts<br/>\nPart B : 5 pts<br/>\nPart C : 10 pts\n</font>"}
︠46e66bed-2923-422e-943a-d8bbaf55cf56i︠
%md

#### (Problem 1a.) Plotting using Sage:

- Use Sage's [plot3d](http://doc.sagemath.org/html/en/reference/plot3d/sage/plot/plot3d/plot3d.html) and [text3d](http://doc.sagemath.org/html/en/reference/plot3d/sage/plot/plot3d/shapes2.html#sage.plot.plot3d.shapes2.text3d) commands.  Your text should **NOT** look good since Sage 3d plotting doesn't support LaTeX properly yet.  The output of this problem should be the standard interactive 3d graph that you can rotate around.  Don't forget to set the color and please set `mesh=True` in your plot3d command.

- Reminder: the surface should be **red** and the axes ranges are -2 to 2.

- Create a file called `hat1.png` that contains a picture of your 3d plot.  The only current way to do this is to use your computer's screen capture functionality, then upload the resulting graphic using +New.  So do that.
︡606d59e5-4928-4ea9-b166-c6384200431a︡{"done":true,"md":"\n#### (Problem 1a.) Plotting using Sage:\n\n- Use Sage's [plot3d](http://doc.sagemath.org/html/en/reference/plot3d/sage/plot/plot3d/plot3d.html) and [text3d](http://doc.sagemath.org/html/en/reference/plot3d/sage/plot/plot3d/shapes2.html#sage.plot.plot3d.shapes2.text3d) commands.  Your text should **NOT** look good since Sage 3d plotting doesn't support LaTeX properly yet.  The output of this problem should be the standard interactive 3d graph that you can rotate around.  Don't forget to set the color and please set `mesh=True` in your plot3d command.\n\n- Reminder: the surface should be **red** and the axes ranges are -2 to 2.\n\n- Create a file called `hat1.png` that contains a picture of your 3d plot.  The only current way to do this is to use your computer's screen capture functionality, then upload the resulting graphic using +New.  So do that."}
︠f6864ea5-26b0-48c1-88d8-872cead5d865i︠
%html
<font color="red">
<h4>Part A (5 points)</h4>
<p>Award:
    <ul>
        <li>2 points for a plot of the correct function. Needs correct $\mu$, bounds, and color for full points.</li>
        <li>2 points for having some sort of attempted labeling using latex in text3d</li>
        <li>1 point for having the an image of the plot in the folder</li>
    </ul>
</p>
</font>
︡57d9ddf9-6511-4af1-a65c-a2837ef9ed1f︡{"done":true,"html":"<font color=\"red\">\n<h4>Part A (5 points)</h4>\n<p>Award:\n    <ul>\n        <li>2 points for a plot of the correct function. Needs correct $\\mu$, bounds, and color for full points.</li>\n        <li>2 points for having some sort of attempted labeling using latex in text3d</li>\n        <li>1 point for having the an image of the plot in the folder</li>\n    </ul>\n</p>\n</font>"}
︠c0fb9d49-4497-4e81-b26b-71feacadb8f8s︠
# Solution 1a.
f(x,y) = 1/(pi*0.6^4) *(1-(x^2 +y^2)/(2*0.6^2))*e^(-(x^2 +y^2)/(2*0.6^2))
P = plot3d(f,(-2,2),(-2,2), color='red', mesh=True)
g = P + text3d(r'z = \frac{1}{\pi\sigma^4}\left(1-\frac{x^2+y^2}{2\sigma^2}\right) \mathrm{e}^{-(x^2+y^2)/2\sigma^2}$', (2,2,2))
show(g)
︡d4ab941a-a689-4dec-9637-2a10c4a028b5︡{"file":{"filename":"973f46ca-7b50-4a11-894f-a3348d3c5735.sage3d","uuid":"973f46ca-7b50-4a11-894f-a3348d3c5735"}}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠12319094-ec6a-43a2-8784-22cf0b1124b9i︠
%md
#### (Problem 1b.) Using Sage 3d ray tracer.

- Render your Sage 3d graphic from above, but instead using Sage's [Tachyon 3d raytracer](http://jedi.ks.uiuc.edu/~johns/raytracer/), so you get a static png image in a file.  Here is an example of how to render using Tachyon in a worksheet: `icosahedron().save('icosahedron.png'); smc.file('icosahedron.png')`
- The image file that you create should be called `hat2.png` and should end up in the current directory (same directory as your worksheet).
- Set the color of your plot to be red and make the range of the x and y axis be from -2 to 2.
- Label the plot with a beautiful latex formula... which will **NOT** actually work or look beautiful, due to shortcomings in Sage.

︡5e7deb41-b5e8-423c-af2e-c777f526b95f︡{"done":true,"md":"#### (Problem 1b.) Using Sage 3d ray tracer.\n\n- Render your Sage 3d graphic from above, but instead using Sage's [Tachyon 3d raytracer](http://jedi.ks.uiuc.edu/~johns/raytracer/), so you get a static png image in a file.  Here is an example of how to render using Tachyon in a worksheet: `icosahedron().save('icosahedron.png'); smc.file('icosahedron.png')`\n- The image file that you create should be called `hat2.png` and should end up in the current directory (same directory as your worksheet).\n- Set the color of your plot to be red and make the range of the x and y axis be from -2 to 2.\n- Label the plot with a beautiful latex formula... which will **NOT** actually work or look beautiful, due to shortcomings in Sage."}
︠c94d6fff-1ef9-4351-ad0a-0bbafc90123ei︠
%html
<font color="red">
<h4>Part B (5 points)</h4>
<p>Award:
    <ul>
        <li>1 point for a plot of the correct function. Needs correct $\mu$, bounds, and color for full points.</li>
        <li>1 point for having some sort of attempted labeling using latex in text3d</li>
        <li>2 points for using save() on the plot.</li>
        <li>1 point for having the an image of the plot in the folder</li>
    </ul>
</p>
</font>
︡b3edf321-4c43-491e-951b-09234467902e︡{"done":true,"html":"<font color=\"red\">\n<h4>Part B (5 points)</h4>\n<p>Award:\n    <ul>\n        <li>1 point for a plot of the correct function. Needs correct $\\mu$, bounds, and color for full points.</li>\n        <li>1 point for having some sort of attempted labeling using latex in text3d</li>\n        <li>2 points for using save() on the plot.</li>\n        <li>1 point for having the an image of the plot in the folder</li>\n    </ul>\n</p>\n</font>"}
︠dd274b10-cfa1-46b3-8380-a524f31a2d47s︠
# Solution 1b.
f(x,y) = 1/(pi*0.6^4) *(1-(x^2 +y^2)/(2*0.6^2))*e^(-(x^2 +y^2)/(2*0.6^2))
P = plot3d(f,(-2,2),(-2,2), mesh=True, color='red')
g = P + text3d(r'z = \frac{1}{\pi\sigma^4}\left(1-\frac{x^2+y^2}{2\sigma^2}\right) \mathrm{e}^{-(x^2+y^2)/2\sigma^2}$', (2,2,2))
g.save('hat2.png')
smc.file('hat2.png')
︡000f3294-2984-4c33-883a-5511ebfb2ded︡{"file":{"filename":"hat2.png","show":true,"text":null,"uuid":"43160f4e-9afd-4936-a7d1-39f4a980e082"},"once":false}︡{"done":true}︡
︠2e18d1a0-19e5-4636-a9c8-d253110a0993i︠
%md

#### (Problem 1c.) Using [plot_surface](http://matplotlib.org/mpl_toolkits/mplot3d/tutorial.html#surface-plots) from matplotlib to plot the Mexican hat.  This is more
difficult than the other approaches above... but **it looks great**!

 - Look at the source code for the first [example](http://matplotlib.org/mpl_examples/mplot3d/surface3d_demo.py) and change it appropriately.
 - Remember to set the color of your plot to be red and make the range of the x and y axis be from -2 to 2.
 - Remember to label the title with a beautiful latex formula...
 - Remember to have matplotlib save the resulting image to the file `hat3.pdf`, in addition to displaying it.
︡c9eb90fd-3591-4dc9-8026-c150ded7efad︡{"done":true,"md":"\n#### (Problem 1c.) Using [plot_surface](http://matplotlib.org/mpl_toolkits/mplot3d/tutorial.html#surface-plots) from matplotlib to plot the Mexican hat.  This is more\ndifficult than the other approaches above... but **it looks great**!\n\n - Look at the source code for the first [example](http://matplotlib.org/mpl_examples/mplot3d/surface3d_demo.py) and change it appropriately.\n - Remember to set the color of your plot to be red and make the range of the x and y axis be from -2 to 2.\n - Remember to label the title with a beautiful latex formula...\n - Remember to have matplotlib save the resulting image to the file `hat3.pdf`, in addition to displaying it."}
︠7becde97-f9ff-41cb-b4f3-17f47ba3ab4di︠
%html
<font color="red">
<h4>Part A (10 points)</h4>
<p>Award:
    <ul>
        <li>4 points for a plot of the correct function. Needs correct $\mu$, bounds, and color for full points.</li>
        <li>4 points for having the fucntion labeled correctly in rendered LaTeX typesetting.</li>
        <li>2 point for having a pdf of their image in the folder.</li>
    </ul>
</p>
</font>
︡b0f7f7f8-7d64-428c-a3b1-4118e152ff37︡{"done":true,"html":"<font color=\"red\">\n<h4>Part A (10 points)</h4>\n<p>Award:\n    <ul>\n        <li>4 points for a plot of the correct function. Needs correct $\\mu$, bounds, and color for full points.</li>\n        <li>4 points for having the fucntion labeled correctly in rendered LaTeX typesetting.</li>\n        <li>2 point for having a pdf of their image in the folder.</li>\n    </ul>\n</p>\n</font>"}
︠a2d1f074-bc26-4cfd-9e94-0883d1dde66fs︠

# Solution 1c.
%python
from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
import numpy as np
def plot_surface():
    Y, X = np.mgrid[-2:2:200j, -2:2:200j]
    sigma = 0.6
    Z = 1/(np.pi * sigma**4) * (1 - (X**2 + Y**2)/(2*sigma**2))*np.exp(-1 * (X**2 + Y**2)/(2*sigma**2))

    fig  = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    ax.plot_surface(X, Y, Z, rstride=10, cstride=10, color='#ff0000')
    ax.set_title(r'Mexican hat:  $\psi(x,y) =  \frac{1}{\pi\sigma^4}\left(1-\frac{x^2+y^2}{2\sigma^2}\right) \mathrm{e}^{-(x^2+y^2)/2\sigma^2}$',
                 size='large')

plot_surface()
plt.show()
plt.savefig('hat3.pdf')
︡59bcdb69-22af-445f-8f7b-4724a9f79ea4︡{"file":{"filename":"fc75d5f9-0e05-44a0-ba41-5f7376810bdf.svg","show":true,"text":null,"uuid":"1ac1c3d9-2638-4737-b625-a6020cd6b9ad"},"once":false}︡{"done":true}︡
︠ae7c4944-c502-4ad7-aa83-737f19b71406i︠
%md
### Problem 2 -- histograms and interact

The following function draws a histogram using Matplotlib.   Try running it to verify that it works for you.
︡41b700c1-dfc6-443c-9e4a-73ae6829c2ad︡{"done":true,"md":"### Problem 2 -- histograms and interact\n\nThe following function draws a histogram using Matplotlib.   Try running it to verify that it works for you."}
︠d9eea4ed-c0bd-48df-933a-277b7969121ci︠
%html
<font color="red"><h2>20 Points Total</h2>
Part A : 6 pts<br/>
Part B : 6 pts<br/>
Part C : 8 pts
</font>
︡ff75f2ac-a552-4ae9-a607-5c7ec2fd37d3︡{"done":true,"html":"<font color=\"red\"><h2>20 Points Total</h2>\nPart A : 6 pts<br/>\nPart B : 6 pts<br/>\nPart C : 8 pts\n</font>"}
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
︡6da4e498-d880-4f61-95d4-757d11bb2a94︡{"done":true}︡
︠44fd8b24-1931-4be0-b68e-e987aae21687i︠
%md
#### (Problem 2.a) Making your histogram function have inputs.
- Copy hist and make a new version that takes as input several relevant inputs:
`def hist_a(samples=1000, mu=100, sigma=15, bins=50, facecolor='g', alpha=0.75)`
so that you can instead call hist_a with different inputs.
- Call `hist_a` with the defaults, and also call it with every single input changed to something else in such as way that you can easily verify with your eyes that you correctly modified the body of the function to use the inputs to the function.
- The plot should correctly explain what mu and sigma are.  Also, ensure that no matter what the inputs, the plot and text isn't partly cut off or missing from the figure.
︡aaa3c320-b267-4cd3-8881-a48d677aae33︡{"done":true,"md":"#### (Problem 2.a) Making your histogram function have inputs.\n- Copy hist and make a new version that takes as input several relevant inputs:\n`def hist_a(samples=1000, mu=100, sigma=15, bins=50, facecolor='g', alpha=0.75)`\nso that you can instead call hist_a with different inputs.\n- Call `hist_a` with the defaults, and also call it with every single input changed to something else in such as way that you can easily verify with your eyes that you correctly modified the body of the function to use the inputs to the function.\n- The plot should correctly explain what mu and sigma are.  Also, ensure that no matter what the inputs, the plot and text isn't partly cut off or missing from the figure."}
︠fbf07199-ff6a-406f-aa24-4f084cebfdf3i︠
%html
<font color="red">
<h4>Part A (6 points)</h4>
<p>Award:
    <ul>
        <li>2 points for a function with correct defaults.</li>
        <li>2 points for call to hist_a with input different from the defaults.</li>
        <li>2 points for an explained $\mu$ and $\sigma$.</li>
    </ul>
</p>
</font>
︡e677b3b9-733d-4861-892b-f4e72897df4e︡{"done":true,"html":"<font color=\"red\">\n<h4>Part A (6 points)</h4>\n<p>Award:\n    <ul>\n        <li>2 points for a function with correct defaults.</li>\n        <li>2 points for call to hist_a with input different from the defaults.</li>\n        <li>2 points for an explained $\\mu$ and $\\sigma$.</li>\n    </ul>\n</p>\n</font>"}
︠270fd678-5b77-4b04-8182-b05a80083a40s︠
# Solution 2.a
def hist_a(samples=1000, mu=100, sigma=15, bins=50, facecolor='g', alpha=0.75):
    import numpy as np
    import matplotlib.pyplot as plt

    x = mu + sigma * np.random.randn(samples)

    # the histogram of the data
    n, bins, patches = plt.hist(x, bins, normed=1, facecolor=facecolor, alpha=alpha)

    plt.xlabel('Smarts')
    plt.ylabel('Probability')
    plt.title('Histogram of IQ')
    xmin, xmax, ymin, ymax = plt.axis()
    plt.text((xmax+2*xmin)/3, (ymax-ymin)/2, r'$\mu=%s,\ \sigma=%s$'%(mu, sigma))
    #plt.axis([mu-3*sigma, mu+3*sigma, 0, 0.03])  # no need!
    plt.grid(True)
    plt.show()

hist_a(samples=10000, mu=300, sigma=5, bins=500, facecolor='b', alpha=.5)
︡8939e70e-b647-43f2-87ea-00e967172945︡{"file":{"filename":"cdf19337-20e0-45ec-973a-3b0a2fb0767f.svg","show":true,"text":null,"uuid":"26ed8c32-754f-4631-90f2-1a389907ed38"},"once":false}︡{"done":true}︡
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
︠dc6b0a24-3f54-4d6b-955b-25c90e8438a9i︠
%html
<font color="red">
<h4>Part A (6 points)</h4>
If they continue errors from part 1, don't deduct the points again.
<p>Award:
    <ul>
        <li>3 points for having a working interact</li>
        <li>3 points for changing each of the inputs to either a slider, dropdown, color selector, or buttons.</li>
        <li>ie. it should NOT look exactly like the solution</li>
    </ul>
</p>
</font>
︡20b4345b-dee0-4dcf-a3a7-ca8643ff050c︡{"done":true,"html":"<font color=\"red\">\n<h4>Part A (6 points)</h4>\nIf they continue errors from part 1, don't deduct the points again.\n<p>Award:\n    <ul>\n        <li>3 points for having a working interact</li>\n        <li>3 points for changing each of the inputs to either a slider, dropdown, color selector, or buttons.</li>\n        <li>ie. it should NOT look exactly like the solution</li>\n    </ul>\n</p>\n</font>"}
︠3f4b57e6-1324-462e-9810-a076ae62d071s︠
# Solution 2.b
@interact
def hist_b(samples=1000, mu=100, sigma=15, bins=50, facecolor=Color('red'), alpha=0.75):
    import numpy as np
    import matplotlib.pyplot as plt

    x = mu + sigma * np.random.randn(samples)

    # the histogram of the data
    n, bins, patches = plt.hist(x, bins, normed=1, facecolor=facecolor.html_color(), alpha=alpha)

    plt.xlabel('Smarts')
    plt.ylabel('Probability')
    plt.title('Histogram of IQ')
    xmin, xmax, ymin, ymax = plt.axis()
    plt.text((xmax+2*xmin)/3, (ymax-ymin)/2, r'$\mu=%s,\ \sigma=%s$'%(mu, sigma))
    #plt.axis([mu-3*sigma, mu+3*sigma, 0, 0.03])  # no need!
    plt.grid(True)
    plt.show()

︡b07e0211-9594-47d4-aa4f-12b8cb7c2862︡{"interact":{"controls":[{"control_type":"input-box","default":1000,"label":"samples","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"samples","width":null},{"control_type":"input-box","default":100,"label":"mu","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"mu","width":null},{"control_type":"input-box","default":15,"label":"sigma","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"sigma","width":null},{"control_type":"input-box","default":50,"label":"bins","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"bins","width":null},{"Color":"<class 'sage.plot.colors.Color'>","control_type":"color-selector","default":"#ff0000","hide_box":false,"label":"facecolor","readonly":false,"var":"facecolor","widget":null},{"control_type":"input-box","default":"0.750000000000000","label":"alpha","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"alpha","width":null}],"flicker":false,"id":"7a403323-3c63-4d2e-932e-bc213e028278","layout":[[["samples",12,null]],[["mu",12,null]],[["sigma",12,null]],[["bins",12,null]],[["facecolor",12,null]],[["alpha",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}︡
︠70580a16-fbdc-4c59-b6c4-3309fe39648bi︠
%md
#### (Problem 2.c) Adding a button to choose a distribution:

- Make a copy of `hist_b` above (with the interact) and call it `hist_c`.  Add another button called dist, with values 'randn' and a at least 2 other distributions **of your choice**. Type `np.random.[tab key]` and read the documentation to find some other distributions (up to you which to add).
- Modify the code inside of `hist_c` so that it properly plots a histogram for sampling from the given distribution.
- In particular, you will have to change the line `x = mu + sigma * np.random.randn(samples)` to a more complicated if statement.   (NOTE: You may just parameterize your distribution by mu and sigma still, even if that doesn't really make sense.)

︡91ed7a3b-cced-4813-a770-76d512de1fbb︡{"done":true,"md":"#### (Problem 2.c) Adding a button to choose a distribution:\n\n- Make a copy of `hist_b` above (with the interact) and call it `hist_c`.  Add another button called dist, with values 'randn' and a at least 2 other distributions **of your choice**. Type `np.random.[tab key]` and read the documentation to find some other distributions (up to you which to add).\n- Modify the code inside of `hist_c` so that it properly plots a histogram for sampling from the given distribution.\n- In particular, you will have to change the line `x = mu + sigma * np.random.randn(samples)` to a more complicated if statement.   (NOTE: You may just parameterize your distribution by mu and sigma still, even if that doesn't really make sense.)"}
︠3e23813f-8ca3-4ea9-a857-1a9c5253cb28i︠
%html
<font color="red">
<h4>Part A (8 points)</h4>
If they continue errors from part 1 and 2, don't deduct the points again.
<p>Award:
    <ul>
        <li>4 points for correctly having selectors for the different distributions</li>
        <li>4 points for having the distributions display correctly.</li>
        <li>You will have to look up what their distributions should look like.</li>
    </ul>
</p>
</font>
︡daf9658e-56ab-4444-b528-e1df5efef2c7︡{"done":true,"html":"<font color=\"red\">\n<h4>Part A (8 points)</h4>\nIf they continue errors from part 1 and 2, don't deduct the points again.\n<p>Award:\n    <ul>\n        <li>4 points for correctly having selectors for the different distributions</li>\n        <li>4 points for having the distributions display correctly.</li>\n        <li>You will have to look up what their distributions should look like.</li>\n    </ul>\n</p>\n</font>"}
︠38ef0cbc-7933-430c-90de-27e67a41533fs︠

# Solution 2.c
@interact
def hist_c(samples=1000, mu=100, sigma=15, bins=50, facecolor=Color('red'), alpha=0.75,
           dist=['randn', 'gumbel', 'pareto']):
    import numpy as np
    import matplotlib.pyplot as plt

    if dist == 'randn':
        x = mu + sigma * np.random.randn(samples)
    elif dist == 'gumbel':
        x = np.random.gumbel(mu, sigma, samples)
    elif dist == 'pareto':
        x = np.random.pareto(mu, samples)

    # the histogram of the data
    n, bins, patches = plt.hist(x, bins, normed=1, facecolor=facecolor.html_color(), alpha=alpha)

    plt.xlabel('Smarts')
    plt.ylabel('Probability')
    plt.title('Histogram of IQ')
    xmin, xmax, ymin, ymax = plt.axis()
    plt.text((xmax+2*xmin)/3, (ymax-ymin)/2, r'$\mu=%s,\ \sigma=%s$'%(mu, sigma))
    #plt.axis([mu-3*sigma, mu+3*sigma, 0, 0.03])  # no need!
    plt.grid(True)
    plt.show()
︡d4897b90-6717-48b5-b86b-9afc8015b08b︡{"interact":{"controls":[{"control_type":"input-box","default":1000,"label":"samples","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"samples","width":null},{"control_type":"input-box","default":100,"label":"mu","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"mu","width":null},{"control_type":"input-box","default":15,"label":"sigma","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"sigma","width":null},{"control_type":"input-box","default":50,"label":"bins","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"bins","width":null},{"Color":"<class 'sage.plot.colors.Color'>","control_type":"color-selector","default":"#ff0000","hide_box":false,"label":"facecolor","readonly":false,"var":"facecolor","widget":null},{"control_type":"input-box","default":"0.750000000000000","label":"alpha","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"alpha","width":null},{"button_classes":null,"buttons":true,"control_type":"selector","default":0,"label":"dist","lbls":["randn","gumbel","pareto"],"ncols":null,"nrows":null,"var":"dist","width":null}],"flicker":false,"id":"ea535d95-4633-4772-9620-0ce13fd7dc86","layout":[[["samples",12,null]],[["mu",12,null]],[["sigma",12,null]],[["bins",12,null]],[["facecolor",12,null]],[["alpha",12,null]],[["dist",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}︡
︠d5665d19-418f-43ed-8715-05880e2e70f8s︠




︡ff317385-f7f0-4641-8243-5f049947521e︡{"done":true}︡
︠792787bf-6505-4c5f-ad7f-2e6a8855f234i︠
%md
### Problem 3: Image compression with singular value decomposition

Read about singular value decomposition:
- https://en.wikipedia.org/wiki/Singular_value_decomposition.
- https://www.reddit.com/r/MachineLearning/comments/2b4nxd/eli5_singular_value_decomposition/cj1ua3j

There are 4 parts to this problem. Use the code below to assist you.
︡82c38d5c-0081-4b95-a9b3-38a19d1752fc︡{"done":true,"md":"### Problem 3: Image compression with singular value decomposition\n\nRead about singular value decomposition:\n- https://en.wikipedia.org/wiki/Singular_value_decomposition.\n- https://www.reddit.com/r/MachineLearning/comments/2b4nxd/eli5_singular_value_decomposition/cj1ua3j\n\nThere are 4 parts to this problem. Use the code below to assist you."}
︠ab293671-4720-4b91-9dbb-2210e9780103i︠
%html
<font color="red"><h2>20 Points Total</h2>
Part A : 3 pts<br/>
Part B : 5 pts<br/>
Part C : 5 pts<br/>
Part D : 5 pts
</font>
︡17f05dcd-59aa-4887-a760-4d7cd7e0f4a8︡{"done":true,"html":"<font color=\"red\"><h2>20 Points Total</h2>\nPart A : 3 pts<br/>\nPart B : 5 pts<br/>\nPart C : 5 pts<br/>\nPart D : 5 pts\n</font>"}
︠7a8d90cf-b59f-46e7-9ef4-563d1ac84195s︠
# Working code to get you going... - you'll have to change the image name, and some parameters.
from scipy.ndimage import imread
import matplotlib.pyplot as plt
imgmat = imread("lion.jpg", flatten=True)
U, sigma, V = np.linalg.svd(imgmat)
k = 20
reconstimg = np.matrix(U[:, :k]) * np.diag(sigma[:k]) * np.matrix(V[:k, :])
lion = plt.imshow(reconstimg)
plt.show()
︡4e0e3658-1852-4010-bde1-12a5b68e98a1︡{"file":{"filename":"e7658f77-4af1-4330-aac4-4da54f2379ef.svg","show":true,"text":null,"uuid":"72a3e187-9522-4d1e-9dba-80bff2dfbffb"},"once":false}︡{"done":true}︡
︠81b1d35f-e52b-4f76-aa13-87beaa5e4c87i︠
%md
#### (Problem 3.a) Computing the SVD
- Upload your favorite image (preferably between 100 and 1000 pixels wide and tall)
- Use `scipy.ndimage.imread` to turn your image into a numpy matrix of grayscale entries. (When you call np.shape on this matrix, it should have the same dimensions as your image).
- Use numpy to compute the singular value decomposition (U, Sigma, and V) of your image.
- Use the first $k = 10$ vectors of the SVD to re-create the original matrix.
- Use matplotlib's *imshow* command (making sure to set *cmap* to "gray", otherwise you'll get a very colorful picture!) to display the new matrix, which is a compressed version of the original image.

︡b77a0100-85a4-4afb-9e41-a4efcd19ac13︡{"done":true,"md":"#### (Problem 3.a) Computing the SVD\n- Upload your favorite image (preferably between 100 and 1000 pixels wide and tall)\n- Use `scipy.ndimage.imread` to turn your image into a numpy matrix of grayscale entries. (When you call np.shape on this matrix, it should have the same dimensions as your image).\n- Use numpy to compute the singular value decomposition (U, Sigma, and V) of your image.\n- Use the first $k = 10$ vectors of the SVD to re-create the original matrix.\n- Use matplotlib's *imshow* command (making sure to set *cmap* to \"gray\", otherwise you'll get a very colorful picture!) to display the new matrix, which is a compressed version of the original image."}
︠c3b6ea73-b5d7-45a1-b880-9f0015742e98i︠
%html
<font color="red">
<h4>Part A (3 points)</h4>
<p>Award:
    <ul>
        <li>1 point for having uploaded an image into SMC</li>
        <li>1 point for correctly reading in the image.</li>
        <li>1 point for computing U, Sigma, and V</li>
    </ul>
</p>
</font>
︡0e8c784b-0f4d-44bc-b7bb-9823a3a9d372︡{"done":true,"html":"<font color=\"red\">\n<h4>Part A (3 points)</h4>\n<p>Award:\n    <ul>\n        <li>1 point for having uploaded an image into SMC</li>\n        <li>1 point for correctly reading in the image.</li>\n        <li>1 point for computing U, Sigma, and V</li>\n    </ul>\n</p>\n</font>"}
︠740a287a-842b-4257-94d7-764c548982cas︠

# Actual solution to 3.a (actual solution)
from scipy.ndimage import imread
import matplotlib.pyplot as plt
imgmat = imread("lion.jpg", flatten=True)
U, sigma, V = np.linalg.svd(imgmat)
k = 10
reconstimg = np.matrix(U[:, :k]) * np.diag(sigma[:k]) * np.matrix(V[:k, :])
lion = plt.imshow(reconstimg, cmap='gray')
plt.show()
︡98b995a5-4ca9-4b95-85fd-7454d1b10837︡{"file":{"filename":"0a23522b-f329-472f-9f42-cb511a1ba0f8.svg","show":true,"text":null,"uuid":"1053d7b0-636c-431f-a735-5a99ed998178"},"once":false}︡{"done":true}︡
︠9da7b2f3-3d80-4aab-90da-fb5c61d7e4fdi︠
%md
#### (Problem 3.b) Examining the results
- Qualitatively, how well do you think the SVD compression with 10 vectors does at preserving the original image? Can you still tell what it's a picture of?

︡73dba335-4ba6-49d3-9ce7-4e01df510058︡{"done":true,"md":"#### (Problem 3.b) Examining the results\n- Qualitatively, how well do you think the SVD compression with 10 vectors does at preserving the original image? Can you still tell what it's a picture of?"}
︠f87b8ff8-cb17-412e-af37-615113c437f4i︠
%html
<font color="red">
<h4>Part B (2 points)</h4>
<p>Award:
    <ul>
        <li>2 points for answering the question completely</li>
    </ul>
</p>
</font>
︡46cf0252-72e7-492c-b9a8-cbc0cc6d0c29︡{"done":true,"html":"<font color=\"red\">\n<h4>Part B (2 points)</h4>\n<p>Award:\n    <ul>\n        <li>2 points for answering the question completely</li>\n    </ul>\n</p>\n</font>"}
︠637a5e89-4a2e-4542-acb7-94516e4b7e1ais︠
# Solution 3.b
%md
It does a decent job but the quality is terrible. It's still clear that it's a [lion], though.
︡c6d64329-fba7-40a8-8acf-584206fa9f98︡{"hide":"input"}︡{"md":"It does a decent job but the quality is terrible. It's still clear that it's a [lion], though."}︡{"done":true}︡
︠618838c0-4ce6-47e7-9785-a1ba54813c89s︠

︡17de44a1-1b58-4e14-aa9d-395d8a469e73︡{"done":true}︡
︠639f8f45-265c-4992-891d-e1296b9a3f6bi︠
%md

#### (Problem 3.c) Further analysis
- What's the total combined size (number of entries) of the parts of U, Sigma and V that were used to reconstruct the image in part 1?
- What's the total size (number of entries) of the original matrix? What's the compression ratio?
︡fcae587f-e77d-4da4-91b6-b10f3197ef82︡{"done":true,"md":"\n#### (Problem 3.c) Further analysis\n- What's the total combined size (number of entries) of the parts of U, Sigma and V that were used to reconstruct the image in part 1?\n- What's the total size (number of entries) of the original matrix? What's the compression ratio?"}
︠512645e5-2001-413c-9b11-fbc2f70db384i︠
%html
<font color="red">
<h4>Part C (10 points)</h4>
<p>Award:
    <ul>
        <li>5 points for computing some values of uncompressed and compressed sizes.</li>
        <li>5 points for computing the correct values based on the size of their image.</li>
    </ul>
</p>
</font>
︡215b0591-8705-4fbd-a271-f6bdc22a9b69︡{"done":true,"html":"<font color=\"red\">\n<h4>Part C (10 points)</h4>\n<p>Award:\n    <ul>\n        <li>5 points for computing some values of uncompressed and compressed sizes.</li>\n        <li>5 points for computing the correct values based on the size of their image.</li>\n    </ul>\n</p>\n</font>"}
︠f99aac69-ba47-492d-ab09-6ebddbd4bc19︠
# Solution 3.c
# Original length * k + k + Original width * k
# Add a k due to the diagonal
compressed = 375 * 10 + 10 + 400 * 10
# Original size
uncompressed = 375 * 400
ratio = (uncompressed / compressed)
N(ratio)
︡6d8a092f-c739-467a-9d6a-af3148416ccd︡{"stdout":"19.3298969072165\n"}︡{"done":true}︡
︠d9977c0f-f7de-4a9d-91ba-a8aaf83f14b9s︠

︡222abb84-39a0-4ae4-8731-5e25a4b6573c︡{"done":true}︡
︠229c1b5b-a227-41ff-8965-ee698871fe80i︠
%md
#### (Problem 3.d) Messing around
- Try fiddling with the value of $k$ (using more or less of the SVD vectors to reconstruct the image).
- How many of the SVD vectors do you need to use before the compressed version is indistinguishable from the original?
︡54e920ea-eb97-4601-b629-c9a3c7bb91e0︡{"done":true,"md":"#### (Problem 3.d) Messing around\n- Try fiddling with the value of $k$ (using more or less of the SVD vectors to reconstruct the image).\n- How many of the SVD vectors do you need to use before the compressed version is indistinguishable from the original?"}
︠ae302e14-7d8d-4560-9140-7218f099a90ai︠
%html
<font color="red">
<h4>Part D (5 points)</h4>
<p>Award:
    <ul>
        <li>5 points for having a complete response which seems reasonable. (eg. They have an image that looks like the original)</li>
    </ul>
</p>
</font>
︡d367602c-9602-491f-94f9-d304d3b531d2︡{"done":true,"html":"<font color=\"red\">\n<h4>Part D (5 points)</h4>\n<p>Award:\n    <ul>\n        <li>5 points for having a complete response which seems reasonable. (eg. They have an image that looks like the original)</li>\n    </ul>\n</p>\n</font>"}
︠6d60bd18-5552-4f9e-815b-fbca18b77564s︠
# Solution 3.d
k = 25
reconstimg = np.matrix(U[:, :k]) * np.diag(sigma[:k]) * np.matrix(V[:k, :])
lion = plt.imshow(reconstimg, cmap='gray')
plt.show()
︡77e5688d-acea-499d-ab94-13fa105a0d64︡{"file":{"filename":"10c732d2-8471-409c-9a3b-af826c473658.svg","show":true,"text":null,"uuid":"24aa165c-c103-4b06-bf17-1b4e20f5911c"},"once":false}︡{"done":true}︡
︠f4c37c6b-08ca-43a8-9d26-b86aa4177a4cs︠
︡9779ffc8-92c0-4dd8-b56f-0cdd9ae4952f︡{"done":true}︡
︠22818698-4ddf-4d2e-ae00-2b4a1bed4ebcs︠

︡242dde20-e9af-4c4c-9187-fc36f42368fa︡{"done":true}︡
︠9605ca50-b7cc-49ea-926a-082b5000b05as︠

︡95e807e9-60f1-43fb-8954-bc75da97b7f2︡{"done":true}︡
︠06ae0706-a4ca-4f64-beca-0b922321943ds︠

︡4ac21cd6-0b31-4e25-a16c-db3e1cbe2bb0︡{"done":true}︡
︠d9959056-5684-44d7-bbc0-611a35eb43f1s︠

︡d0789c2f-bb67-479e-b4e1-220c352ca393︡{"done":true}︡










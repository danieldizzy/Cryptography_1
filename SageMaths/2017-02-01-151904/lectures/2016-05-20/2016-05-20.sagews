︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-05-20
### William Stein

## **Lectures 24: Matplotlib Pyplot vs Sage vs MATLAB**

Notes:
1. Homework and peer grading due at 6pm tonight.
2. I wrote a lot more about numpy on Wednesday; read it yourself.
3. (Start screencast!) Today -- matplotlib for a while
4. Then work on homework

︡70e03e40-9a05-428f-83b3-b56d801d9744︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-05-20\n### William Stein\n\n## **Lectures 24: Matplotlib Pyplot vs Sage vs MATLAB**\n\nNotes:\n1. Homework and peer grading due at 6pm tonight.\n2. I wrote a lot more about numpy on Wednesday; read it yourself.\n3. (Start screencast!) Today -- matplotlib for a while\n4. Then work on homework"}
︠b47224ed-55b9-46ca-8e50-ca0c98618e37i︠
%md
We follow http://matplotlib.org/users/pyplot_tutorial.html, and shows how to use the MATLAB-stype interface to matplotlib.
We will cover topics:

 - plot: plotting a list of values
 - array of plots: axes and figures
︡1739b431-557b-420e-bec9-3a5b0cb8297b︡{"done":true,"md":"We follow http://matplotlib.org/users/pyplot_tutorial.html, and shows how to use the MATLAB-stype interface to matplotlib.\nWe will cover topics:\n\n - plot: plotting a list of values\n - array of plots: axes and figures"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8s︠
%auto
import numpy as np
import matplotlib.pyplot as plt
︡03bf1640-412e-4ab3-bb03-8574fabe8ac1︡{"done":true}︡
︠4bb43c3f-c0fd-4d52-81fa-df00c19fc40ei︠
%md
### 1. Plot
︡875da88b-6ef5-43cf-a63f-0d33b7016f67︡{"done":true,"md":"### 1. Plot"}
︠8528f50a-3596-49da-8e14-15c07d1c2c36s︠
plt.plot([1,2,3,10])
plt.show()
︡6f92bb7f-90ba-4983-95e2-aee52ad925a8︡{"stdout":"[<matplotlib.lines.Line2D object at 0x7f1713324fd0>]\n"}︡{"file":{"filename":"ab43c541-a56c-4e49-8275-7fdf566a459d.svg","show":true,"text":null,"uuid":"c471776e-a801-4278-9592-f745f0b32cbd"},"once":false}︡{"done":true}︡
︠a3dd925e-0a00-4b0b-976d-d6b22ab014bei︠
%md
MPL's `plt.plot` is VERY different than Sage's plot!

`plt.plot(x values, y yalues, options, [repeat])`
︡a1fc9a9d-b328-434c-9006-f66342ac3f23︡{"done":true,"md":"MPL's `plt.plot` is VERY different than Sage's plot!\n\n`plt.plot(x values, y yalues, options, [repeat])`"}
︠5ab20613-e7f2-46f3-a3a9-4d512cea40d5s︠
plt.plot([1,2,3,10], [0,2,4,6], 'ro-')
plt.show()
︡838ac583-4f3c-4f38-8598-4eabe9118ac3︡{"stdout":"[<matplotlib.lines.Line2D object at 0x7f17133627d0>]\n"}︡{"file":{"filename":"bcd8d209-bd6a-4bb1-9135-d4c685f6e9a0.svg","show":true,"text":null,"uuid":"bf6b60ca-11cc-4f93-8d31-d22edda9f884"},"once":false}︡{"done":true}︡
︠1e37e1f3-faf3-42f7-a7f5-d0ecccb09ceei︠
%md
In Sage, you use the `line` command instead, and have to put the points together (using zip).

Also, in Sage, use `frame=True` to draw a frame instead of $x,y$-axes.

︡916cd967-59a1-4a6f-b543-b5cde5d6073c︡{"done":true,"md":"In Sage, you use the `line` command instead, and have to put the points together (using zip).\n\nAlso, in Sage, use `frame=True` to draw a frame instead of $x,y$-axes."}
︠175c2248-be54-47bd-945b-58adbfa6fe89s︠
show( line(zip([1,2,3,10], [0,2,4,6]), color='red', marker='o'), frame=True)
︡17e19db7-ee63-462d-a2a6-645cff3f6a9b︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/9575/tmp_XHAD8O.svg","show":true,"text":null,"uuid":"f87cc198-3965-4947-83f8-286105b41e1f"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠9a6bfdc6-b876-49eb-a0e0-6fee6f0bed0as︠
# Another example with two curves:

x = np.linspace(-2*np.pi, 2*np.pi)    # remember from wednesday
y1 = np.sin(x)                        # apply function to array is entry wise.
y2 = np.cos(x)

plt.plot(x,y1, x,y2)                  # give x and corresponding y's
plt.show()
︡e0f66a4a-8acc-46e8-b483-fbe132050d96︡{"stdout":"[<matplotlib.lines.Line2D object at 0x7f17131778d0>, <matplotlib.lines.Line2D object at 0x7f1713122d90>]\n"}︡{"file":{"filename":"32a6744e-74c0-4bd1-9453-6ae5e2cc30c2.svg","show":true,"text":null,"uuid":"3b67ad1c-4465-4a99-b6fc-a28104b48e3b"},"once":false}︡{"done":true}︡
︠385a43a6-51a8-4e18-b48c-65317e35ad84i︠
%md
This is similar to MATLAB! -- see http://www.mathworks.com/help/matlab/ref/plot.html

<img src="matlab.png" width=600>
︡ec566fed-57f0-4f80-a343-b8e12e6ee149︡{"done":true,"md":"This is similar to MATLAB! -- see http://www.mathworks.com/help/matlab/ref/plot.html\n\n<img src=\"matlab.png\" width=600>"}
︠da176d67-0b14-4f45-b158-229b872a1ad3i︠
%md
Guess what this will do?
︡1d8f76e3-1710-482e-9d8f-dab4e6655f21︡{"done":true,"md":"Guess what this will do?"}
︠a4be7741-4523-48cc-9155-322ada32c1fcs︠
t = np.arange(0, 5, 0.2)
plt.plot(t, t, 'r--', t, t**2, 'bs', t, t**3, 'g^')
plt.show()
︡7b8126b3-c19d-4a6c-9db6-549dc84e636f︡
︠b94574ef-16ef-4146-beca-8673c0f7ff89i︠
%md
What will this do?
︡0958ad53-f274-4610-aec2-cda38004e6ba︡{"done":true,"md":"What will this do?"}
︠4b7cb74e-49ba-4bc7-979a-d1934ae3f471s︠
plt.plot(t, t**3 + t, 'g', linewidth=3)
plt.show()
︡8bfd06ce-3563-484c-8659-bd3dc3096d3c︡
︠25ffbd77-8dba-467f-856f-b7a4c5cee300i︠
%md
**Exercise:**
Plot the polynomial $x^4 + 2x - 1$ using both matplotlib and Sage's plot commands, for $-3\leq x \leq 3$.
︡b5d93949-b776-4c16-be08-dd07739569e0︡{"done":true,"md":"**Exercise:**\nPlot the polynomial $x^4 + 2x - 1$ using both matplotlib and Sage's plot commands, for $-3\\leq x \\leq 3$."}
︠3b9d6986-9290-464f-bfd1-9b8d0d9f012e︠

︠cbdc1d00-2840-4627-84dc-f2fc7d5d70d9︠

︠d3bcd36b-97a2-4ef9-b92e-6865325f82c2i︠
%md
### 2. Figures and Axes
︡58aa8165-a746-4ae9-89f8-f319d65dce95︡{"done":true,"md":"### 2. Figures and Axes"}
︠45c65b88-891e-4f1f-8571-337f5d3fae08s︠
def f(t):
    return np.exp(-t) * np.cos(2*np.pi*t)

def makefigure():
    t1 = np.arange(0, 5, 0.1)
    t2 = np.arange(0, 5, 0.02)

    plt.subplot(221)    # 2=numrows, 1=numcols, 1=fignum (which is from 1 to numrows*numcols)
    plt.plot(t1, f(t1), 'bo', t2, f(t2), 'k')

    plt.subplot(222)    # 2=numrows, 1=numcols, 2=fignum... (yes, MATLAB is horrible.)
    plt.plot(t2, np.cos(2*np.pi*t2), 'r--')

    plt.subplot(223)    # 2=numrows, 1=numcols, 2=fignum... (yes, MATLAB is horrible.)
    plt.plot(t2, np.cos(2*np.pi*t2), 'r--')

    plt.subplot(224)    # 2=numrows, 1=numcols, 2=fignum... (yes, MATLAB is horrible.)
    plt.plot(t2, np.cos(2*np.pi*t2), 'r--')

    plt.show()

makefigure()
︡fcb3cab6-d11d-4b95-97a7-9d22624d1ff5︡{"file":{"filename":"8d75eed2-5747-475b-8f53-0b51c39ef6f0.svg","show":true,"text":null,"uuid":"42c9759e-2705-41f7-b01d-12243da291d9"},"once":false}︡{"done":true}︡
︠496cbb8c-172f-465b-9d3f-deddcb086678i︠
%md
**Exercise:** Copy the above code and instead make a 2x4 grid of plots (instead of a 2x1 grid).
Just put whatever plots you want in.
︡f8a32c12-6451-4294-bc7e-a21bd40663a4︡{"done":true,"md":"**Exercise:** Copy the above code and instead make a 2x4 grid of plots (instead of a 2x1 grid).\nJust put whatever plots you want in."}
︠ee303ca6-72ca-4567-82fd-501f3b444809s︠
def f(t):
    return np.exp(-t) * np.cos(2*np.pi*t)

def makefigure():
    t1 = np.arange(0, 5, 0.1)
    t2 = np.arange(0, 5, 0.02)

    # MODIFY THIS CODE:

    plt.subplot(211)    # 2=numrows, 1=numcols, 1=fignum (which is from 1 to numrows*numcols)
    plt.plot(t1, f(t1), 'bo', t2, f(t2), 'k')

    plt.subplot(212)    # 2=numrows, 1=numcols, 2=fignum... (yes, MATLAB is horrible.)
    plt.plot(t2, np.cos(2*np.pi*t2), 'r--')

    plt.show()

makefigure()



︡1459b50f-5dbd-4116-a900-71dccf778b8d︡
︠f73e2f8f-ae8f-4700-8493-6042dba1c680i︠
%md
In Sage, there is graphics_array ([inspired by Mathematica...](https://reference.wolfram.com/language/ref/GraphicsArray.html)) to do the above grid layout.
︡10b0cc07-0e79-4117-8a80-0c751834b934︡{"done":true,"md":"In Sage, there is graphics_array ([inspired by Mathematica...](https://reference.wolfram.com/language/ref/GraphicsArray.html)) to do the above grid layout."}
︠94a5d06e-3994-4124-93de-0c6372120955s︠
%var t
g1 = plot(exp(-t)*cos(2*pi*t), 0, 5)
g2 = plot(cos(2*pi*t), 0, 5)
show(graphics_array([[g1,g2,g1], [g2,g1,g1]]), frame=True)
︡1c3c0c88-d904-434e-9851-0bbcbff0c034︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/9575/tmp_T9qQe_.svg","show":true,"text":null,"uuid":"335d7604-4b0f-4b77-bb01-0f3cb74c83c4"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠d9ab2ed5-a4b4-47c3-8253-ee948fb849c8i︠
%md
**Exercise:** modify the above code to make a 2x2 array of plots using Sage plotting.
︡40466a5b-b7d9-42e4-9a5f-81368969bdcc︡{"done":true,"md":"**Exercise:** modify the above code to make a 2x2 array of plots using Sage plotting."}
︠4aaea0c8-ad28-45e0-94c4-ab79060e6c96︠
# EDIT ME!
%var t
g1 = plot(exp(-t)*cos(2*pi*t), 0, 5)
g2 = plot(cos(2*pi*t), 0, 5)
show(graphics_array([[g1], [g2]]), frame=True)
︠1e49deff-fbab-4328-bbe8-26b592adc28e︠










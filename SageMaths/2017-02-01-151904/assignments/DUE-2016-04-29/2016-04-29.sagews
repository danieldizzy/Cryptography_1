︠badc5022-76bf-4f98-8aa0-bbdabcdfb0e1︠
%md
# Math 480 - Homework 4: Due 6pm on April 29, 2016
︡f8a01199-1fe9-4723-8641-9d5fc14ef4c9︡︡{"done":true,"md":"# Math 480 - Homework 4: Due 6pm on April 29, 2016"}
︠1fe68ebb-02c8-41a8-b399-6d9556294267i︠
%md
**There are several problems and all have equal weights.**

Solve each problem using Sage unless otherwise indicated.   In particular, if there is some calculus question, which you could easily
do by hand or in your head, you should still show exactly how to solve it using Sage if possible.  Of course, do think with your brain!

For any part that asks for a symbolic result, use `show(...)`, so the output is easier for us to read.
︡4bed8dd2-c713-4c56-a165-2b1858697cfe︡︡{"done":true,"md":"**There are several problems and all have equal weights.**\n\nSolve each problem using Sage unless otherwise indicated.   In particular, if there is some calculus question, which you could easily\ndo by hand or in your head, you should still show exactly how to solve it using Sage if possible.  Of course, do think with your brain!\n\nFor any part that asks for a symbolic result, use `show(...)`, so the output is easier for us to read."}
︠d3f27130-648f-45c5-b3a9-9b6e78786766i︠
%md
### Problem 1 -- defining and evaluating a function:
1. Define in Sage $f(x) = \sinh(x^2+\sqrt{x-1}) + e^{\pi x} + \arcsin(x) + \frac{1}{x^3-x-e}$.
2. Compute $f(1/2)$ symbolically (exactly).
3. Compute $f(1/2)$ numerically (so a decimal expansion).
4. Plot $f(x)$ from $-1$ to $1$.
︡a4f01e9d-0955-4db1-aa25-18d96406f14b︡︡{"done":true,"md":"### Problem 1 -- defining and evaluating a function:\n1. Define in Sage $f(x) = \\sinh(x^2+\\sqrt{x-1}) + e^{\\pi x} + \\arcsin(x) + \\frac{1}{x^3-x-e}$.\n2. Compute $f(1/2)$ symbolically (exactly).\n3. Compute $f(1/2)$ numerically (so a decimal expansion).\n4. Plot $f(x)$ from $-1$ to $1$."}
︠592aed05-e74e-40d5-9079-7d0c224c1f85︠
# Solution:
# 1.
f(x) = x # ... Replace x with the correct function code


show(f)
︠40e3cae7-73f6-45b2-9a21-1cbe42eff9e0︠
# 2.
f(x) = x # ... Copy from above


︠85cb8522-8dbe-4476-a3e7-a7cde9b6a32e︠
# 3.
f(x)


︠e8f7b5aa-b57e-4ccf-a1bb-fbf6cd64b485︠
# 4.
f(x)


︠fd260e23-378c-4b97-976a-5e409e0f2308i︠
%md
### Problem 2 -- finding zeros numerically:
Let $f(x) = \displaystyle x^2 + \sin(x)$
1. Draw a plot of $f$ on the interval $[-2,2]$.
1. Differentiate $f$
1. Integrate $f$
1. Find **all** the zeros of $f(x)$ numerically.
︡05755c88-53e2-4182-b16e-7ccd88e160f4︡︡{"done":true,"md":"### Problem 2 -- finding zeros numerically:\nLet $f(x) = \\displaystyle x^2 + \\sin(x)$\n1. Draw a plot of $f$ on the interval $[-2,2]$.\n1. Differentiate $f$\n1. Integrate $f$\n1. Find **all** the zeros of $f(x)$ numerically."}
︠5823689d-8e62-4f19-a16f-ddebfe5423d0︠
# 1




︠c487e338-2150-4e57-9f0a-d88e8850d96d︠
# 2




︠06af5dc4-2032-4b46-9401-2965d218defd︠
# 3




︠8b4764b7-b90d-4239-b4b8-49966d1558c3︠
#4




︠56ea4616-31fd-4b50-945c-0e4fd8349d99︠
%md
### Problem 3 (Original Version) -- The Cauchy Distribution
Let $\displaystyle\space f(x;\space x_0,\space\gamma) = \frac{1}{\pi\gamma}\left[\frac{\gamma^2}{(x - x_0)^2 + \gamma^2}\right]$
1. Plot and find the area under the curve of $f([-2, 2])$ for the following values of $x_0$ and $\gamma$ on the interval $x = [-4,4]$
 - $x_0 = 0,\hspace{3mm} \gamma = 1$
 - $x_0 = 2,\hspace{3mm} \gamma = 2$
 - $x_0 = 0,\hspace{3mm} \gamma = 0.5$
1. Integrate $f$ from $-\infty$ to $x$ using the dummy variable $t$ as in $f(t;\space x_0,\space\gamma)$.
1. Plot the resulting function from 3 for $x_0 = 0,\hspace{3mm} \gamma = 0.5$.

All plots should be separate.
︡54475f55-ba9a-4788-8337-5b929a219e84︡︡{"done":true,"md":"### Problem 3 -- The Cauchy Distribution\nLet $\\displaystyle\\space f(x;\\space x_0,\\space\\gamma) = \\frac{1}{\\pi\\gamma}\\left[\\frac{\\gamma^2}{(x - x_0)^2 + \\gamma^2}\\right]$\n1. Plot and find the area under the curve of $f([-2, 2])$ for the following values of $x_0$ and $\\gamma$ on the interval $x = [-4,4]$\n - $x_0 = 0,\\hspace{3mm} \\gamma = 1$\n - $x_0 = 2,\\hspace{3mm} \\gamma = 2$\n - $x_0 = 0,\\hspace{3mm} \\gamma = 0.5$\n1. Integrate $f$ from $-\\infty$ to $x$ using the dummy variable $t$ as in $f(t;\\space x_0,\\space\\gamma)$.\n1. Plot the resulting function from 3 for $x_0 = 0,\\hspace{3mm} \\gamma = 0.5$.\n\nAll plots should be separate."}
︠df08c50d-f68d-4426-aaf7-f66fb3186eaai︠
%md
### Problem 3 (Rewritten by William Stein) -- The Cauchy Distribution

Let
$$
\displaystyle\space f(x;\space x_0,\space\gamma) = \frac{1}{\pi\gamma}\left[\frac{\gamma^2}{(x - x_0)^2 + \gamma^2}\right].
$$
Thus for any specific choice of parameters $x_0, \gamma \in \RR$, we obtain a real-valued function of a real variable $x$.
See https://en.wikipedia.org/wiki/Cauchy_distribution for a discussion of the basic properties of this function.

1. **Illustrate the probability** something is between $-2$ and $2$: Below we give three choices of parameters $x_0$ and $\gamma$.  Each determines a function $g(x) = f(x; x_0, \gamma)$ of a real variable.  For each of these functions, (1) draw a plot of $g$ on the interval $[-4,4]$, then (2) in that plot from (1) show a grey fill that illustrates the area under $g$ on the interval $[-2,2]$, and finally (3) numerically approximate that area (the result should be a positive floating point number).   As a double check, make sure that the area you computed in (3) match what it looks like from your plot in (2).
 - $x_0 = 0,\hspace{3mm} \gamma = 1$
 - $x_0 = 2,\hspace{3mm} \gamma = 2$
 - $x_0 = 0,\hspace{3mm} \gamma = 0.5$
2. Compute the **cummulative distribution function**: Symbolically compute the function $F(x; x_0, \gamma) = \int_{-\infty}^{x} f(t; x_0, \gamma) dt$.   The result will be a function of $x$ again.  Here $t$ is just a dummy parameter.
3. Plot the resulting cummulative distribution function $F(x; x_0, \gamma)$ from part 2 with $x_0 = 0,\hspace{3mm} \gamma = 0.5$.

All plots should be separate.
︡52971bf8-bbfc-47ce-8426-76c2c75ca744︡︡{"done":true,"md":"### Problem 3 (Rewritten by William Stein) -- The Cauchy Distribution\n\nLet\n$$\n\\displaystyle\\space f(x;\\space x_0,\\space\\gamma) = \\frac{1}{\\pi\\gamma}\\left[\\frac{\\gamma^2}{(x - x_0)^2 + \\gamma^2}\\right].\n$$\nThus for any specific choice of parameters $x_0, \\gamma \\in \\RR$, we obtain a real-valued function of a real variable $x$.\nSee https://en.wikipedia.org/wiki/Cauchy_distribution for a discussion of the basic properties of this function.\n\n1. **Illustrate the probability** something is between $-2$ and $2$: Below we give three choices of parameters $x_0$ and $\\gamma$.  Each determines a function $g(x) = f(x; x_0, \\gamma)$ of a real variable.  For each of these functions, (1) draw a plot of $g$ on the interval $[-4,4]$, then (2) in that plot from (1) show a grey fill that illustrates the area under $g$ on the interval $[-2,2]$, and finally (3) numerically approximate that area (the result should be a positive floating point number).   As a double check, make sure that the area you computed in (3) match what it looks like from your plot in (2).\n - $x_0 = 0,\\hspace{3mm} \\gamma = 1$\n - $x_0 = 2,\\hspace{3mm} \\gamma = 2$\n - $x_0 = 0,\\hspace{3mm} \\gamma = 0.5$\n2. Compute the **cummulative distribution function**: Symbolically compute the function $F(x; x_0, \\gamma) = \\int_{-\\infty}^{x} f(t; x_0, \\gamma) dt$.   The result will be a function of $x$ again.  Here $t$ is just a dummy parameter.\n3. Plot the resulting cummulative distribution function $F(x; x_0, \\gamma)$ from part 2 with $x_0 = 0,\\hspace{3mm} \\gamma = 0.5$.\n\nAll plots should be separate."}
︠aa14733d-fc5e-466c-abec-be7502484270︠

︠e42f24fd-2f7a-4005-a580-87cd48a21f31︠







︠bd56ab4c-fffc-4d06-a6ce-8d6344f19451i︠
%md
### Problem 4 -- a function with no elementary antiderivative:
Let $f(x) = \sin(x^2) + \exp(1/x)$
1. Draw a plot of $f$ on the interval $[1/2, 4]$.
1. Differentiate $f$
1. Integrate $f$

︡c8444901-8b00-44b4-9c95-d35f3f86a6e3︡︡{"done":true,"md":"### Problem 4 -- a function with no elementary antiderivative:\nLet $f(x) = \\sin(x^2) + \\exp(1/x)$\n1. Draw a plot of $f$ on the interval $[1/2, 4]$.\n1. Differentiate $f$\n1. Integrate $f$"}
︠a9f23765-1c20-4592-a696-5a77c91a12a3︠






︠625a9f83-8fc2-467c-a926-1833252da1e9i︠
%md
### Problem 5 -- Limits

1. Compute $\lim_{x\to 0} \sin(x)/x$
1. Use Sage to verify that strange and amazing fact $\lim_{x\to 0} (\cos x)^{1/x^2} = \frac{1}{\sqrt{e}}$.


︡fe6680c2-8423-436a-9408-7f67e357676c︡︡{"done":true,"md":"### Problem 5 -- Limits\n\n1. Compute $\\lim_{x\\to 0} \\sin(x)/x$\n1. Use Sage to verify that strange and amazing fact $\\lim_{x\\to 0} (\\cos x)^{1/x^2} = \\frac{1}{\\sqrt{e}}$."}
︠6558c17a-1320-4314-b2e2-bb951b3b4fa5︠
# Solution






︠9d1a61e6-9c5c-4021-9ddf-19f7a1a13aefi︠
%md
### Problem 6 -- Taylor Series
Let $f(x) = \sin(x^2)$
1. Find the 3rd degree taylor series, $p_3(x)$, of $f$ where $x_0 = 2\pi$
1. Plot on the interval $x=[\pi, 3\pi]$, the 10th degree taylor series $p_{10}(x)$ where $x_0 = 2\pi$ alongside $f$
︡︡{"done":true,"md":"### Problem : Ta︡︡{"done":true,"md":"### Problem 6 -- Taylor Series\nLet $f(x) = \\sin(x^2)$\n1. Find the 3rd degree taylor series, $p_3(x)$, of $f$ where $x_0 = 2\\pi$\n1. Plot on the interval $x=[\\pi, 3\\pi]$, the 10th degree taylor series $p_{10}(x)$ where $x_0 = 2\\pi$ alongside $f$"}
︠b680b8d8-7211-4499-b4a8-f5e4062a6647︠







︠abd1a807-652a-4ccb-b1da-28bb51571c22︠

%md
### Problem 7 -- Gradient Vector Field:
1. Compute the gradient of $f(x,y) = 3\sin(x) - 2\cos(2y) - x - y$.
2. Plot the 2-dimensional vector field defined by the gradient of $f$ in the rectangle $(-2,-2) \leq (x,y) \leq (2,2)$.

︡f7b7cb0a-85d9-4a1d-9501-0f0aa4818a5d︡︡{"done":true,"md":"### Problem 7 -- Gradient Vector Field:\n1. Compute the gradient of $f(x,y) = 3\\sin(x) - 2\\cos(2y) - x - y$.\n2. Plot the 2-dimensional vector field defined by the gradient of $f$ in the rectangle $(-2,-2) \\leq (x,y) \\leq (2,2)$."}
︠79fa6f82-445f-4f3b-b551-e544d1a01b11︠



︠edc36c3a-5862-4693-8ee8-43ca37e36047i︠


%md
### Problem 8 -- Symbolic Sums:

1. Compute $\sum_{n=1}^{\infty} \frac{(-1)^n}{n}$.
2. Compute $\sum_{n=1}^{\infty} \frac{1}{n^2}$.
3. Compute $\sum_{n=1}^{\infty} \frac{1}{n^3}$ both symbolically (in terms of the Riemann Zeta function) and numerically.
4. Compute $\sum_{n=1}^{\infty} \frac{1}{n^4}$.
5. Compute $\sum_{n=1}^k \sin(n)$.


︡1a2790e5-37d4-4b6d-ae2e-174235fdd460︡︡{"done":true,"md":"### Problem 8 -- Symbolic Sums:\n\n1. Compute $\\sum_{n=1}^{\\infty} \\frac{(-1)^n}{n}$.\n2. Compute $\\sum_{n=1}^{\\infty} \\frac{1}{n^2}$.\n3. Compute $\\sum_{n=1}^{\\infty} \\frac{1}{n^3}$ both symbolically (in terms of the Riemann Zeta function) and numerically.\n4. Compute $\\sum_{n=1}^{\\infty} \\frac{1}{n^4}$.\n5. Compute $\\sum_{n=1}^k \\sin(n)$."}
︠19334af0-c232-4e29-8901-e265a46a2ed1︠
# Solution




︠c249004b-e69b-4a3b-af4c-d59358b1003ci︠

%md
### Problem 9 -- Unit Conversion:

Use Sage's units functionality (written by a UW undergrad -- David Ackerman!)

1. Convert 68 degrees Fahrenheit to Celcius.  Hint: use `68*units.temperature.fahrenheit` to define fahrenheit.
2. Convert 15 milliseconds to hours.
3. Convert 2016 degrees kelvins to degrees Fahrenheit.
4. Convert 9.8 meters per second squared to feet per second squared.
︡f550c321-066f-45ed-8ec7-d41f5a9d8b0f︡︡{"done":true,"md":"### Problem 9 -- Unit Conversion:\n\nUse Sage's units functionality (written by a UW undergrad -- David Ackerman!)\n\n1. Convert 68 degrees Fahrenheit to Celcius.  Hint: use `68*units.temperature.fahrenheit` to define fahrenheit.\n2. Convert 15 milliseconds to hours.\n3. Convert 2016 degrees kelvins to degrees Fahrenheit.\n4. Convert 9.8 meters per second squared to feet per second squared."}
︠db11f908-6024-4844-8d81-07c4af943a7e︠
# Solution:





︠7a5a91ee-a204-45eb-9539-c0cc221c5560i︠

%md
### Problem 10 -- 3d Plotting:

1. Draw a 3d plot of a torus.
1. Draw a single 3d plot containing the five regular polytopes in it: tetrahedron, cube, octahedron, dodecahedron, icosahedron.  All five must be visible.
1. Draw a 3d plot of the "Mexican hat function" (see, e.g., https://en.wikipedia.org/wiki/Mexican_hat_wavelet). [Hint: you have to make a choice of parameter $\sigma$ so that it looks like Mexican hat.]
︡9c0b465f-1cdc-446f-9d3d-89253782c5d9︡︡{"done":true,"md":"### Problem 10 -- 3d Plotting:\n\n1. Draw a 3d plot of a torus.\n1. Draw a single 3d plot containing the five regular polytopes in it: tetrahedron, cube, octahedron, dodecahedron, icosahedron.  All five must be visible.\n1. Draw a 3d plot of the \"Mexican hat function\" (see, e.g., https://en.wikipedia.org/wiki/Mexican_hat_wavelet). [Hint: you have to make a choice of parameter $\\sigma$ so that it looks like Mexican hat.]"}
︠8a905962-cdee-4e11-809f-8395725c3b51︠










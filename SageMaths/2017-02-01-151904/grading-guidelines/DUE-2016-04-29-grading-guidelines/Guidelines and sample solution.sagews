︠badc5022-76bf-4f98-8aa0-bbdabcdfb0e1i︠
%md
# Math 480 - Homework 4: Due 6pm on April 29, 2016
︡f8a01199-1fe9-4723-8641-9d5fc14ef4c9︡︡{"done":true,"md":"# Math 480 - Homework 4: Due 6pm on April 29, 2016"}
︠42de6753-4da0-4240-95df-e61d415f5c1bi︠
%html
<font color="red"><h1>HOMEWORK TOTAL: 100 POINTS</h1></font>
︡72b59bf9-d970-4bc3-b7b3-c8127e3593f6︡︡{"done":true,"html":"<font color=\"red\"><h1>HOMEWORK TOTAL: 100 POINTS</h1></font>"}
︠c28c3316-c4f6-4f73-815b-097b29fcb935i︠
%html
<font color="green"><h3>GRADING GUIDELINES</h3>
    For this homework assignment:
    <ul>
        <li>Take off 5 points if they did not use `show()` as in the directions.</li>
        <li>Grade points for each question based on output. Check if output is similar to this solution guide.</li>
        <li>If they typed the wrong function for a problem but their procedure looks correct, only take off points for having the wrong function.</li>
        <li>Award half credit to any part where they did not use Sage (ie. they solved by hand and typed the result in)</li>
    </ul>
</font>
︡cfee43cd-5a2a-4312-a4f1-aef4876d2b96︡︡{"done":true,"html":"<font color=\"green\"><h3>GRADING GUIDELINES</h3>\n    For this homework assignment:\n    <ul>\n        <li>Take off 5 points if they did not use `show()` as in the directions.</li>\n        <li>Grade points for each question based on output. Check if output is similar to this solution guide.</li>\n        <li>If they typed the wrong function for a problem but their procedure looks correct, only take off points for having the wrong function.</li>\n        <li>Award half credit to any part where they did not use Sage (ie. they solved by hand and typed the result in)</li>\n    </ul>\n</font>"}
︠d3f27130-648f-45c5-b3a9-9b6e78786766i︠
%md
### Problem 1 -- defining and evaluating a function:
1. Define in Sage $f(x) = \sinh(x^2+\sqrt{x-1}) + e^{\pi x} + \arcsin(x) + \frac{1}{x^3-x-e}$.
2. Compute $f(1/2)$ symbolically (exactly).
3. Compute $f(1/2)$ numerically (so a decimal expansion).
4. Plot $f(x)$ from $-1$ to $1$.
︡a4f01e9d-0955-4db1-aa25-18d96406f14b︡︡{"done":true,"md":"### Problem 1 -- defining and evaluating a function:\n1. Define in Sage $f(x) = \\sinh(x^2+\\sqrt{x-1}) + e^{\\pi x} + \\arcsin(x) + \\frac{1}{x^3-x-e}$.\n2. Compute $f(1/2)$ symbolically (exactly).\n3. Compute $f(1/2)$ numerically (so a decimal expansion).\n4. Plot $f(x)$ from $-1$ to $1$."}
︠950ab537-e27d-4093-b267-558f44ecc3b3i︠
%html

<font color="red"><h2>10 Points Total</h2>
<h4>2 points per part; 2 points for completion</h4>
</font>
︡48192b2d-6ac8-4951-944e-1d1d4474bb74︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<h4>2 points per part; 2 points for completion</h4>\n</font>"}
︠3564bcc1-fe6c-4f73-bbfc-7d779d33f122︠
f(x) = sinh(x^2 + sqrt(x-1)) + e^(pi*x) + arcsin(x) + 1/(x^3 - x - e)
show(f)
show(f(1/2))
show(N(f(0.5)))
complex_plot(f, (-1, 1), (-1, 1))
︡bd88cc4f-0682-44fb-b429-14c62e06f33e︡︡{"html":"<div align='center'>$\\displaystyle x \\ {\\mapsto}\\ \\frac{1}{x^{3} - x - e} + \\arcsin\\left(x\\right) + e^{\\left(\\pi x\\right)} + \\sinh\\left(x^{2} + \\sqrt{x - 1}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{6} \\, \\pi - \\frac{8}{8 \\, e + 3} + e^{\\left(\\frac{1}{2} \\, \\pi\\right)} + \\sinh\\left(\\sqrt{-\\frac{1}{2}} + \\frac{1}{4}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle 5.20284206077875 + 0.670044049132845i$</div>"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/5197/tmp_3jRPEx.svg","show":true,"text":null,"uuid":"e8ae904c-b50d-4bf0-9706-58fcd849e396"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠ab0adc9a-ee0f-4eec-94a3-574a9185326a︠
︡3c40e19f-a88a-4513-9e87-a664eec94283︡︡{"done":true}
︠da6d392c-6d82-4829-81a5-4e014ea6ab70︠
%html

<font color="red"><h2>10 Points Total</h2>
<h4>2 points per part; 2 points for completion</h4>
</font>
︡2063852b-d456-4ed1-8723-fe246d2843fb︡
︠fd260e23-378c-4b97-976a-5e409e0f2308i︠
%md
### Problem 2 -- finding zeros numerically:
Let $f(x) = \displaystyle x^2 + \sin(x)$
1. Draw a plot of $f$ on the interval $[-2,2]$.
1. Differentiate $f$
1. Integrate $f$
1. Find **all** the zeros of $f(x)$ numerically.
︡05755c88-53e2-4182-b16e-7ccd88e160f4︡︡{"done":true,"md":"### Problem 2 -- finding zeros numerically:\nLet $f(x) = \\displaystyle x^2 + \\sin(x)$\n1. Draw a plot of $f$ on the interval $[-2,2]$.\n1. Differentiate $f$\n1. Integrate $f$\n1. Find **all** the zeros of $f(x)$ numerically."}
︠281d8728-2897-4f9a-afb7-d8ea7cd75b4fi︠
%html

<font color="red"><h2>10 Points Total</h2>
<h4>2 points for parts 1, 2, and 3. 4 points total for part 4 (2 points per root)</h4>
</font>
︡31dd2539-327a-43b7-b747-656261ca2a48︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<h4>2 points for parts 1, 2, and 3. 4 points total for part 4 (2 points per root)</h4>\n</font>"}
︠5823689d-8e62-4f19-a16f-ddebfe5423d0︠
f(x) = x^2 + sin(x)
plot(f, -2,2)
show(diff(f, x))
show(integrate(f, x))
f.find_root(-2,-1/2)
f.find_root(-1/2,1/2)
# (use brain) no other zeros because $x^2$ is big.
︡203ec35a-f1bd-4738-93aa-5bcb456c1a4c︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/5197/tmp_jB4fRz.svg","show":true,"text":null,"uuid":"2ca7375d-5063-4d59-a519-2c7236239b1e"},"once":false}︡{"html":"<div align='center'></div>"}︡{"html":"<div align='center'>$\\displaystyle x \\ {\\mapsto}\\ 2 \\, x + \\cos\\left(x\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle x \\ {\\mapsto}\\ \\frac{1}{3} \\, x^{3} - \\cos\\left(x\\right)$</div>"}︡{"stdout":"-0.8767262153950622\n"}︡{"stdout":"5.78218635220173e-23\n"}︡{"done":true}
︠9b4e9141-b94c-45b4-a348-3564a95de79f︠
︡c3c235da-a858-4e77-a237-52bea4784025︡︡{"done":true}
︠56ea4616-31fd-4b50-945c-0e4fd8349d99i︠
%md
### Problem 3 -- The Cauchy Distribution
Let $\displaystyle\space f(x;\space x_0,\space\gamma) = \frac{1}{\pi\gamma}\left[\frac{\gamma^2}{(x - x_0)^2 + \gamma^2}\right]$
1. Plot and find the area under the curve of $f([-2, 2])$ for the following values of $x_0$ and $\gamma$ on the interval $x = [-4,4]$
 - $x_0 = 0,\hspace{3mm} \gamma = 1$
 - $x_0 = 2,\hspace{3mm} \gamma = 2$
 - $x_0 = 0,\hspace{3mm} \gamma = 0.5$
1. Integrate $f$ from $-\infty$ to $x$ using the dummy variable $t$ as in $f(t;\space x_0,\space\gamma)$.
1. Plot the resulting function from 3 for $x_0 = 0,\hspace{3mm} \gamma = 0.5$.
︡54475f55-ba9a-4788-8337-5b929a219e84︡︡{"done":true,"md":"### Problem 3 -- The Cauchy Distribution\nLet $\\displaystyle\\space f(x;\\space x_0,\\space\\gamma) = \\frac{1}{\\pi\\gamma}\\left[\\frac{\\gamma^2}{(x - x_0)^2 + \\gamma^2}\\right]$\n1. Plot and find the area under the curve of $f([-2, 2])$ for the following values of $x_0$ and $\\gamma$ on the interval $x = [-4,4]$\n - $x_0 = 0,\\hspace{3mm} \\gamma = 1$\n - $x_0 = 2,\\hspace{3mm} \\gamma = 2$\n - $x_0 = 0,\\hspace{3mm} \\gamma = 0.5$\n1. Integrate $f$ from $-\\infty$ to $x$ using the dummy variable $t$ as in $f(t;\\space x_0,\\space\\gamma)$.\n1. Plot the resulting function from 3 for $x_0 = 0,\\hspace{3mm} \\gamma = 0.5$."}
︠826d3974-d414-4b9e-be3e-d5d1ad738ca6i︠
%html

<font color="red"><h2>10 Points Total</h2>
<h4>6 points for part 1 (1 for each plot, 1 for each value)</h4>
<h4>3 points for part 2</h4>
<h4>1 points for part 3</h4>

</font>
︡ee026f3b-1c68-4a0d-bd21-45b93d4423ba︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<h4>6 points for part 1 (1 for each plot, 1 for each value)</h4>\n<h4>3 points for part 2</h4>\n<h4>1 points for part 3</h4>\n\n</font>"}
︠f6fe3068-e767-4019-a293-6ec21ba6e286︠
# 1a.
gamma = 1
x_0 = 0
f(x) = 1/(pi*gamma) * (gamma^2/((x - x_0)^2 + gamma^2))
p = plot(f, -2, 2, fill=True) + plot(f, -4, 4)
show(p)
show(N(integral(f(x), x, -2, 2)))
show(integral(f, x, -2, 2))
︡57b2e6bc-f51c-42ab-933c-af673c2465b8︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/5197/tmp_qeTa4n.svg","show":true,"text":null,"uuid":"988af53c-706c-425e-ba60-e888a45221b5"},"once":false}︡{"html":"<div align='center'></div>"}︡{"html":"<div align='center'>$\\displaystyle 0.704832764699133$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{2 \\, \\arctan\\left(2\\right)}{\\pi}$</div>"}︡{"done":true}
︠ef856aa3-fc95-4999-b322-f373a72d9e0d︠
# 1b.
gamma = 2
x_0 = 2
f(x) = 1/(pi*gamma) * (gamma^2/((x - x_0)^2 + gamma^2))
p = plot(f, -2, 2, fill=True) + plot(f, -4, 4)
show(p)
show(N(integral(f, x, -2, 2)))
show(integral(f, x, -2, 2))
︡1a77af66-0ae4-4216-8e8a-1ae5beb20caa︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/5197/tmp_HUhJO0.svg","show":true,"text":null,"uuid":"1bc3a7ed-bd4e-461b-8552-ab7f09741047"},"once":false}︡{"html":"<div align='center'></div>"}︡{"html":"<div align='center'>$\\displaystyle 0.352416382349567$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{\\arctan\\left(2\\right)}{\\pi}$</div>"}︡{"done":true}
︠78a608e7-c2c7-4721-8e7b-86fd43bda877︠
# 1c.
gamma =0.5
x_0 = 0
f(x) = 1/(pi*gamma) * (gamma^2/((x - x_0)^2 + gamma^2))
p = plot(f, -2, 2, fill=True) + plot(f, -4, 4)
show(p)
show(N(integral(f, x, -2, 2)))
show(integral(f, x, -2, 2))
︡46a2727e-3fa0-4589-9ac8-122195abcbc3︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/5197/tmp_fyLx9d.svg","show":true,"text":null,"uuid":"83425416-cf93-4a99-9f1d-afcbfc63e80e"},"once":false}︡{"html":"<div align='center'></div>"}︡{"html":"<div align='center'>$\\displaystyle 0.844041739245261$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{2.0 \\, \\arctan\\left(4\\right)}{\\pi}$</div>"}︡{"done":true}
︠9f06d39f-faa2-493f-9054-8e33cb284cf4s︠
f(t, x_0, gamma) = 1/(pi*gamma) * (gamma^2/((t - x_0)^2 + gamma^2))
F(t, x_0, gamma) = integral(f(t, x_0, gamma), t, -oo, x)
show(F(t, x_0, gamma))
print ""
plot(integral(f(t, 0, 1/5), t, -oo, x),-4, 4)
print "Either plot is good."
plot(integral(f(t, 0, 1/5), t, -oo, x))
︡a4b71a16-75a0-4fc0-96a2-3e30ac5ec65c︡︡{"html":"<div align='center'>$\\displaystyle \\frac{\\gamma {\\left(\\frac{\\pi}{\\gamma} - \\frac{2 \\, \\arctan\\left(-\\frac{x - x_{0}}{\\gamma}\\right)}{\\gamma}\\right)}}{2 \\, \\pi}$</div>"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/14375/tmp_446Ajr.svg","show":true,"text":null,"uuid":"64b934ae-394f-4090-b812-8445835f8907"},"once":false}︡{"html":"<div align='center'></div>"}︡{"stdout":"Either plot is good.\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/14375/tmp_6EYqWt.svg","show":true,"text":null,"uuid":"105343f7-6264-4c5e-bb80-6f644fd9ff0f"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠bd56ab4c-fffc-4d06-a6ce-8d6344f19451i︠
%md
### Problem 4 -- a function with no elementary antiderivative:
Let $f(x) = \sin(x^2) + \exp(1/x)$
1. Draw a plot of $f$ on the interval $[1/2, 4]$.
1. Differentiate $f$
1. Integrate $f$

︡c8444901-8b00-44b4-9c95-d35f3f86a6e3︡︡{"done":true,"md":"### Problem 4 -- a function with no elementary antiderivative:\nLet $f(x) = \\sin(x^2) + \\exp(1/x)$\n1. Draw a plot of $f$ on the interval $[1/2, 4]$.\n1. Differentiate $f$\n1. Integrate $f$"}
︠2207e290-2897-4f49-bd9f-799af891b82ei︠
%html

<font color="red"><h2>10 Points Total</h2>
<h4>3 points per part, 1 point for completion</h4>
</font>
︡2ae219f0-a25a-436e-95cc-7dfdc48c425c︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<h4>3 points per part, 1 point for completion</h4>\n</font>"}
︠81e8c6f3-bfba-4419-a9e8-36c2544ed61f︠
# 1
f(x) = sin(x^2) + exp(1/x)
show(f)
print ""
plot(f, (1/2,4))
︡df7b2aa9-9251-4e69-bb92-0ab1b1a4fdf1︡︡{"html":"<div align='center'>$\\displaystyle x \\ {\\mapsto}\\ e^{\\frac{1}{x}} + \\sin\\left(x^{2}\\right)$</div>"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/5197/tmp_v7Z7Bi.svg","show":true,"text":null,"uuid":"adbd804e-419d-481c-ad3f-10be0a7d1d60"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠4dc22265-a3bc-4891-8ac5-253280871e6a︠
# 2
f(x) = sin(x^2) + exp(1/x)
show(diff(f, x))
︡0493aef5-3d57-47e6-8e77-736a4dbe2d76︡︡{"html":"<div align='center'>$\\displaystyle x \\ {\\mapsto}\\ 2 \\, x \\cos\\left(x^{2}\\right) - \\frac{e^{\\frac{1}{x}}}{x^{2}}$</div>"}︡{"done":true}
︠79ef300a-1b93-4908-bcc6-709c937dea09︠
# 3
f(x) = sin(x^2) + exp(1/x)
show(integrate(f, x))
︡fb46e6b4-594a-495b-8d6b-a71b4af69b91︡︡{"html":"<div align='center'>$\\displaystyle x \\ {\\mapsto}\\ x e^{\\frac{1}{x}} + \\frac{1}{16} \\, \\sqrt{\\pi} {\\left(\\left(i + 1\\right) \\, \\sqrt{2} \\text{erf}\\left(\\left(\\frac{1}{2} i + \\frac{1}{2}\\right) \\, \\sqrt{2} x\\right) + \\left(i - 1\\right) \\, \\sqrt{2} \\text{erf}\\left(\\left(\\frac{1}{2} i - \\frac{1}{2}\\right) \\, \\sqrt{2} x\\right) - \\left(i - 1\\right) \\, \\sqrt{2} \\text{erf}\\left(\\sqrt{-i} x\\right) + \\left(i + 1\\right) \\, \\sqrt{2} \\text{erf}\\left(\\left(-1\\right)^{\\frac{1}{4}} x\\right)\\right)} - {\\rm Ei}\\left(\\frac{1}{x}\\right)$</div>"}︡{"done":true}
︠0a52c178-7e18-46bd-8198-c0ae28abfa2ci︠

%md
### Problem 5: Limits

1. Compute $\lim_{x\to 0} \sin(x)/x$
1. Use Sage to verify that strange and amazing fact $\lim_{x\to 0} (\cos x)^{1/x^2} = \frac{1}{\sqrt{e}}$.


︡fe6680c2-8423-436a-9408-7f67e357676c︡︡{"done":true,"md":"### Problem 5: Limits\n\n1. Compute $\\lim_{x\\to 0} \\sin(x)/x$\n1. Use Sage to verify that strange and amazing fact $\\lim_{x\\to 0} (\\cos x)^{1/x^2} = \\frac{1}{\\sqrt{e}}$."}
︠a677f2f6-1b34-4772-9649-a6d65095716ai︠
%html

<font color="red"><h2>10 Points Total</h2>
<h4>5 points per part </h4>

</font>
︡d646961b-1ea1-4414-9da9-d1129f849ba1︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<h4>5 points per part </h4>\n\n</font>"}
︠6558c17a-1320-4314-b2e2-bb951b3b4fa5︠
# Solutions
show(limit(sin(x)/x, x=0))
show(limit(cos(x)^(1/x^2), x=0))
︡3dabf354-ef87-4743-9455-839fd38007e3︡︡{"html":"<div align='center'>$\\displaystyle 1$</div>"}︡{"html":"<div align='center'>$\\displaystyle e^{\\left(-\\frac{1}{2}\\right)}$</div>"}︡{"done":true}
︠9d1a61e6-9c5c-4021-9ddf-19f7a1a13aefi︠
%md
### Problem 6: Taylor Series
Let $f(x) = \sin(x^2)$
1. Find the 3rd degree taylor series, $p_3(x)$, of $f$ where $x_0 = 2\pi$
1. Plot the 10th degree taylor series $p_{10}(x)$ where $x_0 = 2\pi$ alongside $f$
 - Plot on the interval $x=[\pi, 3\pi]$
︡︡{"done":true,"md":"### Problem : Ta︡︡{"done":true,"md":"### Problem 6: Taylor Series\nLet $f(x) = \\sin(x^2)$\n1. Find the 3rd degree taylor series, $p_3(x)$, of $f$ where $x_0 = 2\\pi$\n1. Plot the 10th degree taylor series $p_{10}(x)$ where $x_0 = 2\\pi$ alongside $f$\n - Plot on the interval $x=[\\pi, 3\\pi]$"}
︠825c933f-be0a-4a5e-a161-3234786a2d8ci︠
%html

<font color="red"><h2>10 Points Total</h2>
<h4>3 points for part 1</h4>
<h4>7 points for part 2</h4>
</font>
︡1e5406f1-cc3f-4341-999a-eb684a9d430d︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<h4>3 points for part 1</h4>\n<h4>7 points for part 2</h4>\n</font>"}
︠b680b8d8-7211-4499-b4a8-f5e4062a6647︠
# 1
f(x) = sin(x^2)
p_3(x) = taylor(f(x), x, 2*pi, 3)
show(p_3)
︡d4d962a5-4ed9-47fe-87f9-2c7f8515a2cd︡︡{"html":"<div align='center'>$\\displaystyle x \\ {\\mapsto}\\ \\frac{4}{3} \\, {\\left(2 \\, \\pi - x\\right)}^{3} {\\left(8 \\, \\pi^{3} \\cos\\left(4 \\, \\pi^{2}\\right) + 3 \\, \\pi \\sin\\left(4 \\, \\pi^{2}\\right)\\right)} - {\\left(2 \\, \\pi - x\\right)}^{2} {\\left(8 \\, \\pi^{2} \\sin\\left(4 \\, \\pi^{2}\\right) - \\cos\\left(4 \\, \\pi^{2}\\right)\\right)} - 4 \\, \\pi {\\left(2 \\, \\pi - x\\right)} \\cos\\left(4 \\, \\pi^{2}\\right) + \\sin\\left(4 \\, \\pi^{2}\\right)$</div>"}︡{"done":true}
︠2fe0403b-72ef-45c1-821b-fc9ebe3aa0b8︠

︡ed0fbfae-b056-47d8-baf2-909f21d357c1︡︡{"done":true}
︠785be650-6593-4efd-ac9c-a3b0a363917d︠
# 2
f(x) = sin(x^2)
p_10(x) = taylor(f(x), x, 2*pi, 10)

P1 = plot(p_10(x), pi, 3*pi, ymax=2, ymin=-2)
P2 = plot(f(x), pi, 3*pi, linestyle='--')

show(P1 + P2)
︡6a226495-fdb7-44b7-a35f-de6a819eed53︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/5197/tmp_s9Ai8b.svg","show":true,"text":null,"uuid":"3326c073-d5ba-4486-bf39-c83146ac42f5"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠abd1a807-652a-4ccb-b1da-28bb51571c22i︠

%md
### Problem 7 - Gradient Vector Field:
1. Compute the gradient of $f(x,y) = 3\sin(x) - 2\cos(2y) - x - y$.
2. Plot the 2-dimensiona vector field defined by the gradient of $f$ in the rectangle $-2 \leq x,y \leq 2$.

︡f7b7cb0a-85d9-4a1d-9501-0f0aa4818a5d︡︡{"done":true,"md":"### Problem 7 - Gradient Vector Field:\n1. Compute the gradient of $f(x,y) = 3\\sin(x) - 2\\cos(2y) - x - y$.\n2. Plot the 2-dimensiona vector field defined by the gradient of $f$ in the rectangle $-2 \\leq x,y \\leq 2$."}
︠ded32d31-fd35-48aa-aad8-404fd81c78e2i︠
%html

<font color="red"><h2>10 Points Total</h2>
<h4>5 points for each part</h4>
</font>
︡301ebf96-a0f9-46ab-96fd-9ca47f2b1785︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<h4>5 points for each part</h4>\n</font>"}
︠79fa6f82-445f-4f3b-b551-e544d1a01b11s︠

f(x,y) = 3*sin(x) - 2*cos(2*y) - x- y
show(f.gradient())
plot_vector_field(f.gradient(), (x,-2,2), (y,-2,2))


︡b17d5933-def4-4fc8-b965-d32bf3853382︡︡{"html":"<div align='center'>$\\displaystyle \\left( x, y \\right) \\ {\\mapsto} \\ \\left(3 \\, \\cos\\left(x\\right) - 1,\\,4 \\, \\sin\\left(2 \\, y\\right) - 1\\right)$</div>"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/14375/tmp_QEhbq8.svg","show":true,"text":null,"uuid":"b287a273-6440-493b-914e-ca8c24548125"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠edc36c3a-5862-4693-8ee8-43ca37e36047i︠


%md
### Problem 8 - Symbolic Sums:

1. Compute $\sum_{n=1}^{\infty} \frac{(-1)^n}{n}$.
2. Compute $\sum_{n=1}^{\infty} \frac{1}{n^2}$.
3. Compute $\sum_{n=1}^{\infty} \frac{1}{n^3}$ both symbolically (in terms of the Riemann Zeta function) and numerically.
4. Compute $\sum_{n=1}^{\infty} \frac{1}{n^4}$.
5. Compute $\sum_{n=1}^k \sin(n)$.


︡1a2790e5-37d4-4b6d-ae2e-174235fdd460︡︡{"done":true,"md":"### Problem 8 - Symbolic Sums:\n\n1. Compute $\\sum_{n=1}^{\\infty} \\frac{(-1)^n}{n}$.\n2. Compute $\\sum_{n=1}^{\\infty} \\frac{1}{n^2}$.\n3. Compute $\\sum_{n=1}^{\\infty} \\frac{1}{n^3}$ both symbolically (in terms of the Riemann Zeta function) and numerically.\n4. Compute $\\sum_{n=1}^{\\infty} \\frac{1}{n^4}$.\n5. Compute $\\sum_{n=1}^k \\sin(n)$."}
︠7e9ffa2d-1b9a-4f40-af7a-353120624bcfi︠
%html

<font color="red"><h2>10 Points Total</h2>
<h4>2 points per part</h4>
</font>
︡c78bfa72-cc2f-48c9-a72e-8ce05e80c56c︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<h4>2 points per part</h4>\n</font>"}
︠19334af0-c232-4e29-8901-e265a46a2ed1︠
%var n
show(sum((-1)^n/n, n, 1, oo))
︡1a772feb-f45f-4627-a8b5-5729bd2c0d5e︡︡{"html":"<div align='center'>$\\displaystyle -\\log\\left(2\\right)$</div>"}︡{"done":true}
︠79fa6f82-445f-4f3b-b551-e544d1a01b11︠
%var n
show(sum(1/n^2, n, 1, oo))
︡2361ce9d-55af-472f-8672-ff914a2b2bda︡︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{6} \\, \\pi^{2}$</div>"}︡{"done":true}
︠edc36c3a-5862-4693-8ee8-43ca37e36047︠
%var n
show(sum(1/n^3, n, 1, oo))
show(N(sum(1/n^3, n, 1, oo)))
︡a044e03d-0446-4e68-a37d-4e9a7312c0b4︡︡{"html":"<div align='center'>$\\displaystyle \\zeta(3)$</div>"}︡{"html":"<div align='center'>$\\displaystyle 1.20205690315959$</div>"}︡{"done":true}
︠edc36c3a-5862-4693-8ee8-43ca37e36047︠
%var n
show(sum(1/n^4, n, 1, oo))
︡7ac9e269-7bd0-4749-a892-8d06369b5780︡︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{90} \\, \\pi^{4}$</div>"}︡{"done":true}
︠070a6efc-26d8-429c-a358-cac38d142d65︠
%var k
show(sum(sin(n), n, 1, k))
︡1abc93dd-5dd0-45f8-be8e-ef393b8e681f︡︡{"html":"<div align='center'>$\\displaystyle \\frac{\\cos\\left(k \\arctan\\left(\\frac{\\sin\\left(1\\right)}{\\cos\\left(1\\right)}\\right) + \\arctan\\left(\\frac{\\sin\\left(1\\right)}{\\cos\\left(1\\right)}\\right)\\right) \\sin\\left(1\\right) - {\\left(\\cos\\left(1\\right) - 1\\right)} \\sin\\left(k \\arctan\\left(\\frac{\\sin\\left(1\\right)}{\\cos\\left(1\\right)}\\right) + \\arctan\\left(\\frac{\\sin\\left(1\\right)}{\\cos\\left(1\\right)}\\right)\\right) - \\sin\\left(1\\right)}{2 \\, {\\left(\\cos\\left(1\\right) - 1\\right)}}$</div>"}︡{"done":true}
︠c249004b-e69b-4a3b-af4c-d59358b1003ci︠

%md
### Problem 9 -- Unit Conversion:

Use Sage's units functionality (written by a UW undergrad -- David Ackerman!)

1. Convert 68 degrees Fahrenheit to Celcius.  Hint: use `68*units.temperature.fahrenheit` to define fahrenheit.
2. Convert 15 milliseconds to hours.
3. Convert 2016 degrees kelvins to degrees Fahrenheit.
4. Convert 9.8 meters per second squared to feet per second squared.
︡f550c321-066f-45ed-8ec7-d41f5a9d8b0f︡︡{"done":true,"md":"### Problem 9 -- Unit Conversion:\n\nUse Sage's units functionality (written by a UW undergrad -- David Ackerman!)\n\n1. Convert 68 degrees Fahrenheit to Celcius.  Hint: use `68*units.temperature.fahrenheit` to define fahrenheit.\n2. Convert 15 milliseconds to hours.\n3. Convert 2016 degrees kelvins to degrees Fahrenheit.\n4. Convert 9.8 meters per second squared to feet per second squared."}
︠e95adef3-2c67-4c23-9bf9-1ede099c04f0i︠
%html

<font color="red"><h2>10 Points Total</h2>
<h4>2 points per part; 2 points for completion</h4>
</font>
︡6a33d019-ef10-4bbe-9e19-37be44c12289︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<h4>2 points per part; 2 points for completion</h4>\n</font>"}
︠db11f908-6024-4844-8d81-07c4af943a7e︠
# 1
a = 68*units.temperature.fahrenheit
show(a.convert(units.temperature.celsius))
a.convert(units.temperature.celsius)
︡00b93798-1c4c-4765-af6a-41c828b07168︡︡{"html":"<div align='center'>$\\displaystyle 20 \\, \\mathit{celsius}$</div>"}︡{"stdout":"20*celsius\n"}︡{"done":true}
︠daee0bcb-410b-4553-a97e-49996dc6d993︠
# 4
a = 0.015*units.time.second
show(a.convert(units.time.hour))
a.convert(units.time.hour)
︡43702dd4-0303-4b2a-9e15-a65689402e81︡︡{"html":"<div align='center'>$\\displaystyle \\left(4.16666666666667 \\times 10^{-6}\\right) \\, \\mathit{hour}$</div>"}︡{"stdout":"(4.16666666666667e-6)*hour\n"}︡{"done":true}
︠2630891a-06bd-4198-8ae1-37bdc48c1ab6︠
# 3
a = 2016*units.temperature.kelvin
show(a.convert(units.temperature.fahrenheit))
a.convert(units.temperature.fahrenheit)
︡ea814955-eeeb-43bc-8ddb-8c15060b9b94︡︡{"html":"<div align='center'>$\\displaystyle 3169.13000000000 \\, \\mathit{fahrenheit}$</div>"}︡{"stdout":"3169.13000000000*fahrenheit\n"}︡{"done":true}
︠7071a33d-3a46-453c-aa52-c4810cf5c081︠
# 4
a = 9.8*units.length.meter/units.time.second^2
show(a.convert(units.length.feet/units.time.second^2))
a.convert(units.length.feet/units.time.second^2)
︡714da9c1-8acd-40a3-b5b7-f7700a7bfff4︡︡{"html":"<div align='center'>$\\displaystyle 32.1522309711286 \\, \\left(\\frac{\\mathit{feet}}{\\mathit{second}^{2}}\\right)$</div>"}︡{"stdout":"32.1522309711286*(feet/second^2)\n"}︡{"done":true}
︠7a5a91ee-a204-45eb-9539-c0cc221c5560i︠

%md
### Problem 10 - 3d Plotting:

1. Draw a 3d plot of a torus.
1. Draw a single 3d plot the has the five regular polytopes in it: tetrahedron, cube, octahedron, dodecahedron, icosahedron.  All five must be visible.
1. Draw a 3d plot of the "Mexican hat function" (see, e.g., https://en.wikipedia.org/wiki/Mexican_hat_wavelet). [Hint: you have to make a choice of parameter $\sigma$ so that it looks like Mexican hat.]
︡9c0b465f-1cdc-446f-9d3d-89253782c5d9︡︡{"done":true,"md":"### Problem 10 - 3d Plotting:\n\n1. Draw a 3d plot of a torus.\n1. Draw a single 3d plot the has the five regular polytopes in it: tetrahedron, cube, octahedron, dodecahedron, icosahedron.  All five must be visible.\n1. Draw a 3d plot of the \"Mexican hat function\" (see, e.g., https://en.wikipedia.org/wiki/Mexican_hat_wavelet). [Hint: you have to make a choice of parameter $\\sigma$ so that it looks like Mexican hat.]"}
︠a68f6b84-7609-446e-9346-109790c2722ei︠
%html
<font color="red"><h2>10 Points Total</h2>
<h4>Maximum 3 points per part. 1 point for completion</h4>

<p>
    Based on:
    </p>
<p>
    <ul>
        <li>Is it a torus?</li>
        <li>Can you count the polytopes? -0.5 for each one you don't see.</li>
        <li>Does it look like a hat? (it can be upside down)</li>
    </ul>
</p>
</font>
︡93970747-dd7d-4a8e-b463-8ff591f11e56︡︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\n<h4>Maximum 3 points per part. 1 point for completion</h4>\n\n<p>\n    Based on:\n    </p>\n<p>\n    <ul>\n        <li>Is it a torus?</li>\n        <li>Can you count the polytopes? -0.5 for each one you don't see.</li>\n        <li>Does it look like a hat? (it can be upside down)</li>\n    </ul>\n</p>\n</font>"}
︠1702908f-bf7e-4872-b9e2-911edd75d5b4︠
u, v = var('u,v')
f1 = (4+(3+cos(v))*sin(u), 4+(3+cos(v))*cos(u), 4+sin(v))
parametric_plot3d(f1, (u,0,2*pi), (v,0,2*pi), texture="red", mesh=2)
︡225e52f5-3cf9-4c28-906f-23d38ba6aa7b︡︡{"file":{"filename":"d369f829-cce8-4a52-b0ac-69611345c343.sage3d","uuid":"d369f829-cce8-4a52-b0ac-69611345c343"}}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠5d35d523-f86f-4835-83eb-35b2b60a9092︠
tetrahedron() + cube().translate((1,0,0)) + octahedron().translate((2,0,0)) + dodecahedron().translate((3,0,0)) + icosahedron().translate((4,0,0))
︡26068988-0f33-4d0a-8c28-3661ec4bd5b4︡︡{"file":{"filename":"d3d86668-e2ce-4f3f-9356-493c9b648e53.sage3d","uuid":"d3d86668-e2ce-4f3f-9356-493c9b648e53"}}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠a65e6d59-03a8-42c0-bf7d-71e40e883940︠
sigma = -1/2
f(x,y) = 1/(pi*sigma^4) * (1-((x^2+y^2)/(2*sigma^2)))*exp(-(x^2+y^2)/(2*sigma^2))
plot3d(f, (x,-2,2), (y,-2,2))
︡35e81962-b871-4dcc-a507-bedea4d42538︡︡{"file":{"filename":"f66d6b53-99cd-4b41-af2e-f6a4623c45ed.sage3d","uuid":"f66d6b53-99cd-4b41-af2e-f6a4623c45ed"}}︡{"html":"<div align='center'></div>"}︡{"done":true}










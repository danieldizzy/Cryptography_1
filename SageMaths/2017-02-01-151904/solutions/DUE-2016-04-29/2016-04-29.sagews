︠badc5022-76bf-4f98-8aa0-bbdabcdfb0e1i︠
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
︠3564bcc1-fe6c-4f73-bbfc-7d779d33f122︠
f(x) = sinh(x^2 + (x-1)) + e^(pi*x) + asin(x) + 1/(x^2 - x- e)
f(0.5)
N(f(0.5))
plot(f, (x, -1, 1))
︡03be2883-af98-405e-acc7-7664d1f5cabc︡︡{"stdout":"1/6*pi - 1.00000000000000/(1.00000000000000*e + 0.250000000000000) + e^(0.500000000000000*pi) - 0.252612316808168\n"}︡{"stdout":"4.74456860615189\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/12808/tmp_rdcyeh.svg","show":true,"text":null,"uuid":"b1afcfad-0ddc-4295-9967-5f970c049dfa"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠ab0adc9a-ee0f-4eec-94a3-574a9185326a︠
︡c96f687b-848e-4193-b878-41ecd05f1547︡
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
f(x) = x^2 + sin(x)
plot(f, -2,2)
f.find_root(-2,-1/2)
f.find_root(-1/2,1/2)
# (use brain) no other zeros because $x^2$ is big.
︡2d9d04f1-70da-40fd-9e0a-4cccd0269173︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/12808/tmp_tvnxUC.svg","show":true,"text":null,"uuid":"50e191ef-1315-422d-8251-386c8113aeca"},"once":false}︡{"html":"<div align='center'></div>"}︡{"stdout":"-0.8767262153950622\n"}︡{"stdout":"5.78218635220173e-23\n"}︡{"done":true}
︠9b4e9141-b94c-45b4-a348-3564a95de79f︠

︡aed76721-e608-4f4d-a54a-0ccd41eea116︡
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
︠f6fe3068-e767-4019-a293-6ec21ba6e286︠
# 1a.
gamma = 1
x_0 = 0
f(x) = 1/(pi*gamma) * (gamma^2/((x - x_0)^2 + gamma^2))
p = plot(f, -2, 2, fill=True) + plot(f, -4, 4)
show(p)
show(integral(f, x, -2, 2))
︡050381bb-9fb5-4bad-93ba-19d6484ce7eb︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/25512/tmp_tXM9F5.svg","show":true,"text":null,"uuid":"ad9297bf-fc23-403e-adb6-1aab831c5a6f"},"once":false}︡{"html":"<div align='center'></div>"}︡{"stdout":"2*arctan(2)/pi\n"}︡{"done":true}
︠ef856aa3-fc95-4999-b322-f373a72d9e0d︠
# 1b.
gamma = 2
x_0 = 2
f(x) = 1/(pi*gamma) * (gamma^2/((x - x_0)^2 + gamma^2))
p = plot(f, -2, 2, fill=True) + plot(f, -4, 4)
show(p)
show(integral(f, x, -2, 2))
︡d0071d4f-b0a5-4011-b3f1-0c7a7c51442e︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/25512/tmp_Lv3VZk.svg","show":true,"text":null,"uuid":"b0c67b31-5ebe-48f0-9d57-28936fdc6996"},"once":false}︡{"html":"<div align='center'></div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{\\arctan\\left(2\\right)}{\\pi}$</div>"}︡{"done":true}
︠78a608e7-c2c7-4721-8e7b-86fd43bda877s︠
# 1c.
gamma =0.5
x_0 = 0
f(x) = 1/(pi*gamma) * (gamma^2/((x - x_0)^2 + gamma^2))
p = plot(f, -2, 2, fill=True) + plot(f, -4, 4)
show(p)
show(integral(f, x, -2, 2))
︡484d4441-464d-4feb-a856-22b39511a84f︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/1409/tmp_hlari0.svg","show":true,"text":null,"uuid":"d79469b3-3d23-4e22-a455-894b0ef0a163"},"once":false}︡{"html":"<div align='center'></div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{2.0 \\, \\arctan\\left(4\\right)}{\\pi}$</div>"}︡{"done":true}
︠9f06d39f-faa2-493f-9054-8e33cb284cf4s︠
var('gamma', 'x_0')
f(t) = 1/(pi*gamma) * (gamma^2/((t - x_0)^2 + gamma^2))
show(integral(f(t), t, -oo, x))
︡91efad87-909a-4f86-ae4e-b0beb6925fdb︡︡{"stdout":"(gamma, x_0)\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{\\gamma {\\left(\\frac{\\pi}{\\gamma} - \\frac{2 \\, \\arctan\\left(-\\frac{x - x_{0}}{\\gamma}\\right)}{\\gamma}\\right)}}{2 \\, \\pi}$</div>"}︡{"done":true}
︠2445027e-9ca4-4c9d-8a1c-ddcbe35b5f42s︠

# 2. & 3.
f(t) = 1/(pi*gamma) * (gamma^2/((t - x_0)^2 + gamma^2))
F(x) = integral(f(t), t, -oo, x)
show(F)
print ""
plot(F,-4, 4)
︡306062ca-a46b-4630-a1ba-8b128eb30515︡︡{"html":"<div align='center'>$\\displaystyle x \\ {\\mapsto}\\ \\frac{0.5 \\, {\\left(\\pi + 2 \\, \\arctan\\left(2 \\, x\\right)\\right)}}{\\pi}$</div>"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/1409/tmp_BzGpDu.svg","show":true,"text":null,"uuid":"5b460865-fa60-47cc-89ef-2d19735017d6"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠bd56ab4c-fffc-4d06-a6ce-8d6344f19451i︠
%md
### Problem 4 -- a function with no elementary antiderivative:
Let $f(x) = \sin(x^2) + \exp(1/x)$
1. Draw a plot of $f$ on the interval $[1/2, 4]$.
1. Differentiate $f$
1. Integrate $f$

︡c8444901-8b00-44b4-9c95-d35f3f86a6e3︡︡{"done":true,"md":"### Problem 4 -- a function with no elementary antiderivative:\nLet $f(x) = \\sin(x^2) + \\exp(1/x)$\n1. Draw a plot of $f$ on the interval $[1/2, 4]$.\n1. Differentiate $f$\n1. Integrate $f$"}
︠0a52c178-7e18-46bd-8198-c0ae28abfa2ci︠

%md
### Problem 5: Limits

1. Compute $\lim_{x\to 0} \sin(x)/x$
1. Use Sage to verify that strange and amazing fact $\lim_{x\to 0} (\cos x)^{1/x^2} = \frac{1}{\sqrt{e}}$.


︡fe6680c2-8423-436a-9408-7f67e357676c︡︡{"done":true,"md":"### Problem 5: Limits\n\n1. Compute $\\lim_{x\\to 0} \\sin(x)/x$\n1. Use Sage to verify that strange and amazing fact $\\lim_{x\\to 0} (\\cos x)^{1/x^2} = \\frac{1}{\\sqrt{e}}$."}
︠6558c17a-1320-4314-b2e2-bb951b3b4fa5︠
# Solution


︡3fb4e84c-e05f-4ff3-912e-b22bd5367fc2︡
︠b8dec296-9c24-44c1-b298-a99688857dfc︠

limit(sin(x)/x, x=0)
limit(cos(x)^(1/x^2), x=0)
︡325127f8-d151-43e7-8cd8-9c47e0dacaa7︡︡{"stdout":"1\n"}︡{"stdout":"e^(-1/2)\n"}︡{"done":true}
︠861a2a2c-a48c-4742-af56-01f3a5131c29︠






︡6d423a91-90cc-4465-9ba8-1057c4b8bad3︡
︠e7138b8a-4a75-497a-9a8f-2c78daeaf637︠
︡3f166254-c681-430c-8032-2e26376985bd︡
︠9d1a61e6-9c5c-4021-9ddf-19f7a1a13aefi︠
%md
### Problem 6: Taylor Series
Let $f(x) = \sin(x^2)$
1. Find the 3rd degree taylor series, $p_3(x)$, of $f$ where $x_0 = 2\pi$
1. Plot the 10th degree taylor series $p_{10}(x)$ where $x_0 = 2\pi$ alongside $f$
 - Plot on the interval $x=[\pi, 3\pi
︡︡{"done":true,"md":"### Problem : Ta︡︡{"done":true,"md":"### Problem 6: Taylor Series\nLet $f(x) = \\sin(x^2)$\n1. Find the 3rd degree taylor series, $p_3(x)$, of $f$ where $x_0 = 2\\pi$\n1. Plot the 10th degree taylor series $p_{10}(x)$ where $x_0 = 2\\pi$ alongside $f$\n - Plot on the interval $x=[\\pi, 3\\pi"}
︠b680b8d8-7211-4499-b4a8-f5e4062a6647︠
# 1
f(x) = sin(x^2)
p_3(x) = taylor(f(x), x, 2*pi, 3)
show(p_3)
︡69684a08-6541-4dac-a893-e4db4c237f9d︡︡{"html":"<div align='center'>$\\displaystyle x \\ {\\mapsto}\\ \\frac{4}{3} \\, {\\left(2 \\, \\pi - x\\right)}^{3} {\\left(8 \\, \\pi^{3} \\cos\\left(4 \\, \\pi^{2}\\right) + 3 \\, \\pi \\sin\\left(4 \\, \\pi^{2}\\right)\\right)} - {\\left(2 \\, \\pi - x\\right)}^{2} {\\left(8 \\, \\pi^{2} \\sin\\left(4 \\, \\pi^{2}\\right) - \\cos\\left(4 \\, \\pi^{2}\\right)\\right)} - 4 \\, \\pi {\\left(2 \\, \\pi - x\\right)} \\cos\\left(4 \\, \\pi^{2}\\right) + \\sin\\left(4 \\, \\pi^{2}\\right)$</div>"}︡{"done":true}
︠2fe0403b-72ef-45c1-821b-fc9ebe3aa0b8︠

︡2ffe62dc-ff46-4fbd-ad3d-781a36acafc9︡
︠785be650-6593-4efd-ac9c-a3b0a363917d︠
# 2
f(x) = sin(x^2)
p_10(x) = taylor(f(x), x, 2*pi, 10)

P1 = plot(p_10(x), pi, 3*pi, ymax=2, ymin=-2)
P2 = plot(f(x), pi, 3*pi, linestyle='--')

show(P1 + P2)
︡5a28585d-0df8-4bd2-a39c-aa8f861bc55f︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/25512/tmp_DL4kEI.svg","show":true,"text":null,"uuid":"a931d6e2-419d-432f-960f-dd8e56682edf"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠f177366c-35fe-435c-9f2f-85d6cf5f876a︠

︡f9d93934-5a9d-4e6d-abc1-8ff1a7e1b04b︡
︠7efa01f9-0bb0-4d72-88de-d47be22af233︠

︡6ae8269a-70fe-4379-90c7-08822943dd5b︡
︠8a2ded74-a928-4e45-82c7-755d5b4dcbaai︠
︡92599475-f0b2-4646-bea2-fc728d6962aa︡
︠abd1a807-652a-4ccb-b1da-28bb51571c22i︠

%md
### Problem 7 - Gradient Vector Field:
1. Compute the gradient of $f(x,y) = 3\sin(x) - 2\cos(2y) - x - y$.
2. Plot the 2-dimensiona vector field defined by the gradient of $f$ in the rectangle $-2 \leq x,y \leq 2$.

︡f7b7cb0a-85d9-4a1d-9501-0f0aa4818a5d︡︡{"done":true,"md":"### Problem 7 - Gradient Vector Field:\n1. Compute the gradient of $f(x,y) = 3\\sin(x) - 2\\cos(2y) - x - y$.\n2. Plot the 2-dimensiona vector field defined by the gradient of $f$ in the rectangle $-2 \\leq x,y \\leq 2$."}
︠79fa6f82-445f-4f3b-b551-e544d1a01b11︠

f(x,y) = 3*sin(x) - 2*cos(2*y) - x- y
plot_vector_field(f.gradient(), (x,-2,2), (y,-2,2))


︡acf8aaf2-1327-450a-9e08-6d9728f2fb79︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/19922/tmp_cl0Viy.svg","show":true,"text":null,"uuid":"3a203015-fac5-4223-bd7e-da73c38d205f"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠edc36c3a-5862-4693-8ee8-43ca37e36047i︠


%md
### Problem 8 - Symbolic Sums:

1. Compute $\sum_{n=1}^{\infty} \frac{(-1)^n}{n}$.
2. Compute $\sum_{n=1}^{\infty} \frac{1}{n^2}$.
3. Compute $\sum_{n=1}^{\infty} \frac{1}{n^3}$ both symbolically (in terms of the Riemann Zeta function) and numerically.
4. Compute $\sum_{n=1}^{\infty} \frac{1}{n^4}$.
5. Compute $\sum_{n=1}^k \sin(n)$.


︡1a2790e5-37d4-4b6d-ae2e-174235fdd460︡︡{"done":true,"md":"### Problem 8 - Symbolic Sums:\n\n1. Compute $\\sum_{n=1}^{\\infty} \\frac{(-1)^n}{n}$.\n2. Compute $\\sum_{n=1}^{\\infty} \\frac{1}{n^2}$.\n3. Compute $\\sum_{n=1}^{\\infty} \\frac{1}{n^3}$ both symbolically (in terms of the Riemann Zeta function) and numerically.\n4. Compute $\\sum_{n=1}^{\\infty} \\frac{1}{n^4}$.\n5. Compute $\\sum_{n=1}^k \\sin(n)$."}
︠19334af0-c232-4e29-8901-e265a46a2ed1︠
# Solution




︡cbdd0486-54d9-4b18-bd03-6e969ddb887b︡
︠198c7f99-7e8b-489f-b5e0-4d37d48c7070︠
%var n
show(sum((-1)^n/n, n, 1, oo))
︡4c90de4f-b9d4-40fd-8bf8-52d7c4bad40e︡︡{"html":"<div align='center'>$\\displaystyle -\\log\\left(2\\right)$</div>"}︡{"done":true}
︠c94a44b8-1e82-4f60-906b-08624ffed9e1︠
%var n
show(sum(1/n^2, n, 1, oo))
︡2361ce9d-55af-472f-8672-ff914a2b2bda︡︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{6} \\, \\pi^{2}$</div>"}︡{"done":true}
︠fe3a5c4b-a5af-4d12-b8c1-acd4deb689a1︠
%var n
show(sum(1/n^3, n, 1, oo))
N(sum(1/n^3, n, 1, oo))
︡f3e76261-a830-4f6e-894c-ec2a764b611b︡︡{"html":"<div align='center'>$\\displaystyle \\zeta(3)$</div>"}︡{"stdout":"1.20205690315959\n"}︡{"done":true}
︠e4057771-92b4-4a5e-9b72-54dd8057ef98︠
%var n
show(sum(1/n^4, n, 1, oo))
︡7ac9e269-7bd0-4749-a892-8d06369b5780︡︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{90} \\, \\pi^{4}$</div>"}︡{"done":true}
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

︡1867a2c9-f995-4077-be92-2f2dbcd07a50︡
︠617e6254-3897-4ec5-b2ce-be1a99368c9c︠
a = 68*units.temperature.fahrenheit
a.convert(units.temperature.celsius)
︡cb6e2e56-010b-4701-a3c9-a6fc6b4b869f︡︡{"stdout":"20*celsius\n"}︡{"done":true}
︠7071a33d-3a46-453c-aa52-c4810cf5c081︠

︡9b1250ef-ce0f-45c8-a924-b221f22eb027︡
︠7a5a91ee-a204-45eb-9539-c0cc221c5560i︠

%md
### Problem 10 - 3d Plotting:

1. Draw a 3d plot of a torus.
1. Draw a single 3d plot the has the five regular polytopes in it: tetrahedron, cube, octahedron, dodecahedron, icosahedron.  All five must be visible.
1. Draw a 3d plot of the "Mexican hat function" (see, e.g., https://en.wikipedia.org/wiki/Mexican_hat_wavelet). [Hint: you have to make a choice of parameter $\sigma$ so that it looks like Mexican hat.]
︡9c0b465f-1cdc-446f-9d3d-89253782c5d9︡︡{"done":true,"md":"### Problem 10 - 3d Plotting:\n\n1. Draw a 3d plot of a torus.\n1. Draw a single 3d plot the has the five regular polytopes in it: tetrahedron, cube, octahedron, dodecahedron, icosahedron.  All five must be visible.\n1. Draw a 3d plot of the \"Mexican hat function\" (see, e.g., https://en.wikipedia.org/wiki/Mexican_hat_wavelet). [Hint: you have to make a choice of parameter $\\sigma$ so that it looks like Mexican hat.]"}
︠8200764a-daa7-4311-9470-9f5dea19b82e︠


# Solution:

︡ac61d2f4-8c2f-4744-a99e-45d6a0d5f040︡
︠1702908f-bf7e-4872-b9e2-911edd75d5b4s︠
u, v = var('u,v')
f1 = (4+(3+cos(v))*sin(u), 4+(3+cos(v))*cos(u), 4+sin(v))
parametric_plot3d(f1, (u,0,2*pi), (v,0,2*pi), texture="red", mesh=2)
︡76a609a3-ceab-4d79-a072-dbde10c3ede0︡︡{"file":{"filename":"d369f829-cce8-4a52-b0ac-69611345c343.sage3d","uuid":"d369f829-cce8-4a52-b0ac-69611345c343"}}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠5d35d523-f86f-4835-83eb-35b2b60a9092︠
tetrahedron() + cube().translate((1,0,0)) + octahedron().translate((2,0,0)) + dodecahedron().translate((3,0,0)) + icosahedron().translate((4,0,0))
︡c4db67d2-c09e-4da4-92c9-975f1b6064e3︡︡{"file":{"filename":"8085cae9-df1b-4311-ae71-bf0626fb36b5.sage3d","uuid":"8085cae9-df1b-4311-ae71-bf0626fb36b5"}}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠a65e6d59-03a8-42c0-bf7d-71e40e883940︠
sigma = -1/2
f(x,y) = 1/(pi*sigma^4) * (1-((x^2+y^2)/(2*sigma^2)))*exp(-(x^2+y^2)/(2*sigma^2))
plot3d(f, (x,-2,2), (y,-2,2))
︡225a9cb7-9e14-4894-b057-dd8f3c5349f3︡︡{"file":{"filename":"0ac95e5b-c7f6-459c-ae66-7a0156b756c3.sage3d","uuid":"0ac95e5b-c7f6-459c-ae66-7a0156b756c3"}}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠ce3af17f-ab97-4a8d-8015-cfc05db9b736︠










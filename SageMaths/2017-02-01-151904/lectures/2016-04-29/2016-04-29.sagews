︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fc︠
%md
# Math 480: Open Source Mathematical Software
### 2016-04-29
### William Stein

## **Lectures 15: Symbolic Calculus (part 3/3)**

︡70e03e40-9a05-428f-83b3-b56d801d9744︡︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-04-29\n### William Stein\n\n## **Lectures 15: Symbolic Calculus (part 3/3)**"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md
## Plan:
- reminder: homework and peer grading due today at 6pm.
- start screencast
- talk for a few minutes about something
- finish up and polish your homework and peer grading, and ask questions.
︡b80f7e7f-3bbf-4afa-a1e4-42edb6eb13c3︡︡{"done":true,"md":"## Plan:\n- reminder: homework and peer grading due today at 6pm.\n- start screencast\n- talk for a few minutes about something\n- finish up and polish your homework and peer grading, and ask questions."}
︠eec0266b-7b45-4348-bd80-102873b7828di︠
%md
## 1. Example involving rounding error
︡a6db78da-2f9f-4d33-9054-8719cf159db8︡︡{"done":true,"md":"## 1. Example involving rounding error"}
︠4c13a6a7-943a-4110-b583-ea9d8309a671s︠
10e100 + 1 - 10e100
︡d712c9a3-6a65-4abc-93fe-71999d4ecd6a︡︡{"stdout":"0.000000000000000\n"}︡{"done":true}
︠d56bdf36-0e61-4b31-9033-addae80bfc99s︠
10^100 + 1 - 10^100
︡614c8136-2c32-4851-8813-ba16702295df︡︡{"stdout":"1\n"}︡{"done":true}
︠01d9a1eb-398f-472f-92a6-28e66582d3e3s︠
a = exp(100+10^(-20)) + 1 - exp(100)
show(a)
︡c30c5b73-6515-4475-865d-25ea8dc080dc︡︡{"html":"<div align='center'>$\\displaystyle e^{\\frac{10000000000000000000001}{100000000000000000000}} - e^{100} + 1$</div>"}︡{"done":true}
︠55560123-aeb2-40ad-9ace-f92d31a18e54s︠
N(a)
︡7190bcf8-804b-4e76-b443-f1c20452b144︡︡{"stdout":"0.000000000000000\n"}︡{"done":true}
︠0c3f2792-0c67-4ddb-9f16-6048be9368bfs︠
F = RealIntervalField(200); F
︡b2a92647-5974-4cc6-b6c4-1f955c13b5bb︡︡{"stdout":"Real Interval Field with 200 bits of precision\n"}︡{"done":true}
︠829e20c4-d0a0-4186-a086-51c6a5ec587fs︠
F(a)
︡ac31c7ef-1d98-4314-9d1d-62ca0c2a60b9︡︡{"stdout":"2.6881171418161354484260761372890942647?e23\n"}︡{"done":true}
︠c290fa9b-cfd3-47e4-a430-cf3b98807beai︠
%md
## 2. Assumptions - sometimes needed when integrating

E.g., when computing
$$
\int x^n dx
$$
the answer is usually easy -- it's $\frac{x^{n+1}}{n+1}$.  However, when $n=1$, it's $\log(x)$.
︡8aa438de-732b-4cad-96d8-4c05f3239ff6︡︡{"done":true,"md":"## 2. Assumptions - sometimes needed when integrating\n\nE.g., when computing\n$$\n\\int x^n dx\n$$\nthe answer is usually easy -- it's $\\frac{x^{n+1}}{n+1}$.  However, when $n=1$, it's $\\log(x)$."}
︠9a5dab92-b594-4462-978e-d2ff5170d546︠
var('x, n')
integral(x^n, x)
︡572de085-c536-4a3d-9811-ae4ace0fd293︡︡{"stdout":"(x, n)\n"}︡{"stderr":"Error in lines 2-2\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 905, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/sage/misc/functional.py\", line 664, in integral\n    return x.integral(*args, **kwds)\n  File \"sage/symbolic/expression.pyx\", line 11352, in sage.symbolic.expression.Expression.integral (/projects/sage/sage-6.10/src/build/cythonized/sage/symbolic/expression.cpp:60288)\n    return integral(self, *args, **kwds)\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/sage/symbolic/integration/integral.py\", line 759, in integrate\n    return indefinite_integral(expression, v, hold=hold)\n"}︡{"stderr":"  File \"sage/symbolic/function.pyx\", line 988, in sage.symbolic.function.BuiltinFunction.__call__ (/projects/sage/sage-6.10/src/build/cythonized/sage/symbolic/function.cpp:11343)\n    res = super(BuiltinFunction, self).__call__(\n  File \"sage/symbolic/function.pyx\", line 508, in sage.symbolic.function.Function.__call__ (/projects/sage/sage-6.10/src/build/cythonized/sage/symbolic/function.cpp:7211)\n    res = g_function_eval2(self._serial, (<Expression>args[0])._gobj,\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/sage/symbolic/integration/integral.py\", line 85, in _eval_\n    res = integrator(f, x)\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/sage/symbolic/integration/external.py\", line 22, in maxima_integrator\n    result = maxima.sr_integral(expression,v)\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/sage/interfaces/maxima_lib.py\", line 784, in sr_integral\n    self._missing_assumption(s)\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/sage/interfaces/maxima_lib.py\", line 993, in _missing_assumption\n    raise ValueError(outstr)\nValueError: Computation failed since Maxima requested additional constraints; using the 'assume' command before evaluation *may* help (example of legal syntax is 'assume(n>0)', see `assume?` for more details)\nIs n equal to -1?\n"}︡{"done":true}
︠d5269f60-c582-4f6a-bd74-5a3dac88fadfs︠
forget()
assume(n==-1)
integral(x^n, x)
︡52f4193b-0bfb-41b2-86c1-f4b1e3588fe8︡︡{"stdout":"log(x)\n"}︡{"done":true}
︠66964613-58d3-4931-91dc-4f00d579ae5ds︠
forget(n==-1)
assume(n!=-1)
show(integral(x^n, x))
︡43205d31-ceeb-45a4-ab87-f6e99a06f717︡︡{"html":"<div align='center'>$\\displaystyle \\frac{x^{n + 1}}{n + 1}$</div>"}︡{"done":true}
︠cee15388-38da-43ba-94e1-91d0cb4f1824i︠
%md
## 3. Sympy

Sympy is a Python library for symbolic calculus, which can be used independently from Sage, and is also in Sage.
See http://www.sympy.org/en/index.html

Integration with Sage could be improved.

But being able to use Sympy without Sage is potentially very valuable (see Hamster).  Or it can cause you to waste a lot of time (see Chris Swierczewski).

On Sage support list, here about sympy as follows:

1. I've been using Sympy, but switched to Sage since Sympy is too slow or missing something.

2. I've been using Sage to compute this integral (or series) and it's wrong! ... There is a bug in Maxima... Use algorithm='sympy', since Sympy is right.
︡0217a788-5c88-4019-b94b-9ee171c8a075︡︡{"done":true,"md":"## 3. Sympy\n\nSympy is a Python library for symbolic calculus, which can be used independently from Sage, and is also in Sage.\nSee http://www.sympy.org/en/index.html\n\nIntegration with Sage could be improved.\n\nBut being able to use Sympy without Sage is potentially very valuable (see Hamster).  Or it can cause you to waste a lot of time (see Chris Swierczewski).\n\nOn Sage support list, here about sympy as follows:\n\n1. I've been using Sympy, but switched to Sage since Sympy is too slow or missing something.\n\n2. I've been using Sage to compute this integral (or series) and it's wrong! ... There is a bug in Maxima... Use algorithm='sympy', since Sympy is right."}
︠81b614f8-64ca-4d08-94ad-7303a8721656s︠
from sympy import Limit, symbols, cos
x = symbols('x')
expr = Limit((cos(x) - 1)/x, x, 0)
print expr
︡56d987fe-2fb4-4b5d-a2a3-7f6253e7ccdd︡︡{"stdout":"Limit((cos(x) - 1)/x, x, 0)\n"}︡{"done":true}
︠b2a23e0d-9dad-4dc3-8909-b4973dfe3c5fs︠
expr.doit()   # really??
︡c1d74b32-2180-4316-b92d-9c086ad031be︡︡{"stdout":"0\n"}︡{"done":true}
︠8a55f1f0-49b4-48f0-861c-660efcc53678s︠
show(expr)   # this doesn't work.  sigh.
︡390a7c6d-7258-4ad6-a60a-8ddacf6771f0︡︡{"html":"<div align='center'>$\\displaystyle \\text{\\texttt{Limit((cos(x){ }{-}{ }1)/x,{ }x,{ }0)}}$</div>"}︡{"done":true}
︠dae2185c-681a-424f-8a5f-d05fd21576d8s︠
reset()  # since we overwrote x above
m = integrate(sin(x)*cos(x)*tan(x), x); show(m)     # uses maxima
︡7c343128-342b-4db5-b9ca-730beaa8bff4︡︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{2} \\, x - \\frac{1}{4} \\, \\sin\\left(2 \\, x\\right)$</div>"}︡{"done":true}
︠da00501b-00e4-4466-a9ae-326ab9e52555s︠
s = integrate(sin(x)*cos(x)*tan(x), x, algorithm='sympy'); show(s)   # uses sympy instead under the hood!
︡544b7ac8-6d10-45b6-bf7f-52067b580293︡︡{"html":"<div align='center'>$\\displaystyle -\\frac{1}{2} \\, \\cos\\left(x\\right) \\sin\\left(x\\right) + \\frac{1}{2} \\, x$</div>"}︡{"done":true}
︠c14003cd-0ab7-4994-a966-e18715d737a0s︠
show(s-m)
︡287e255b-eadd-4d58-a7eb-2715f6169d3c︡︡{"html":"<div align='center'>$\\displaystyle -\\frac{1}{2} \\, \\cos\\left(x\\right) \\sin\\left(x\\right) + \\frac{1}{4} \\, \\sin\\left(2 \\, x\\right)$</div>"}︡{"done":true}
︠e50382e4-0217-47d0-8947-78a421b2e258s︠
(s - m).simplify_full()
︡6e9aaaf6-20c5-4baf-a037-e0d638e9cfb9︡︡{"stdout":"0"}︡{"stdout":"\n"}︡{"done":true}
︠f11334fa-a51b-4cdf-907c-98e61d5ce45cs︠
bool(s==m)
︡e619ed32-8814-46b2-9692-7046fded49bf︡︡{"stdout":"True\n"}︡{"done":true}
︠61211fdb-8cae-44a5-9b6a-da203d51529d︠










from scipy.integrate import quad, dblquad
︡01453f3b-b72d-4d55-b6c2-3c43276003e3︡︡{"done":true}
︠15eaed5d-0f35-48a4-83a5-aad6f1de27b3︠
area = dblquad(lambda x, y: log(abs( 4 - 2*cos(2*pi*x) - 2*cos(2*pi*y))), 0, 1, lambda x:0, lambda x:1)
︡5b0e6c9c-a355-43ef-9cbf-d3272f8ee8ab︡︡{"done":true}
︠16fdf472-59f0-4370-8b9f-601ceda81436︠
area
︡8a463066-49ca-43a4-8946-420185606835︡︡{"stdout":"(1.1662436161232819, 7.180621168198628e-09)\n"}︡{"done":true}
︠149c0dc7-6003-49b5-b91b-5baf3180949ai︠
%md
Another speed trick is `fast_float`.

This is something Robert Bradshaw wrote, originally to make 3d plotting faster.
It takes a symbolic epxression and "compiles" it (very quickly) into an internal form that can
be evaluated quickly.

See http://doc.sagemath.org/html/en/reference/misc/sage/ext/fast_eval.html
︡8050276d-38f7-4b16-9387-b22e689bf51e︡︡{"done":true,"md":"Another speed trick is `fast_float`.\n\nThis is something Robert Bradshaw wrote, originally to make 3d plotting faster.\nIt takes a symbolic epxression and \"compiles\" it (very quickly) into an internal form that can\nbe evaluated quickly. \n\nSee http://doc.sagemath.org/html/en/reference/misc/sage/ext/fast_eval.html"}
︠11f81434-38cd-4fb0-8f18-97a8bf2c65ad︠
# how long does yours take?  about 1s -- pretty bad?
from scipy.integrate import quad, dblquad
%time area = dblquad(lambda x, y: log(abs( 4 - 2*cos(2*pi*x) - 2*cos(2*pi*y))), 0, 1, lambda x:0, lambda x:1)
︡d3deabe4-bbab-48ee-97a1-e32ff6ac90e0︡︡{"stdout":"CPU time: 0.77 s, Wall time: 0.81 s"}︡{"stdout":"\n"}︡{"done":true}
︠e4c1289e-72a1-4817-8328-3c2cda3e9def︠
# try that trick I mentioned... and get a MASSIVE speedup.
from scipy.integrate import quad, dblquad
f(x,y) = log(abs( 4 - 2*cos(2*pi*x) - 2*cos(2*pi*y)))
g = fast_float(f)
%time area = dblquad(g, 0r, 1r, lambda x:0r, lambda x:1r)
︡6ab1d1ef-bb4a-415e-b7d2-e16feb061c6a︡︡{"stdout":"CPU time: 0.00 s, Wall time: 0.00 s\n"}︡{"done":true}
︠4af1f39b-007d-4f9c-b80a-fd49c4b6b2d1︠
# How much better?
%timeit area0 = dblquad(g, 0r, 1r, lambda x:0r, lambda x:1r)
%timeit area1 = dblquad(lambda x, y: log(abs( 4 - 2*cos(2*pi*x) - 2*cos(2*pi*y))), 0, 1, lambda x:0, lambda x:1)
︡91051490-d661-4a7c-a705-f84c0418a368︡︡{"stdout":"625 loops, best of 3: 1.34 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"5 loops, best of 3: 780 ms per loop"}︡{"stdout":"\n"}︡{"done":true}
︠99b0123a-c0d6-4d15-8423-2a1350bcaf3d︠
780/1.34
︡c63f22ad-a927-48f5-ad70-65c7c5f2b796︡︡{"stdout":"582.089552238806\n"}︡{"done":true}
︠8330d02b-4f8b-4ffc-8fb8-8fcd1420a016︠
# Speedup by a factor of more than 500x!


︠dff64924-b26d-44fa-b3f3-91ddd385d4cei︠
%md
**Exercise: ** Make up your own symbolic functions by copying how we wrote `f(x,y) = log(abs( 4 - 2*cos(2*pi*x) - 2*cos(2*pi*y)))` above,
and compare the speed of evaluation using fast_float to the speed of a Python function `def f(x,y): ...` that does the same thing.
︡f608cbab-cc5d-4b46-8705-2d3d494f2312︡︡{"done":true,"md":"**Exercise: ** Make up your own symbolic functions by copying how we wrote `f(x,y) = log(abs( 4 - 2*cos(2*pi*x) - 2*cos(2*pi*y)))` above,\nand compare the speed of evaluation using fast_float to the speed of a Python function `def f(x,y): ...` that does the same thing."}
︠1761dcbc-f7a4-4c4d-bc9d-10334e0627b5︠
f(x,y) = x+y  # change this
f0 = fast_float(f)
def g(x,y):
    return x+y    # change this
︡1fa4ca71-9339-453d-805c-c8c48fab9b8e︡︡{"done":true}
︠11c7d832-853b-4bf2-b910-b03d605dd393︠
# rerun this after changing the above...
x = float(5); y = float(7)
%timeit f(x,y)
%timeit f0(x,y)
%timeit g(x,y)
︡3763f97f-3250-4bf7-b8d1-25a191821866︡
︠59318c5b-91b5-414b-b126-7123233205d7︠
# How much faster?!










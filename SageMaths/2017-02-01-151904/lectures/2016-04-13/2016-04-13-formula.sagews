︠bd694fe8-66e3-44b0-8dda-221827a3abf6i︠
%md
## Is there a formula?

︡0c942cba-a7ac-4da5-9f32-27c68ecd67c3︡︡{"done":true,"md":"## Is there a formula?"}
︠b2bdfd63-d8d1-4819-84f9-f2f00411d0fdi︠
%md
From last time...

**Throw out a mathematical question:** Is there a simple formula for $\sum_{0< m\leq n} \sin(m)$ similar to the formula
$\sum_{0< m< n} m = \frac{n(n-1)}{2}$?
︡7ec1139a-186e-4176-812d-2da92ecdbb08︡︡{"done":true,"md":"From last time...\n\n**Throw out a mathematical question:** Is there a simple formula for $\\sum_{0< m\\leq n} \\sin(m)$ similar to the formula\n$\\sum_{0< m< n} m = \\frac{n(n-1)}{2}$?"}
︠5112321d-e7b7-4aac-9787-835bb96ca3fai︠
%md
## YES!
︡4e44fbfb-2664-4b09-81f7-e1dd09dff21f︡︡{"done":true,"md":"## YES!"}
︠c87dbe37-597b-4336-a846-be7c687e858as︠
k, n = var('k,n')
show(sum(k^2, k, 1, n).factor())
︡b50c6ebc-1a88-41d6-93a9-3e457cc339ad︡︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{6} \\, {\\left(2 \\, n + 1\\right)} {\\left(n + 1\\right)} n$</div>"}︡{"done":true}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8s︠
k, n = var('k,n')
f = sum(sin(k), k, 1, n-1)
show(f)
︡cbb7c620-b5d2-4f9e-92ce-909216d182f6︡︡{"html":"<div align='center'>$\\displaystyle \\frac{\\cos\\left(n \\arctan\\left(\\frac{\\sin\\left(1\\right)}{\\cos\\left(1\\right)}\\right)\\right) \\sin\\left(1\\right) - {\\left(\\cos\\left(1\\right) - 1\\right)} \\sin\\left(n \\arctan\\left(\\frac{\\sin\\left(1\\right)}{\\cos\\left(1\\right)}\\right)\\right) - \\sin\\left(1\\right)}{2 \\, {\\left(\\cos\\left(1\\right) - 1\\right)}}$</div>"}︡{"done":true}
︠2f83372f-e5b1-4082-a7e1-94acb0507074s︠
%timeit float(f(n=10000))
︡3b0c33e1-2c1a-4ebc-8c40-dc703602fb46︡︡{"stdout":"625 loops, best of 3: 349 µs per loop"}︡{"stdout":"\n"}︡{"done":true}
︠f387f703-9cde-4415-ac22-948f205951f3s︠
%timeit float(f(n=100000))
︡9685d11d-b806-45f8-bf1a-703420208ea8︡︡{"stdout":"625 loops, best of 3: 315 µs per loop"}︡{"stdout":"\n"}︡{"done":true}
︠5f651169-51aa-48a5-b0cd-3967ad40a97ds︠
g = fast_float(f, 'n')
g
︡e593238f-71dc-41dd-90e9-1ac955bfcd60︡︡{"stdout":"<sage.ext.interpreters.wrapper_rdf.Wrapper_rdf object at 0x7f7586a69980>\n"}︡{"done":true}
︠3de7f6a2-035e-4a10-9ea0-827062b1e99as︠
%timeit g(10000)
︡4f2a5705-b6e4-49fd-bdb4-2111f818403d︡︡{"stdout":"625 loops, best of 3: 827 ns per loop\n"}︡{"done":true}
︠1144b075-095c-44b3-93f1-6b0ea6de02ees︠
g(10000)
︡019d6073-dd1e-4f3a-bc9c-7d21d41b208f︡︡{"stdout":"1.9395054106807146\n"}︡{"done":true}
︠ba5058f2-cbe3-4088-82c5-41efcae4a24f︠

︠fbd4b34a-5f02-4ddf-9e7c-848f8e3baa15s︠
315/.827
︡c5c71142-5379-429b-816d-63777204d82f︡︡{"stdout":"380.894800483676\n"}︡{"done":true}
︠3cae8296-f0ae-45df-a20e-fc66117effb0i︠
%md
500x speedup!
︡e6425996-d9d0-4f9a-baac-d5391108fde8︡︡{"done":true,"md":"500x speedup!"}
︠411918fc-709a-49ec-91c5-7c93373ae856︠
%time float(sum(sin(j) for j in [1..10000]))
︡886c4d3e-2d39-4f7c-a96c-2b3130d08572︡︡{"stdout":"1.6338910217924854"}︡{"stdout":"\n"}︡{"stdout":"CPU time: 1.82 s, Wall time: 1.84 s\n"}︡{"done":true}
︠94053881-7ecf-4071-9ff6-4c30c304fea8︠
1.84 / (766*10^(-9))
︡d28b390f-c0d2-4abf-8778-331057e2011b︡︡{"stdout":"2.40208877284595e6\n"}︡{"done":true}
︠6ef5413b-18b7-4cc0-98b5-c475eac72d29i︠
%md
So the net speedup from our one liner from day one is a **factor of several million** in speed.
︡bf52d14c-d037-494f-82f4-be4161a431de︡︡{"done":true,"md":"So the net speedup from our one liner from day one is a **factor of several million** in speed."}
︠bb738521-1477-4b6a-a7b4-47c119d1e33di︠
%md
**Exercise now:** Draw a plot of the function $f(n) = \sum_{0< m\leq n} \sin(m)$ for various values of $n$...
︡89325eca-5278-46fb-ba5a-fa821dd5d2e0︡︡{"done":true,"md":"**Exercise now:** Draw a plot of the function $f(n) = \\sum_{0< m\\leq n} \\sin(m)$ for various values of $n$..."}
︠409f5ed5-3530-430b-8518-0639ac31cbabs︠
# one way
stats.TimeSeries([sin(n) for n in range(10000)]).sums().plot()
︡41b78230-9f7c-49ca-909a-05654998d024︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/12607/tmp_6DACUF.svg","show":true,"text":null,"uuid":"72b7c0b4-656e-45d4-86c6-8f0c9c48fc17"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠497b1703-42dc-40af-8b72-66d1a38c227f︠
# Another -- use the formula above...


︡10e100d1-b0cf-4932-9587-b49803369b87︡︡{"done":true}
︠ec11cb7a-dcda-43f4-9677-8ca908a95ff8︠










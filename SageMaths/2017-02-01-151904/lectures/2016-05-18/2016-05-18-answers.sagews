︠27e6d30c-962e-4d73-921b-b1414b130b76is︠
%md **Challenge 1 (Answers):**
︡d4e151e0-93fb-46bd-956d-bd35f8e4830b︡{"hide":"input"}︡{"md":"**Challenge 1 (Answers):**"}︡{"done":true}︡
︠384e8f7e-10f9-4f77-8c00-fbe0c5f62cd5s︠
%auto
import numpy as np
%default_mode python
︡ab0bdaae-7671-4b8c-84b5-0cc0becbdf88︡{"done":true}︡
︠9841e6dd-25d9-4d5c-8ec6-f584bac33e9ds︠
a = np.arange(4); a.shape
︡a89a4c76-092d-4840-87fa-476769f1f90a︡{"stdout":"(4,)\n"}︡{"done":true}︡
︠5ae46cba-9ab5-474a-81b9-3bf62f1f119as︠
a = np.arange(24).reshape(2,3,4)
a.shape
︡07c7b561-da5d-4404-883f-79722fdcacc4︡{"stdout":"(2, 3, 4)\n"}︡{"done":true}︡
︠980b2a5b-58af-431d-9d67-5e8660605b0es︠
np.arange(1).reshape(1,1,1,1).ndim
︡4e2cdf19-120c-44c6-a18b-802c58b43c18︡{"stdout":"4\n"}︡{"done":true}︡
︠5c379154-e051-4da2-a2c7-e7e608400f16s︠
np.array(['fred']).dtype
︡16a4bc04-2277-4612-80d2-29406dcc119f︡{"stdout":"dtype('S4')\n"}︡{"done":true}︡
︠924da168-a9fa-494f-ae24-e0ebf2eb83ees︠
np.array([]).itemsize
︡b46c3008-5045-48e3-8740-0d858b37e1e0︡{"stdout":"8\n"}︡{"done":true}︡
︠25b00c98-9c0f-4637-8e82-f4fe727edcfdi︠
%md
** Challenge 2 (Answers): **
︡863f58b3-1c0d-42ab-b4be-adcfc57f5364︡{"done":true,"md":"** Challenge 2 (Answers): **"}
︠c0b2ccc3-0a2d-45cd-880b-3c5e05b40b89︠
np.linspace(0, 1, 10)
︡b723fd3f-da22-4c2f-bece-94879c24f7ce︡{"stdout":"array([ 0.        ,  0.11111111,  0.22222222,  0.33333333,  0.44444444,\n        0.55555556,  0.66666667,  0.77777778,  0.88888889,  1.        ])\n"}︡{"done":true}︡
︠3937b68d-4332-4eb6-ba93-ff82b8046500︠
v = np.linspace(0,1,1000000)
%timeit np.sin(v)
%timeit np.array([np.sin(x) for x in v])
%timeit np.array([math.sin(x) for x in v])
︡d44ff986-cbce-4505-b47c-efd196ec8a39︡{"stdout":"25 loops, best of 3: 18.1 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"5 loops, best of 3: 1.15 s per loop"}︡{"stdout":"\n"}︡{"stdout":"5 loops, best of 3: 213 ms per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠e4d7bb24-4fdb-454d-90a4-34c213cb46cf︠
1/.018
.213/.018
︡aa26cbe0-4930-41f7-b752-e1305b4df149︡{"stdout":"55.55555555555556\n"}︡{"stdout":"11.833333333333334\n"}︡{"done":true}︡
︠196ab32a-8ec2-4acf-8419-ec8fb807a727︠
# Yep, works fine on any dimensional array.
np.sin(np.array([[1,2],[3,4]]))
︡53052756-8aca-43ca-99cf-8be08963929a︡{"stdout":"array([[ 0.84147098,  0.90929743],\n       [ 0.14112001, -0.7568025 ]])\n"}︡{"done":true}︡
︠4e79c1a0-2aa6-430d-b9e2-f85f64519ab3i︠
%md
**Challenge 5 (Answers):**
︡a5060434-fd61-48ee-a10f-48cab24b2bea︡{"done":true,"md":"**Challenge 5 (Answers):**"}
︠b6f76197-4f83-4c5f-8383-f6098436be1fs︠
%timeit np.arange(1000000).sum()
︡17ec980b-0d01-42a5-aea7-7eb45d0417e1︡{"stdout":"125 loops, best of 3: 1.71 ms per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠b0bfdfae-85ca-4b71-9aa2-8b9c64a3be65s︠
%timeit  sum(range(1000000))
︡ca5de850-c97a-4a9b-ad9c-6925c299d1e1︡{"stdout":"25 loops, best of 3: 32.6 ms per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠e5b5e7c9-35e5-4a2e-9d15-5e8cc0f84203s︠
32.6/1.71
︡c1b6b6b5-b776-4e50-aa2c-a898a8fd7289︡{"stdout":"19.06432748538012\n"}︡{"done":true}︡
︠92f2b246-216a-4fd7-82ab-c75b0b34098as︠
a = np.arange(1000000)
a.std()
%timeit a.std()
︡5a4e4c16-4712-434a-bf81-4d6735c04413︡{"stdout":"288675.13459466852\n"}︡{"stdout":"125 loops, best of 3: 4.63 ms per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠c4cee4d6-5194-49ed-acf7-a6a2cdf07a82s︠
import pandas
df = pandas.DataFrame(np.arange(1000000))
df.std()
%timeit df.std()
︡baca75a7-507f-455d-8abd-5bd6ff8b5370︡{"stdout":"0    288675.278932\ndtype: float64\n"}︡{"stdout":"5 loops, best of 3: 57.5 ms per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠3aac77c1-a909-4e0b-8890-840d44754450s︠
v = stats.TimeSeries(range(1000000))  # I wrote this in Cython once...
v.standard_deviation()
%timeit v.standard_deviation()
︡5f84442e-246e-4a00-a26b-d599cdc85a9a︡{"stdout":"288675.27893349814\n"}︡{"stdout":"125 loops, best of 3: 2.36 ms per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠d798ead7-f9f2-4a7c-9c1a-41e03dc0888bs︠
︡ca2dc6d2-e0e3-4882-8e4d-f505ee81e5ab︡{"done":true}︡











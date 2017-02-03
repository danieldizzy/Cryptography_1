︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-05-18
### William Stein

## **Lectures 23: Numpy Arrays (vs Sage Matrices) **

Today:

- A [podcast interview of me about Sage](https://talkpython.fm/episodes/show/59/sagemath-open-source-is-ready-to-compete-in-the-classroom) just appeared today.  If you like podcasts, you might find it interesting.
- Clarification of question 1 a-b: **use text3d and get raw latex code that look ugly**!
- Start screencast
- Basics of numpy (which you won't learn in your homework, so learn it NOW)
︡70e03e40-9a05-428f-83b3-b56d801d9744︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-05-18\n### William Stein\n\n## **Lectures 23: Numpy Arrays (vs Sage Matrices) **\n\nToday:\n\n- A [podcast interview of me about Sage](https://talkpython.fm/episodes/show/59/sagemath-open-source-is-ready-to-compete-in-the-classroom) just appeared today.  If you like podcasts, you might find it interesting.\n- Clarification of question 1 a-b: **use text3d and get raw latex code that look ugly**!\n- Start screencast\n- Basics of numpy (which you won't learn in your homework, so learn it NOW)"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md
## Basic Numpy Tutorial
︡77a6150d-7e3f-4006-8dd2-f3f37b91c21b︡{"done":true,"md":"## Basic Numpy Tutorial"}
︠d1414c51-17ea-45c8-b054-68cfb1bad03b︠
%auto
import numpy as np
%default_mode python
︡d1b1cfb3-b514-440e-a959-e9e24ca4755d︡{"done":true}︡
︠85ccb948-5e01-4b4a-85e0-15cd98cff619i︠
%md
### 1. Making numpy arrays
︡22c9345a-0955-4ad4-98e7-58222ac2d5c2︡{"done":true,"md":"### 1. Making numpy arrays"}
︠6ca5ef5c-9a17-4431-952c-eb148441872as︠
np.array(range(15))
︡4e25d803-56c7-4e16-97b5-668a22d87629︡{"stdout":"array([ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14])\n"}︡{"done":true}︡
︠d02112ae-c795-4a1d-8f3d-95db0cfa963as︠
v = np.arange(15)   # different way to make above
v
︡807fd6a8-cfdf-4a87-a452-b1b20cb841cd︡{"stdout":"array([ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14])\n"}︡{"done":true}︡
︠9e90d3a5-3f00-496c-b5eb-dd7a2ae97d56s︠
v.shape
︡62d4df32-94db-434b-bee3-3592af8d1f6a︡{"stdout":"(15,)\n"}︡{"done":true}︡
︠93bbae43-9da2-46f4-bcb5-42870d881f1as︠
a = v.reshape(3, 5)
a
︡b08c35f2-bff8-4b2b-b08d-d83dcd123f3d︡{"stdout":"array([[ 0,  1,  2,  3,  4],\n       [ 5,  6,  7,  8,  9],\n       [10, 11, 12, 13, 14]])\n"}︡{"done":true}︡
︠6ac7fc3f-1207-475e-ace0-76a777237285s︠
# Or we could do this:
np.array([[ 0,  1,  2,  3,  4], [ 5,  6,  7,  8,  9], [10, 11, 12, 13, 14]])
︡d862f4fc-f3f3-4a3b-96f8-3cdb2a34268d︡{"stdout":"array([[ 0,  1,  2,  3,  4],\n       [ 5,  6,  7,  8,  9],\n       [10, 11, 12, 13, 14]])\n"}︡{"done":true}︡
︠1b334f09-fec3-455f-b8d6-79ce8150dfcds︠
a.shape
︡603d31e0-c045-40a4-8f33-f092dada0626︡{"stdout":"(3, 5)\n"}︡{"done":true}︡
︠c9a1cff1-593a-4309-950f-4e5432f2b719s︠
a.ndim
︡b0759fb7-076d-4fa7-9c6a-f9dafbe39752︡{"stdout":"2\n"}︡{"done":true}︡
︠6cb58732-0ddd-4fc3-be10-408a26b16a0fs︠
a.dtype
︡02bbbc64-a827-4b5b-bb22-9cd00fb8bfd2︡{"stdout":"dtype('int64')\n"}︡{"done":true}︡
︠92a54353-e519-43fb-b4c7-2732baf16648s︠
a.itemsize
︡e2b05718-3c8b-422d-87e0-1dba7e31e3f9︡{"stdout":"8\n"}︡{"done":true}︡
︠e17c6090-73c1-4a86-8d7a-49eb8e0d77d7s︠
a.size
︡e317f1a0-0922-498d-a77c-36ffd0373972︡{"stdout":"15\n"}︡{"done":true}︡
︠da807069-30aa-4e92-bbb2-c56b764fbf08s︠
type(a)
︡37967129-2dfa-4ff6-b66f-9c099221cf00︡{"stdout":"<type 'numpy.ndarray'>\n"}︡{"done":true}︡
︠a7f771ff-4469-4484-8de3-07fb38c7d6e0i︠
%md
**Challenge 1:**
- Make a numpy ndarray `a` with `a.shape==(4,)`
- Make a numpy ndarray `a` with `a.shape==(2,3,4)`
- Make a numpy ndarray `a` with `a.ndim==4`
- Make a numpy ndarray `a` with `a.dtype` not `dtype('int64')`
- Make a numpy ndarray `a` with itemsize 0
︡61df305e-6854-445a-ab79-2ff2c322f32b︡{"done":true,"md":"**Challenge 1:**\n- Make a numpy ndarray `a` with `a.shape==(4,)`\n- Make a numpy ndarray `a` with `a.shape==(2,3,4)`\n- Make a numpy ndarray `a` with `a.ndim==4`\n- Make a numpy ndarray `a` with `a.dtype` not `dtype('int64')`\n- Make a numpy ndarray `a` with itemsize 0"}
︠8f80cd4c-edb9-4b57-9adb-dd0dcd5e0c9a︠

︠ed4c9bec-6c4b-4ef6-afd7-34e751efb535︠

︠b8535290-e79f-4b7c-b350-67fa46cb26af︠

︠9f61ed87-dd77-4b58-a2d0-d3b72e645854︠

︠ab45cd1a-1658-4874-a564-fbece79df231i︠
%md
### 2. More about making arrays
︡57ee25ff-92a4-4e90-ab97-5d70fcd24307︡{"done":true,"md":"### 2. More about making arrays"}
︠e30be7b5-3d9e-4c5a-af52-af6ebcb18058is︠
%md Explicitly specifying the data type at creation time:
︡cddd377f-6707-486a-9ac0-309d23afc8ea︡{"hide":"input"}︡{"md":"Explicitly specifying the data type at creation time:"}︡{"done":true}︡
︠c182fa83-7609-49d1-87ba-0efd0a8f5aa9s︠
c = np.array([ [1,2], [3,4] ], dtype=complex)
c
︡76a86480-28c6-4a51-addc-3cd798307904︡{"stdout":"array([[ 1.+0.j,  2.+0.j],\n       [ 3.+0.j,  4.+0.j]])\n"}︡{"done":true}︡
︠abf8983b-3fdc-41b3-8f5d-dddec02becffs︠
c.dot(c)
︡ed224b4d-ba1c-4228-870d-1cc1c75ca72a︡{"stdout":"array([[  7.+0.j,  10.+0.j],\n       [ 15.+0.j,  22.+0.j]])\n"}︡{"done":true}︡
︠82e5dfc0-2f07-4357-aad5-bb12a82325e0s︠
np.zeros( (3,4) )
︡ba8d5ac5-d66c-4269-a6af-2b1a4225bc89︡{"stdout":"array([[ 0.,  0.,  0.,  0.],\n       [ 0.,  0.,  0.,  0.],\n       [ 0.,  0.,  0.,  0.]])\n"}︡{"done":true}︡
︠3640f7c9-c2f4-439e-84b8-14f23b3f60fcs︠
np.zeros( (3,2,2) )
︡5db40fdc-d50b-4516-aa12-3bcafd4a3752︡{"stdout":"array([[[ 0.,  0.],\n        [ 0.,  0.]],\n\n       [[ 0.,  0.],\n        [ 0.,  0.]],\n\n       [[ 0.,  0.],\n        [ 0.,  0.]]])\n"}︡{"done":true}︡
︠84a366c3-6f5f-4a8c-8d68-d97d108be2a0s︠
np.ones( (3,3) )
︡ba1b79c2-d56c-4b0c-92cc-84cad358bd1b︡{"stdout":"array([[ 1.,  1.,  1.],\n       [ 1.,  1.,  1.],\n       [ 1.,  1.,  1.]])\n"}︡{"done":true}︡
︠84ba0441-fbe0-4caa-aac7-96628c3e328e︠
np.arange(0, 2, 0.3)    # points ever .3
︡33c2f6b8-8742-4541-91eb-228c4dcb202c︡{"stdout":"array([ 0. ,  0.3,  0.6,  0.9,  1.2,  1.5,  1.8])\n"}︡{"done":true}︡
︠ad1f0505-0f4b-47dd-b625-b78f4ae62825s︠
np.linspace(0, 2, 5)    # 5 points between 0 and 2
︡020849f5-0535-4fa1-b5b0-2b29c525d4f7︡{"stdout":"array([ 0. ,  0.5,  1. ,  1.5,  2. ])\n"}︡{"done":true}︡
︠f544632e-1540-4677-af02-36c5e5e25527︠
︠e3ffadbd-faea-4447-a4fa-ad1b9b0283fai︠
%md The following is an example of a "**vectorized operation**", where we apply a function to an array, which applies that function componentwise.
︡8d7f33e1-ef90-4e9a-8ca4-b637774d45d9︡{"hide":"input"}︡{"md":"The following is an example of a \"**vectorized operation**\", where we apply a function to an array, which applies that function componentwise."}︡{"done":true}︡
︠96cebb43-150e-464c-8bed-6f0b3eaebab0s︠
v = np.linspace(0, 2, 5)
v
w = np.sin(v)
w
︡5b123203-3830-4185-9915-c15aef73a0f7︡{"stdout":"array([ 0. ,  0.5,  1. ,  1.5,  2. ])\n"}︡{"stdout":"array([ 0.        ,  0.47942554,  0.84147098,  0.99749499,  0.90929743])\n"}︡{"done":true}︡
︠03d85c25-a0d4-4814-8053-1b9b705bcfdds︠
np.sin(0.5)
︡09a98ef3-0ca3-4d59-ba5c-26f3ee9843a3︡{"stdout":"0.47942553860420301\n"}︡{"done":true}︡
︠5f05d359-c0f1-4629-92d1-fc42f2a92df3i︠
%md
**Challenge 2: **
- Make a numpy array with 10 equally spaced values between 0 and 1.
- Use `%timeit` to see how long `np.sin(...)` takes when applied to a numpy array v with one million entries in it.  Compare that to the time of doing `np.array([np.sin(x) for x in v])` and `np.array([math.sin(x) for x inv])`.  Do you see the value of vectorization?
- Does `np.sin(a)` work if a is an array with shape (2,2)?
︡55ab1efc-8b4e-4196-8391-a27e0f9d3f4b︡{"done":true,"md":"**Challenge 2: **\n- Make a numpy array with 10 equally spaced values between 0 and 1.\n- Use `%timeit` to see how long `np.sin(...)` takes when applied to a numpy array v with one million entries in it.  Compare that to the time of doing `np.array([np.sin(x) for x in v])` and `np.array([math.sin(x) for x inv])`.  Do you see the value of vectorization?\n- Does `np.sin(a)` work if a is an array with shape (2,2)?"}
︠c3dee343-b79c-4156-8319-2c4d3b7520b4︠

︠b9afd03d-4634-41b3-9873-a19b892e1fd9︠

︠1c0a31e1-f94d-476d-af87-e1008bd19506s︠

︠653858a3-b32f-41cc-90cb-939ec1fc0d0fi︠
%md
### 3. Numpy arrays "do not respect math"...

... in the same sense that some people [do not respect wood](https://youtu.be/17hnNOFaRH4)...
︡fddfe790-5ad1-4260-b8b0-5a5dfa03d4f2︡{"done":true,"md":"### 3. Numpy arrays \"do not respect math\"...\n\n... in the same sense that some people [do not respect wood](https://youtu.be/17hnNOFaRH4)..."}
︠53686acf-1266-424b-a306-c1b485fbbfccs︠
print "Numpy:"
a = np.array([[1,2],[3,4]])
np.exp(a)
print "Sage:"
b = matrix(RDF,[[1,2],[3,4]])
exp(b)
︡c75fe68a-c472-4976-b89e-71ca882454bf︡{"stdout":"Numpy:\n"}︡{"stdout":"array([[  2.71828183,   7.3890561 ],\n       [ 20.08553692,  54.59815003]])\n"}︡{"stdout":"Sage:\n"}︡{"stdout":"[51.968956198705044  74.73656456700328]\n[112.10484685050491 164.07380304920997]\n"}︡{"done":true}︡
︠9a84ef92-0894-4392-b055-38b2e49a0a83s︠
print "Numpy:"
a * a
print "Sage:"
b * b
︡6c4a5238-065e-483d-addd-bd1c118a6a59︡{"stdout":"Numpy:\n"}︡{"stdout":"array([[ 1,  4],\n       [ 9, 16]])\n"}︡{"stdout":"Sage:\n"}︡{"stdout":"[ 7.0 10.0]\n[15.0 22.0]\n"}︡{"done":true}︡
︠56261dc8-66b4-4a89-86e6-bb64d3ae9525i︠
%md
This is just an arbitrary choice, made differently by mathematicians and engineers, so you have to
be aware of it.
︡80dcf52c-9e24-499f-8b83-72e1234c5e56︡{"done":true,"md":"This is just an arbitrary choice, made differently by mathematicians and engineers, so you have to \nbe aware of it."}
︠1bed7303-2e73-4323-98ca-bbc57c778071s︠
np.exp(a)
︡82080db6-8929-469c-9d10-0889e77cc3d5︡{"stdout":"array([[  2.71828183,   7.3890561 ],\n       [ 20.08553692,  54.59815003]])\n"}︡{"done":true}︡
︠3efca961-1584-4909-851f-c5f5c8b2bc5ds︠
b.apply_map(exp)
︡355c8f16-b59d-413e-9ecc-d3090a816882︡{"stdout":"[ 2.718281828459045   7.38905609893065]\n[20.085536923187668 54.598150033144236]\n"}︡{"done":true}︡
︠7bfa0e84-79ea-47eb-866d-25311453f964s︠
# and...
a.dot(a)
︡fe03130d-e943-4970-a4a5-0d50b0131c47︡{"stdout":"array([[ 7, 10],\n       [15, 22]])\n"}︡{"done":true}︡
︠8b9e7245-5cdd-40cc-a4a4-0a578bacd45fi︠
%md
**Challenge 3:**
Strangely, I don't know how to:
- compute Sage's matrix exponential exp(b) using numpy
- do numpy's componentwise matrix multiplication `a*a` using Sage!

(no answer here -- I really don't know how to do these things.  If anybody figure it out, let me know.)
︡16afaea8-98d5-42d7-9dc8-ddad0397b27a︡{"done":true,"md":"**Challenge 3:**\nStrangely, I don't know how to:\n- compute Sage's matrix exponential exp(b) using numpy\n- do numpy's componentwise matrix multiplication `a*a` using Sage!\n\n(no answer here -- I really don't know how to do these things.  If anybody figure it out, let me know.)"}
︠f33f25de-41b9-4983-bf9a-f13a43206874︠

︠b2338570-820d-403c-9ccb-c4452a7fd470︠

︠996253de-56ef-477a-a9fa-1d97c8da5605︠

︠3cd57739-a860-4fa2-90f0-c90a5f8bf8f5i︠
%md
### 4. Binary Operations
︡d51ef842-f841-42fd-b3e0-efbdb14e6f84︡{"done":true,"md":"### 4. Binary Operations"}
︠201bb58a-604b-4b2b-9c86-a9e78ace5d2as︠
a = np.array([[1,2],[4,5]])
b = np.array([[3,5],[2,4]])
a + b
︡84804ab9-62a9-4ae0-bc37-5a8354f57055︡{"stdout":"array([[4, 7],\n       [6, 9]])\n"}︡{"done":true}︡
︠7592305e-7941-487a-a2a4-9e78bd37cfd7s︠
a * b
︡c60fabd2-678f-4c47-af67-f80afe2540ea︡{"stdout":"array([[ 3, 10],\n       [ 8, 20]])\n"}︡{"done":true}︡
︠a79c1f2a-87ae-4350-8dde-be68fa9cc0cas︠
a.dot(b)
︡8c654701-8e9b-4a7b-9987-e8716bfe271a︡{"stdout":"array([[ 7, 13],\n       [22, 40]])\n"}︡{"done":true}︡
︠24e47666-e72b-4323-9e9c-39a1cce39b39i︠
%md
Another major philosophical difference betweeen Sage and Numpy is that
if you do a binary operation involving numpy arrays with different precision,
the result has the **higher** precision, whereas in Sage, the result has
the lower precision!  Exactly the opposite choice.
︡79b06a51-5920-4fea-aa4b-9af8ed93c15d︡{"done":true,"md":"Another major philosophical difference betweeen Sage and Numpy is that\nif you do a binary operation involving numpy arrays with different precision,\nthe result has the **higher** precision, whereas in Sage, the result has\nthe lower precision!  Exactly the opposite choice."}
︠baaf7cbf-648d-499b-b1da-2c9e42948dbbs︠
a_low = np.array([[1,2],[3,4]], dtype=float)
a_high = np.array([[1,2],[3,4]], dtype=np.dtype('float128'))
a_low.dtype
a_high.dtype
print "numpy type of sum", (a_low + a_high).dtype
︡2efe1012-2d1a-4dad-8abe-1d5041548797︡{"stdout":"dtype('float64')\n"}︡{"stdout":"dtype('float128')\n"}︡{"stdout":"numpy type of sum float128\n"}︡{"done":true}︡
︠d20ce7d8-655e-4cf6-8ea1-c1e251ce90abs︠
b_low = matrix(RealField(64), [[1,2],[3,4]])
b_high = matrix(RealField(128), [[1,2],[3,4]])
b_low.parent()
b_high.parent()
print "Sage parent of sum", (b_low + b_high).parent()
︡530566c5-7b5c-4b81-bdb2-b69ca68aae1e︡{"stdout":"Full MatrixSpace of 2 by 2 dense matrices over Real Field with 64 bits of precision\n"}︡{"stdout":"Full MatrixSpace of 2 by 2 dense matrices over Real Field with 128 bits of precision\n"}︡{"stdout":"Sage parent of sum Full MatrixSpace of 2 by 2 dense matrices over Real Field with 64 bits of precision\n"}︡{"done":true}︡
︠04576e71-2371-43f7-b190-e5e48da53786is︠
%md (For the record, Magma does the same thing as Sage.)
︡f2217274-3f40-45f1-a3fd-92bef19ebd32︡{"hide":"input"}︡{"md":"(For the record, Magma does the same thing as Sage.)"}︡{"done":true}︡
︠6925cfa9-5dd5-43cb-8a1d-a7c7ba99b03di︠
%md
### 5. Methods of numpy arrays
︡81930046-9dc9-495c-ad43-db9ca883b876︡{"done":true,"md":"### 5. Methods of numpy arrays"}
︠585e1289-c108-4bc1-b700-b2c51f0fc8b9s︠
a = np.arange(100).reshape(10,10)
a
︡66d0fcf0-fb2d-4a6a-b5d2-e20a521082d2︡{"stdout":"array([[ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9],\n       [10, 11, 12, 13, 14, 15, 16, 17, 18, 19],\n       [20, 21, 22, 23, 24, 25, 26, 27, 28, 29],\n       [30, 31, 32, 33, 34, 35, 36, 37, 38, 39],\n       [40, 41, 42, 43, 44, 45, 46, 47, 48, 49],\n       [50, 51, 52, 53, 54, 55, 56, 57, 58, 59],\n       [60, 61, 62, 63, 64, 65, 66, 67, 68, 69],\n       [70, 71, 72, 73, 74, 75, 76, 77, 78, 79],\n       [80, 81, 82, 83, 84, 85, 86, 87, 88, 89],\n       [90, 91, 92, 93, 94, 95, 96, 97, 98, 99]])\n"}︡{"done":true}︡
︠98f0b51f-099a-4887-b6dc-bbadde55917ds︠
a.sum()
︡50c08543-3e6b-4d5f-9d32-4bd323cb8f96︡{"stdout":"4950\n"}︡{"done":true}︡
︠a199cfd7-f54a-4178-99a5-83c091569799︠
a.sum(axis=0) # sums each column
︡82a8a670-de0e-4d07-80b4-f49151fb3a57︡{"stdout":"array([450, 460, 470, 480, 490, 500, 510, 520, 530, 540])\n"}︡{"done":true}︡
︠daaa18b0-6b87-4998-b2f0-37dbf4b15f5bs︠
a.sum(axis=1) # sums each row
︡4bdccc68-c4bf-4d35-874c-9d9798cffda6︡{"stdout":"array([ 45, 145, 245, 345, 445, 545, 645, 745, 845, 945])\n"}︡{"done":true}︡
︠7442eb0b-b7c8-4c25-85c5-69d2de5992b7ss︠
a.prod() # of course it is 0
︡be8f57a6-1f24-4581-be25-5c5089c783ab︡{"stdout":"0\n"}︡{"done":true}︡
︠4f2038e4-bf23-44e6-9dc9-325fd34a24d6s︠
a.std()
︡1a8e403e-8b91-47f1-891d-1a4027ec397f︡{"stdout":"28.866070047722118\n"}︡{"done":true}︡
︠5f0189f2-1a99-45bb-b2f9-9ed019dcf7c2ss︠
a.std(axis=1)
︡979de861-e037-43e4-b63a-129c21b02550︡{"stdout":"array([ 2.87228132,  2.87228132,  2.87228132,  2.87228132,  2.87228132,\n        2.87228132,  2.87228132,  2.87228132,  2.87228132,  2.87228132])\n"}︡{"done":true}︡
︠7c61c3a7-f7ff-4adb-b406-2658ead8f736s︠
a.mean(axis=1)
︡73ac779b-b851-4949-aa4e-6cb57aeb41d6︡{"stdout":"array([  4.5,  14.5,  24.5,  34.5,  44.5,  54.5,  64.5,  74.5,  84.5,  94.5])\n"}︡{"done":true}︡
︠590c58f1-12c4-4498-bc52-8e31049f0112s︠
a.var()
︡8482bb11-a2e2-4c96-a86e-bf34f43be9f0︡{"stdout":"833.25\n"}︡{"done":true}︡
︠6dc1868f-8ff4-4ce9-9ae2-3252f8113dces︠
a.max()
︡cca244b6-e18a-4171-a7d8-5751b4855c20︡{"stdout":"99\n"}︡{"done":true}︡
︠bb268348-e5b0-4b22-8a6f-35ed8f3f6a39s︠
a.min()
︡8cf8c072-514d-4875-b1b3-b1d7aa11ea22︡{"stdout":"0\n"}︡{"done":true}︡
︠d0bc6bb9-a177-4e91-975b-c0b659401b75i︠
%md
**Challenge 5:**
- How does the speed of Numpy's `np.arange(1000000).sum()` compare to Python's `sum(range(1000000))`?
- How does the speed of Numpy's standard deviation (so `std`) compare to that of pandas std on a Data frame with input range(1000000)?
︡8cc3069a-db80-479a-b1b6-905e9246822b︡{"done":true,"md":"**Challenge 5:**\n- How does the speed of Numpy's `np.arange(1000000).sum()` compare to Python's `sum(range(1000000))`?\n- How does the speed of Numpy's standard deviation (so `std`) compare to that of pandas std on a Data frame with input range(1000000)?"}
︠9e308469-8b97-4c7f-adf1-0ba2253d74bes︠
%timeit np.arange(1000000).sum()
︡d950c425-337d-415a-85fe-54aa240ba8a2︡
︠b0bfdfae-85ca-4b71-9aa2-8b9c64a3be65s︠
%timeit  sum(range(1000000))
︡c4f0f122-c0b8-484e-a71f-9301d7249006︡
︠92f2b246-216a-4fd7-82ab-c75b0b34098a︠
a = np.arange(1000000)
a.std()
%timeit a.std()
︡67a084c7-010a-451e-9d71-2fc7f9aae4c9︡
︠c4cee4d6-5194-49ed-acf7-a6a2cdf07a82s︠
import pandas
df = pandas.DataFrame(np.arange(1000000))
df.std()
%timeit df.std()
︡b3a2f17d-eecb-4247-962f-5102fda05783︡
︠5b6d2e8d-5335-4779-9c12-26b26bba124ci︠
%md
Heh, look up at the actual *OUTPUT* of the above two .std() functions --
they are completely different after the decimal point.

> _Caveat emptor!_
︡18afbf95-ede5-4e08-abda-8034314d2cdd︡{"done":true,"md":"Heh, look up at the actual *OUTPUT* of the above two .std() functions --\nthey are completely different after the decimal point.  \n\n> _Caveat emptor!_"}
︠a47a1325-eeeb-4e22-bae6-1bab7056cab2︠
v = stats.TimeSeries(range(1000000))  # I wrote this in Cython once...
%timeit v.standard_deviation()
︡589d2de9-1f35-4035-a478-cdbeb61ea952︡
︠d798ead7-f9f2-4a7c-9c1a-41e03dc0888b︠

︠50f74575-ce6f-4ea4-bc15-97e1c64c4fbai︠



%md
### 6. Indexing and slicing
︡813cb584-6b54-4371-8eec-a197a6e6faf0︡{"done":true,"md":"### 6. Indexing and slicing"}
︠d9234a81-3ca8-47a0-9887-94f4ffbeb7fbs︠
a = np.arange(10)
a
︡4084a115-70e8-4bee-ad30-1f0846e6835e︡{"stdout":"array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])\n"}︡{"done":true}︡
︠bb8ffe4b-5a7d-4c23-b526-750b9c04cb88s︠
a[3] = 10
a
︡9497627c-5f0c-481e-a81b-eb22663c8a57︡{"stdout":"array([ 0,  1,  2, 10,  4,  5,  6,  7,  8,  9])\n"}︡{"done":true}︡
︠45d6064d-d029-4ae6-8d6a-f93968b4c8eass︠
a[2:5]
︡3aec9e45-de79-47c3-8e35-19794cc02ec7︡{"stdout":"array([ 2, 10,  4])\n"}︡{"done":true}︡
︠27867a19-7c2d-4c76-9817-7b3ae1c3d76ds︠
a[2:5] = 10
︡4d13b867-bac8-42f6-8f6f-ba6edd0da35c︡{"done":true}︡
︠2d699d44-af82-4080-beae-c84c5a704298s︠
a
︡cc112a65-c55e-48f5-934f-cd4adbc54046︡{"stdout":"array([ 0,  1, 10, 10, 10,  5,  6,  7,  8,  9])\n"}︡{"done":true}︡
︠c44392fd-5093-4231-b016-75e0bc4e4363s︠
a[2:5] = [100,200,300]
a
︡c4ce73cf-403d-4a21-8dde-5efcdd7480bf︡{"stdout":"array([  0,   1, 100, 200, 300,   5,   6,   7,   8,   9])\n"}︡{"done":true}︡
︠9f56e45d-c9c6-4ad6-a24a-23b6ee82357ci︠
%md
I hope you start to feel the power...
︡221e0682-642b-4837-b698-4dc56e6c4045︡{"done":true,"md":"I hope you start to feel the power..."}
︠87e8b59f-a518-4a7b-8bc8-aea11dd6b049s︠
a[2:7:2]
︡726eda55-629f-42b5-b414-5d10c9164672︡{"stdout":"array([100, 300,   6])\n"}︡{"done":true}︡
︠a6fdfa6b-ffbf-4a8a-b47b-056b873df112s︠
a[2:7:2] = [-1, -2, -3]
a
︡21841c6c-b190-452c-b286-89a8241a31b6︡{"stdout":"array([  0,   1,  -1, 200,  -2,   5,  -3,   7,   8,   9])\n"}︡{"done":true}︡
︠fad8b797-dc1d-4f50-80a9-55833e9dabf5s︠
a = np.arange(100).reshape(10,10)
a
︡a31fe781-a193-4636-925b-af18164eb63f︡{"stdout":"array([[ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9],\n       [10, 11, 12, 13, 14, 15, 16, 17, 18, 19],\n       [20, 21, 22, 23, 24, 25, 26, 27, 28, 29],\n       [30, 31, 32, 33, 34, 35, 36, 37, 38, 39],\n       [40, 41, 42, 43, 44, 45, 46, 47, 48, 49],\n       [50, 51, 52, 53, 54, 55, 56, 57, 58, 59],\n       [60, 61, 62, 63, 64, 65, 66, 67, 68, 69],\n       [70, 71, 72, 73, 74, 75, 76, 77, 78, 79],\n       [80, 81, 82, 83, 84, 85, 86, 87, 88, 89],\n       [90, 91, 92, 93, 94, 95, 96, 97, 98, 99]])\n"}︡{"done":true}︡
︠644d7904-5b61-4ebe-93dd-084bfb490463s︠
a[1:3, :]
︡15d09539-d8e2-44da-9c10-0713f5acc424︡{"stdout":"array([[10, 11, 12, 13, 14, 15, 16, 17, 18, 19],\n       [20, 21, 22, 23, 24, 25, 26, 27, 28, 29]])\n"}︡{"done":true}︡
︠1552804d-48fe-43a0-8b4b-500339dee134s︠
a[:, 1:3]
︡6b0dea26-b1eb-4645-b000-3ede6fa321b4︡{"stdout":"array([[11, 12],\n       [11, 12],\n       [21, 22],\n       [31, 32],\n       [41, 42],\n       [51, 52],\n       [61, 62],\n       [71, 72],\n       [81, 82],\n       [91, 92]])\n"}︡{"done":true}︡
︠64dd8ab7-0b6a-4c7c-b241-b729c287be1fs︠
# set the first column to equal the last:
a[:,0] = a[:,-1]
︡c3e10bc7-3ecf-44e8-af4a-61267f13cc55︡{"done":true}︡
︠b179a23e-e368-4e0d-bd61-cfe44f1af3aas︠
a
︡592b352c-9aaa-4c2f-8dfc-01ef31017e99︡{"stdout":"array([[19, 11, 12, 13, 14, 15, 16, 17, 18, 19],\n       [19, 11, 12, 13, 14, 15, 16, 17, 18, 19],\n       [29, 21, 22, 23, 24, 25, 26, 27, 28, 29],\n       [39, 31, 32, 33, 34, 35, 36, 37, 38, 39],\n       [49, 41, 42, 43, 44, 45, 46, 47, 48, 49],\n       [59, 51, 52, 53, 54, 55, 56, 57, 58, 59],\n       [69, 61, 62, 63, 64, 65, 66, 67, 68, 69],\n       [79, 71, 72, 73, 74, 75, 76, 77, 78, 79],\n       [89, 81, 82, 83, 84, 85, 86, 87, 88, 89],\n       [99, 91, 92, 93, 94, 95, 96, 97, 98, 99]])\n"}︡{"done":true}︡
︠6508aa9b-ea02-4e55-9e2b-f91113d7774ai︠
%md
All this amazing slicing and dicing, and getting references into nd arrays... works
on $n$-dimensional arrays of data.
︡df743c26-f0d0-4a31-91f3-1d1cda822db2︡{"done":true,"md":"All this amazing slicing and dicing, and getting references into nd arrays... works \non $n$-dimensional arrays of data."}
︠a62e55a6-9443-4fe7-bbe5-d877b39315f1s︠
a = np.zeros( (3,2,2) )
a
︡85d7bab0-0e0f-4610-9b5b-3d348b3750ab︡{"stdout":"array([[[ 0.,  0.],\n        [ 0.,  0.]],\n\n       [[ 0.,  0.],\n        [ 0.,  0.]],\n\n       [[ 0.,  0.],\n        [ 0.,  0.]]])\n"}︡{"done":true}︡
︠dd94ecaf-33cf-43ff-99c5-6bdf6b1c2aces︠
a[0] = [[1,2], [3,4]]
a
︡7365bef7-7367-4aa0-a577-2e505cca7c0d︡{"stdout":"array([[[ 1.,  2.],\n        [ 3.,  4.]],\n\n       [[ 0.,  0.],\n        [ 0.,  0.]],\n\n       [[ 0.,  0.],\n        [ 0.,  0.]]])\n"}︡{"done":true}︡
︠bb9ab5f7-5810-4f69-9ade-d32c079c8834s︠
a[1] = a[0]
a
︡a06ec5a9-6166-4fc5-a6d7-738a2f574ee4︡{"stdout":"array([[[ 1.,  2.],\n        [ 3.,  4.]],\n\n       [[ 1.,  2.],\n        [ 3.,  4.]],\n\n       [[ 0.,  0.],\n        [ 0.,  0.]]])\n"}︡{"done":true}︡
︠89d84c5c-1c31-493d-ac3d-622aa32ebf28︠
# what do you think will happen...
a[0,0,0] = -20
︡2382e763-fc99-4449-a229-9dde6f162c1e︡{"done":true}︡
︠0fd97d61-4ba5-4a74-8cee-b1d854406d45︠










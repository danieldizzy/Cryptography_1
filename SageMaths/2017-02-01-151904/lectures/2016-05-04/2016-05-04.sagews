︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-05-04
### William Stein

## **Lectures 17: Linear Algebra (part 2 of 3)**

︡70e03e40-9a05-428f-83b3-b56d801d9744︡︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-05-04\n### William Stein\n\n## **Lectures 17: Linear Algebra (part 2 of 3)**"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8si︠
%md
## Remarks
<img class='pull-right' style='margin-right:50px;margin-left:20px' width=200 src="http://techfads.com/wp-content/uploads/2012/03/fire.jpg">

1. I rewrote Sage worksheet rendering during the last three days (e.g., TimeTravel revert, keeps position, shouldn't get corrupted).  Please refresh your browser clearing the cache and test.  Perhaps it will be better!  Also, in response to some problems yesterday, I greatly reworked some core things about the design/efficiency of the web backend this morning, so there's a really huge amount of CPU power for "handling changefeeds", which should make everything a lot more robust.  **Help me stress test this right now ;-)**

2. Reminder: Homework and grading are due Friday at 6pm.

3. Reminder to me: start screencast.

4. First: I will systematically show you a bunch of examples from the [sage linear algebra quickref guide.](https://wiki.sagemath.org/quickref?action=AttachFile&do=get&target=quickref-linalg.pdf)

5. Second: You work on homework and we answer your questions.
︡229540a4-34b0-4fc1-af42-3dcb2a12f180︡︡{"done":true,"md":"## Remarks\n<img class='pull-right' style='margin-right:50px;margin-left:20px' width=200 src=\"http://techfads.com/wp-content/uploads/2012/03/fire.jpg\">\n\n1. I rewrote Sage worksheet rendering during the last three days (e.g., TimeTravel revert, keeps position, shouldn't get corrupted).  Please refresh your browser clearing the cache and test.  Perhaps it will be better!  Also, in response to some problems yesterday, I greatly reworked some core things about the design/efficiency of the web backend this morning, so there's a really huge amount of CPU power for \"handling changefeeds\", which should make everything a lot more robust.  **Help me stress test this right now ;-)**\n\n2. Reminder: Homework and grading are due Friday at 6pm.\n\n3. Reminder to me: start screencast.\n\n4. First: I will systematically show you a bunch of examples from the [sage linear algebra quickref guide.](https://wiki.sagemath.org/quickref?action=AttachFile&do=get&target=quickref-linalg.pdf)\n\n5. Second: You work on homework and we answer your questions."}
︠e4e74103-7bb8-48ab-be89-645105f49dbcs︠
u = vector(QQ, [5, 3/2, -1])  # dense vector
show(u)
︡e645a16f-c0ac-48b6-bafa-9fc7211f5c3d︡︡{"html":"<div align='center'>$\\displaystyle \\left(5,\\,\\frac{3}{2},\\,-1\\right)$</div>"}︡{"done":true}
︠3f16610a-59fb-4ab0-83a9-6375e4e27a13s︠
u[0]  # 0 based
︡08897dd7-845c-4bc0-94eb-d034f6aec806︡︡{"stdout":"5\n"}︡{"done":true}
︠245ba8da-098d-4ca2-ba6c-61f24b458060s︠
parent(u)
︡7bec7850-d277-4e09-828e-5251f76bf267︡︡{"stdout":"Vector space of dimension 3 over Rational Field\n"}︡{"done":true}
︠273b1188-3104-47f1-9e7c-59da51c77d7es︠
# a *sparse* vector -- same functions, but underlying algorithms for sparse vectors (and matrices) use sparse data structures/algorithms
v = vector({2:4, 95:4, 1000000:3/4})
parent(v)
︡193b6437-1dc7-4a27-b89a-d47d5a2f532d︡︡{"stdout":"Sparse vector space of dimension 1000001 over Rational Field\n"}︡{"done":true}
︠5f04cec8-0652-479e-a206-f1eb6ea43108s︠
v[0]
v[1000000]
︡e33ab128-59d9-4534-9d3c-4da7eef6453f︡︡{"stdout":"0\n"}︡{"stdout":"3/4\n"}︡{"done":true}
︠9e0dd576-918a-495f-b524-40c5e9df6d01s︠
m = matrix(QQ, 10000, sparse=True)

︡8796fba9-5451-472f-9177-674c63f52cb9︡︡{"done":true}
︠7facb2ba-85f2-402b-bdf5-a4bbc471d2c6s︠
m
︡38f6066a-74fd-4a75-9bf6-e9d8253b5ada︡︡{"stdout":"10000 x 10000 sparse matrix over Rational Field\n"}︡{"done":true}
︠74c47551-a83c-4a89-bc85-74ee5cabc4afs︠
m[0,100] = 4/5
︡de32d8f3-9f39-4018-a84e-587b1f5cf8f9︡︡{"done":true}
︠4f41df78-ff9f-4803-86a0-1dd9e2712497s︠
m[0,100]
︡caa49fc4-e91c-435c-9fce-44b0558c183f︡︡{"stdout":"4/5\n"}︡{"done":true}
︠da7acc88-4aa7-412e-a8ed-435253c02a35s︠
u = vector([1, 3/2, -1]); v = vector([1/3, 8, -2])
u.dot_product(v)
u.cross_product(v)
u.inner_product(v)
u.pairwise_product(v)
︡da809150-02ac-4890-a388-bba831d2e2c6︡︡{"stdout":"43/3\n"}︡{"stdout":"(5, 5/3, 15/2)\n"}︡{"stdout":"43/3\n"}︡{"stdout":"(1/3, 12, 2)\n"}︡{"done":true}
︠8de51aba-d10e-4984-a35a-c76eedb1c9bfs︠
identity_matrix(5)
︡830c8976-29d1-4e58-a025-2d4b6eb93d74︡︡{"stdout":"[1 0 0 0 0]\n[0 1 0 0 0]\n[0 0 1 0 0]\n[0 0 0 1 0]\n[0 0 0 0 1]\n"}︡{"done":true}
︠9d476802-4f36-49d2-8a60-5168f808e281s︠
%octave
eye(5)
︡5927f45b-4270-45c8-9f9b-c12af9fe233e︡︡{"stdout":"ans =\n\n 1 0 0 0 0\n 0 1 0 0 0\n 0 0 1 0 0\n 0 0 0 1 0\n 0 0 0 0 1\n\n"}︡{"done":true}
︠d9dae21d-c4df-48c7-ae8c-9f81606c8cd4s︠
A = matrix(QQ, [[1,2],[3,4]])
f(x) = x^3 - 2*x + 1
f(A) # FAIL -- this is maybe a bug though (the quickref says it should work) -- I reported this
︡77b95b71-e367-4f40-9a4a-b86bdb2d228c︡︡{"stderr":"Error in lines 3-3\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 905, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"sage/symbolic/expression.pyx\", line 4902, in sage.symbolic.expression.Expression.__call__ (/projects/sage/sage-6.10/src/build/cythonized/sage/symbolic/expression.cpp:28201)\n    return self._parent._call_element_(self, *args, **kwds)\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/sage/symbolic/callable.py\", line 487, in _call_element_\n    return SR(_the_element.substitute(**d))\n  File \"sage/symbolic/expression.pyx\", line 4808, in sage.symbolic.expression.Expression.substitute (/projects/sage/sage-6.10/src/build/cythonized/sage/symbolic/expression.cpp:27691)\n    (<Expression>self.coerce_in(v))._gobj))\n  File \"sage/symbolic/expression.pyx\", line 2803, in sage.symbolic.expression.Expression.coerce_in (/projects/sage/sage-6.10/src/build/cythonized/sage/symbolic/expression.cpp:20012)\n    return self._parent._coerce_(z)\n  File \"sage/structure/parent_old.pyx\", line 239, in sage.structure.parent_old.Parent._coerce_ (/projects/sage/sage-6.10/src/build/cythonized/sage/structure/parent_old.c:4448)\n    return self.coerce(x)\n  File \"sage/structure/parent.pyx\", line 1351, in sage.structure.parent.Parent.coerce (/projects/sage/sage-6.10/src/build/cythonized/sage/structure/parent.c:11050)\n    raise TypeError(\"no canonical coercion from %s to %s\" % (parent_c(x), self))\nTypeError: no canonical coercion from Full MatrixSpace of 2 by 2 dense matrices over Rational Field to Callable function ring with argument x\n"}︡{"done":true}
︠f2e6698c-4208-437a-a9ef-5bc8980c0f79s︠
A = matrix(QQ, [[1,2],[3,4]])
R.<y> = PolynomialRing(QQ)
f = y^3 - 2*y + 1
f(A)  # works
︡f0e23ad3-a297-4adc-b065-558c73532dab︡︡{"stdout":"[ 36  50]\n[ 75 111]\n"}︡{"done":true}
︠d985eb65-fa42-4d90-b862-571ab995614es︠
show(A.exp())   # compute sum A^k/k!
︡84093406-7b17-4159-bc02-4fa9caf1fa0d︡︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n-\\frac{1}{22} \\, {\\left({\\left(\\sqrt{33} - 11\\right)} e^{\\sqrt{33}} - \\sqrt{33} - 11\\right)} e^{\\left(-\\frac{1}{2} \\, \\sqrt{33} + \\frac{5}{2}\\right)} &amp; \\frac{2}{33} \\, {\\left(\\sqrt{33} e^{\\sqrt{33}} - \\sqrt{33}\\right)} e^{\\left(-\\frac{1}{2} \\, \\sqrt{33} + \\frac{5}{2}\\right)} \\\\\n\\frac{1}{11} \\, {\\left(\\sqrt{33} e^{\\sqrt{33}} - \\sqrt{33}\\right)} e^{\\left(-\\frac{1}{2} \\, \\sqrt{33} + \\frac{5}{2}\\right)} &amp; \\frac{1}{22} \\, {\\left({\\left(\\sqrt{33} + 11\\right)} e^{\\sqrt{33}} - \\sqrt{33} + 11\\right)} e^{\\left(-\\frac{1}{2} \\, \\sqrt{33} + \\frac{5}{2}\\right)}\n\\end{array}\\right)$</div>"}︡{"done":true}
︠c6f9a89b-fd1a-466e-a4f8-96c8d54356a3s︠
print "A.inverse()"
A.inverse()
print "A^(-1)"
A^(-1)
print "~A"
~A
print "A.transpose()"
A.transpose()
print "A.conjugate() -- boring since real"
A.conjugate()
print "A.antitranspose()"
A.antitranspose()
print "A.adjoint() -- matrix ov adjoint matrices"
A.adjoint()
︡d5c88d02-7bf0-4781-b42f-f840d4331628︡︡{"stdout":"A.inverse()\n"}︡{"stdout":"[  -2    1]\n[ 3/2 -1/2]\n"}︡{"stdout":"A^(-1)\n"}︡{"stdout":"[  -2    1]\n[ 3/2 -1/2]\n"}︡{"stdout":"~A\n"}︡{"stdout":"[  -2    1]\n[ 3/2 -1/2]\n"}︡{"stdout":"A.transpose()\n"}︡{"stdout":"[1 3]\n[2 4]\n"}︡{"stdout":"A.conjugate() -- boring since real\n"}︡{"stdout":"[1 2]\n[3 4]\n"}︡{"stdout":"A.antitranspose()\n"}︡{"stdout":"[4 2]\n[3 1]\n"}︡{"stdout":"A.adjoint()\n"}︡{"stdout":"[ 4 -2]\n[-3  1]\n"}︡{"done":true}
︠18fede8b-11a6-4020-9d47-1828b6d14f65s︠
A = matrix(QQ, 3, [1..9])
show(A)
V = A.image()
W = A.kernel()
print "image: "
print V
print "kernel: "
print W
︡88fab454-7e14-4620-b79c-d33780023b93︡︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 2 &amp; 3 \\\\\n4 &amp; 5 &amp; 6 \\\\\n7 &amp; 8 &amp; 9\n\\end{array}\\right)$</div>"}︡{"stdout":"image: \n"}︡{"stdout":"Vector space of degree 3 and dimension 2 over Rational Field\nBasis matrix:\n[ 1  0 -1]\n[ 0  1  2]\n"}︡{"stdout":"kernel: \n"}︡{"stdout":"Vector space of degree 3 and dimension 1 over Rational Field\nBasis matrix:\n[ 1 -2  1]\n"}︡{"done":true}
︠dfe26b5d-41e6-4ada-9bf8-bae91bc994acs︠
A.restrict(V) # V = image
︡db70989f-109c-4232-a3d0-ce93fe558311︡︡{"stdout":"[-6 -6]\n[18 21]\n"}︡{"done":true}
︠f05bff47-8e23-4bdb-a36b-45e68b935521s︠
A.restrict(W)
︡2ff2d24f-6044-4cd2-9b5b-936ca16fc86f︡︡{"stdout":"[0]\n"}︡{"done":true}
︠73a9d554-8705-455b-8168-0099c437b16es︠
show(factor(A.charpoly()))
︡0705e130-dff0-4795-8b5d-f9a162c2b159︡︡{"html":"<div align='center'>$\\displaystyle x \\cdot (x^{2} - 15 x - 18)$</div>"}︡{"done":true}
︠7696c169-db09-466e-bccd-23a8b945ba48s︠
show(factor(A.restrict(V).charpoly()))
︡ff9f762a-14fa-4be5-a159-25c4eb736841︡︡{"html":"<div align='center'>$\\displaystyle (x^{2} - 15 x - 18)$</div>"}︡{"done":true}
︠e126e417-17a5-408b-896c-4f0d155d1eacs︠
M = span(QQ, [vector([1,0,0])])   # A doesn't leave the subspace M invariant... so get an error :-)
M
A.restrict(M)
︡1d0c748b-f168-4f4a-b87d-6a62e9dbe00f︡︡{"stdout":"Vector space of degree 3 and dimension 1 over Rational Field\nBasis matrix:\n[1 0 0]\n"}︡{"stderr":"Error in lines 3-3\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 905, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"sage/matrix/matrix2.pyx\", line 4894, in sage.matrix.matrix2.Matrix.restrict (/projects/sage/sage-6.10/src/build/cythonized/sage/matrix/matrix2.c:36811)\n    raise ArithmeticError, \"subspace is not invariant under matrix\"\nArithmeticError: subspace is not invariant under matrix\n"}︡{"done":true}
︠f1816b73-9dae-42c0-b25b-2dadbb99c9fci︠
%md
## And some fun...
︡13c1e9cf-77a3-4c96-8337-5d6cf91bd87a︡︡{"done":true,"md":"## And some fun..."}
︠0ef42c2f-0ad4-433f-afb3-340fc8e4e13as︠
matrix_plot(random_matrix(RDF,50)^3, cmap='summer', colorbar=True)
︡42def3e4-cf23-4329-b410-4f456148250a︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/28791/tmp_11iyLY.svg","show":true,"text":null,"uuid":"cd8e4ea3-0a5d-4bdc-8236-d8bedc99e46e"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠a80f3856-82bd-40a5-8371-47df013ec2ccs︠
show(DiGraph(A))
︡4d79c1fd-7a62-46c3-a262-2e0aa0efedac︡︡{"d3":{"data":{"charge":-120,"directed":true,"edge_labels":false,"edge_thickness":2,"gravity":0.04,"height":null,"link_distance":50,"link_strength":1,"links":[{"color":"#aaa","curve":15,"name":"","source":0,"strength":0,"target":1},{"color":"#aaa","curve":30,"name":"","source":0,"strength":0,"target":1},{"color":"#aaa","curve":15,"name":"","source":0,"strength":0,"target":2},{"color":"#aaa","curve":30,"name":"","source":0,"strength":0,"target":2},{"color":"#aaa","curve":45,"name":"","source":0,"strength":0,"target":2},{"color":"#aaa","curve":15,"name":"","source":1,"strength":0,"target":0},{"color":"#aaa","curve":30,"name":"","source":1,"strength":0,"target":0},{"color":"#aaa","curve":45,"name":"","source":1,"strength":0,"target":0},{"color":"#aaa","curve":60,"name":"","source":1,"strength":0,"target":0},{"color":"#aaa","curve":15,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":30,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":45,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":60,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":75,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":90,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":15,"name":"","source":2,"strength":0,"target":0},{"color":"#aaa","curve":30,"name":"","source":2,"strength":0,"target":0},{"color":"#aaa","curve":45,"name":"","source":2,"strength":0,"target":0},{"color":"#aaa","curve":60,"name":"","source":2,"strength":0,"target":0},{"color":"#aaa","curve":75,"name":"","source":2,"strength":0,"target":0},{"color":"#aaa","curve":90,"name":"","source":2,"strength":0,"target":0},{"color":"#aaa","curve":105,"name":"","source":2,"strength":0,"target":0},{"color":"#aaa","curve":15,"name":"","source":2,"strength":0,"target":1},{"color":"#aaa","curve":30,"name":"","source":2,"strength":0,"target":1},{"color":"#aaa","curve":45,"name":"","source":2,"strength":0,"target":1},{"color":"#aaa","curve":60,"name":"","source":2,"strength":0,"target":1},{"color":"#aaa","curve":75,"name":"","source":2,"strength":0,"target":1},{"color":"#aaa","curve":90,"name":"","source":2,"strength":0,"target":1},{"color":"#aaa","curve":105,"name":"","source":2,"strength":0,"target":1},{"color":"#aaa","curve":120,"name":"","source":2,"strength":0,"target":1}],"loops":[{"color":"#aaa","curve":20,"name":"","source":0,"strength":0,"target":0},{"color":"#aaa","curve":20,"name":"","source":1,"strength":0,"target":1},{"color":"#aaa","curve":30,"name":"","source":1,"strength":0,"target":1},{"color":"#aaa","curve":40,"name":"","source":1,"strength":0,"target":1},{"color":"#aaa","curve":50,"name":"","source":1,"strength":0,"target":1},{"color":"#aaa","curve":60,"name":"","source":1,"strength":0,"target":1},{"color":"#aaa","curve":20,"name":"","source":2,"strength":0,"target":2},{"color":"#aaa","curve":30,"name":"","source":2,"strength":0,"target":2},{"color":"#aaa","curve":40,"name":"","source":2,"strength":0,"target":2},{"color":"#aaa","curve":50,"name":"","source":2,"strength":0,"target":2},{"color":"#aaa","curve":60,"name":"","source":2,"strength":0,"target":2},{"color":"#aaa","curve":70,"name":"","source":2,"strength":0,"target":2},{"color":"#aaa","curve":80,"name":"","source":2,"strength":0,"target":2},{"color":"#aaa","curve":90,"name":"","source":2,"strength":0,"target":2},{"color":"#aaa","curve":100,"name":"","source":2,"strength":0,"target":2}],"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"}],"pos":[],"vertex_labels":true,"vertex_size":7,"width":null},"viewer":"graph"}}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠041fea23-3cdc-48f1-897a-51d0018cb463s︠
n = 10; list_plot3d(random_matrix(RDF, n),
                    texture='green',
                    frame_aspect_ratio=[1, 1, 1], mesh=1)
︡9b4246cd-f0af-42f3-9c2a-8694ea3fe9f3︡︡{"file":{"filename":"b2da177e-18e5-4ac9-ad62-b8d2ebdc8c85.sage3d","uuid":"b2da177e-18e5-4ac9-ad62-b8d2ebdc8c85"}}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠6a5497d6-00a5-4145-8e35-823b83be8586s︠
show(DiGraph(matrix(ZZ,2,2,[2,1,  0,1])))
︡4e4b3136-25f0-4502-8236-21d329275d9a︡︡{"d3":{"data":{"charge":-120,"directed":true,"edge_labels":false,"edge_thickness":2,"gravity":0.04,"height":null,"link_distance":50,"link_strength":1,"links":[{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":1}],"loops":[{"color":"#aaa","curve":20,"name":"","source":0,"strength":0,"target":0},{"color":"#aaa","curve":30,"name":"","source":0,"strength":0,"target":0},{"color":"#aaa","curve":20,"name":"","source":1,"strength":0,"target":1}],"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"}],"pos":[],"vertex_labels":true,"vertex_size":7,"width":null},"viewer":"graph"}}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠c0b02986-e21c-4f15-b087-84be2edf8bb9s︠
v = vector([1,2,3])
w = vector([0,2,5])

%var s, t
g = parametric_plot3d(s*v + t*w, (s, -1,1), (t,-1,1), opacity=.5)

v = vector([1,-2,3])
w = vector([0,3,-5])
h = parametric_plot3d(s*v + t*w, (s, -1,1), (t,-1,1), color='red')

#i = parametric_plot3d(...., (s, -2, 2), ...)
#g+h+i
show(g+h)

︡f9cf1207-6763-4341-bf6c-eeab01c5894e︡︡{"file":{"filename":"110289fd-a602-4c82-8bde-8c53bfbc662f.sage3d","uuid":"110289fd-a602-4c82-8bde-8c53bfbc662f"}}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠258f7e12-c04c-4ab3-8887-1bd1bc0d526c︠










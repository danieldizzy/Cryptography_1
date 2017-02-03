︠64293cf9-94ed-40e9-a220-b2afa27c52e3i︠
%md
# Math 480 - Grading due 6pm on May 13, 2016
︡fd59a78e-138d-424b-8378-10934d578ca6︡{"done":true,"md":"# Math 480 - Grading due 6pm on May 13, 2016"}
︠c865a156-36f8-4815-befc-01a82789395cs︠
%typeset_mode True
%html
<font color="red"><h1>HOMEWORK TOTAL: 70 POINTS</h1></font>
︡6aab7490-780b-4ca3-873f-7cef92cdc251︡{"hide":"input"}︡{"html":"<font color=\"red\"><h1>HOMEWORK TOTAL: 70 POINTS</h1></font>"}︡{"done":true}︡
︠c0b6ec9b-040b-4382-a92b-3f531f1bc4bbs︠

︡edf58b4c-9f82-4712-9b5e-8799dd692c6f︡{"done":true}︡
︠8825dd11-b520-4c9c-8385-c5a9d0da020bi︠
%md
### Problem 1 -- solve a linear system in four variables both symbolically and using matrices

Consider the following system of linear equations

$$
\begin{align*}
a + 3b - 2c + 7d &= -12 \\
-a - 5b - 2d &= 389 \\
-5a - 2b + 3c + d &= 0 \\
3a + 8b - d &= 4
\end{align*}
$$

Solve this equation for rational numbers $a$, $b$, $c$ and $d$ in several ways using Sage:
- a. Solve symbolically, using the *solve* command and symbolic variables (created using `%var`)
- b. Solve using matrices, in the following three ways:
  - (1) Create a 4x4 matrix $A$ and a vector $v$ and use `A.solve_right(v)`.   (As a double check, note that $\det(A)=-21$.)
  - (2) Multiply $v$ by the inverse of $A$,
  - (3) Compute the reduced row echelon form of the augmented matrix `[A|v]` and read off the solution.


︡ce3fc308-73fd-4462-8b6b-7adaaf3a2211︡{"done":true,"md":"### Problem 1 -- solve a linear system in four variables both symbolically and using matrices\n\nConsider the following system of linear equations\n\n$$\n\\begin{align*}\na + 3b - 2c + 7d &= -12 \\\\\n-a - 5b - 2d &= 389 \\\\\n-5a - 2b + 3c + d &= 0 \\\\\n3a + 8b - d &= 4\n\\end{align*}\n$$\n\nSolve this equation for rational numbers $a$, $b$, $c$ and $d$ in several ways using Sage:\n- a. Solve symbolically, using the *solve* command and symbolic variables (created using `%var`)\n- b. Solve using matrices, in the following three ways:\n  - (1) Create a 4x4 matrix $A$ and a vector $v$ and use `A.solve_right(v)`.   (As a double check, note that $\\det(A)=-21$.)\n  - (2) Multiply $v$ by the inverse of $A$,\n  - (3) Compute the reduced row echelon form of the augmented matrix `[A|v]` and read off the solution."}
︠9a7c24f5-3671-4144-be0b-50c6d329208a︠
%html
<font color="red"><h2>10 Points Total</h2>
<h4>Part A (3 points)</h4>
<p>Award:
    <ul>
        <li>3 points for a correct solution with solve</li>
        <li>2 points for a nearly correct solution (like a typo)</li>
        <li>1 point for some incorrect work with the wrong approach</li>
    </ul>
</p>
<h4>Part B (7 points)</h4>
<p>Award:
    <ul>
        <li>7 points for all parts being correct</li>
        <li>5 points for one part being incorrect</li>
        <li>3 points for 2 parts being incorrect</li>
        <li>1 point for no parts correct but they did some work</li>
    </ul>
</p>
</font>
︡bcae5f83-ebda-4be4-8f30-a805e06f9a9a︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\n<h4>Part A (3 points)</h4>\n<p>Award:\n    <ul>\n        <li>3 points for a correct solution with solve</li>\n        <li>2 points for a nearly correct solution (like a typo)</li>\n        <li>1 point for some incorrect work with the wrong approach</li>\n    </ul>\n</p>\n<h4>Part B (7 points)</h4>\n<p>Award:\n    <ul>\n        <li>7 points for all parts being correct</li>\n        <li>5 points for one part being incorrect</li>\n        <li>3 points for 2 parts being incorrect</li>\n        <li>1 point for no parts correct but they did some work</li>\n    </ul>\n</p>\n</font>"}
︠1e8bd50f-783a-4ca9-82de-1efe76f09d41s︠
# a
%var a, b, c, d
solve((a+3*b-2*c+7*d==-12, -a-5*b-2*d==389, -5*a-2*b+3*c+d==0, 3*a+8*b-d==4), a, b, c, d)[0]
︡2ccbf1fb-1ba5-4ff7-bd21-90338747e8b5︡{"html":"<div align='center'>[$\\displaystyle a = \\left(-3485\\right)$, $\\displaystyle b = \\left(\\frac{24014}{21}\\right)$, $\\displaystyle c = \\left(-\\frac{96790}{21}\\right)$, $\\displaystyle d = \\left(-\\frac{27527}{21}\\right)$]</div>"}︡{"done":true}︡
︠c14ae56f-f27f-4d4d-8c5d-d4443444700as︠
# b
# (1)
"Part 1 b:"
A = matrix([[1,3,-2,7], [-1,-5,0,-2], [-5,-2,3,1], [3,8,0,-1]])
v = vector([-12, 389, 0, 4])
A.solve_right(v)

# (2)
show("Part 2 b:")
A.inverse()*v

# (3)
show("Part 3 b:")
B = A.augment(v)
B.rref()
︡02abe582-be0d-4316-b41a-7b48fdc1624c︡{"html":"<div align='center'>Part 1 b:</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(-3485,\\,\\frac{24014}{21},\\,-\\frac{96790}{21},\\,-\\frac{27527}{21}\\right)$</div>"}︡{"html":"<div align='center'>Part 2 b:</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(-3485,\\,\\frac{24014}{21},\\,-\\frac{96790}{21},\\,-\\frac{27527}{21}\\right)$</div>"}︡{"html":"<div align='center'>Part 3 b:</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrr}\n1 &amp; 0 &amp; 0 &amp; 0 &amp; -3485 \\\\\n0 &amp; 1 &amp; 0 &amp; 0 &amp; \\frac{24014}{21} \\\\\n0 &amp; 0 &amp; 1 &amp; 0 &amp; -\\frac{96790}{21} \\\\\n0 &amp; 0 &amp; 0 &amp; 1 &amp; -\\frac{27527}{21}\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠007b3809-d327-4165-953b-3ef1608b4a9fi︠

%md
### Problem 2 -- compute some kernels

Let $A$ and $B$ be the following two $3\times 3$ matrices.
\[
A = \begin{bmatrix}
    6       & 12 & 42 \\
    2       & 4  & 14 \\
    3       & 6  & 21
\end{bmatrix}
\qquad
B =
\begin{bmatrix}
    7        & 6  & 13 \\
    42       & 36 & 78 \\
    14       & 12 & 26
\end{bmatrix}
\]

- a. Use Sage to compute the $V=\ker(A)$ and $W=\ker(B)$.

- b. Use Sage to compute $V\cap W$ and $V + W$.

- c. Create a 3d plot that illustrates each kernel (which should be a plane), and the intersection of the two kernels (which should be a line). Make sure that your range is centered about the origin.


︡0dfee123-0bdc-4a4e-b343-d60ff9cbd7c6︡{"done":true,"md":"### Problem 2 -- compute some kernels\n\nLet $A$ and $B$ be the following two $3\\times 3$ matrices.\n\\[\nA = \\begin{bmatrix}\n    6       & 12 & 42 \\\\\n    2       & 4  & 14 \\\\\n    3       & 6  & 21\n\\end{bmatrix}\n\\qquad\nB =\n\\begin{bmatrix}\n    7        & 6  & 13 \\\\\n    42       & 36 & 78 \\\\\n    14       & 12 & 26\n\\end{bmatrix}\n\\]\n\n- a. Use Sage to compute the $V=\\ker(A)$ and $W=\\ker(B)$.\n\n- b. Use Sage to compute $V\\cap W$ and $V + W$.\n\n- c. Create a 3d plot that illustrates each kernel (which should be a plane), and the intersection of the two kernels (which should be a line). Make sure that your range is centered about the origin."}
︠b293ec30-8d4c-4bc8-9f2b-46ea58ce0daai︠
%html
<font color="red"><h2>10 Points Total</h2>
<h4>Parts A and B (3 points each)</h4>
<p>Award:
    <ul>
        <li>3 points for a correct solution</li>
        <li>2 points for a nearly correct solution (like a typo)</li>
        <li>1 point for some incorrect work with the wrong approach</li>
    </ul>
</p>
<h4>Part B (4 points)</h4>
<p>Award:
    <ul>
        <li>1 point for each component of the plot (each plane and the intersection)</li>
        <li>1 point for completion.</li>
    </ul>
</p>
</font>
︡9e4e1aac-5ed8-48ae-8b5e-00227d4e36de︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\n<h4>Parts A and B (3 points each)</h4>\n<p>Award:\n    <ul>\n        <li>3 points for a correct solution</li>\n        <li>2 points for a nearly correct solution (like a typo)</li>\n        <li>1 point for some incorrect work with the wrong approach</li>\n    </ul>\n</p>\n<h4>Part B (4 points)</h4>\n<p>Award:\n    <ul>\n        <li>1 point for each component of the plot (each plane and the intersection)</li>\n        <li>1 point for completion.</li>\n    </ul>\n</p>\n</font>"}
︠123dc6c8-57f4-44a0-85ee-a3e16d18f0f5s︠
# a
A = matrix([[6,12,42], [2,4,14], [3,6,21]])
B = matrix([[7,6,13], [42,36,78], [14,12,26]])

V = kernel(A)
show(V)
W = kernel(B)
show(W)
︡28cf1c2e-888d-468a-b33f-29f84388d77b︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\Bold{Z}}\\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; -2 \\\\\n0 &amp; 3 &amp; -2\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\Bold{Z}}\\left(\\begin{array}{rrr}\n2 &amp; 0 &amp; -1 \\\\\n0 &amp; 1 &amp; -3\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠f2ef55d0-12ea-4591-a03c-1d8cfed84debs︠
# b
show(V.intersection(W))
show(V+W)
︡fe786ca9-5946-4286-9a3e-bc3af604a84a︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\Bold{Z}}\\left(\\begin{array}{rrr}\n14 &amp; 9 &amp; -34\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{RowSpan}_{\\Bold{Z}}\\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠42b57f67-8151-49dd-a2ba-22b186fd33d7s︠
# c
a = vector([1,0,-2])
b = vector([0,3,-2])
%var s,t
X = parametric_plot3d(s*a + t*b, (s,-1.65,1.65), (t,-1,1), color='yellow', opacity=0.3)

c = vector([2,0,-1])
d = vector([0,1,-3])
Y = parametric_plot3d(s*c + t*d, (s,-1.3,1.3), (t,-1,1), color='lightgreen', opacity=0.9)

v = vector([14,9,-34])
Z = parametric_plot3d(s*v, (s,-0.14,0.14), color='red')
show(X + Y + Z)

︡39399773-ac20-4326-9919-7eb3a5b4cd7e︡{"file":{"filename":"5c1b7215-3462-41e8-9ae7-7abd52c1d734.sage3d","uuid":"5c1b7215-3462-41e8-9ae7-7abd52c1d734"}}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠0bee0d1f-776a-4c9c-8527-736bd01137b7i︠
%md
### Problem 3 -- how fast is linear algebra over $\ZZ$?

- a. For $n=10, 100, 500, 1000$, how long does it take Sage to compute the determinant of an $n\times n$ random $\{0,1\}$-matrix over $\ZZ$?
- b. Roughly how many digits does the determinant of a $n\times n$ random  $\{0,1\}$-matrix with over $\ZZ$ have?   Compute some data and make a guess based on your data.
︡ea9b0b36-f8a6-4831-a8fa-ba9558518bc6︡{"done":true,"md":"### Problem 3 -- how fast is linear algebra over $\\ZZ$?\n\n- a. For $n=10, 100, 500, 1000$, how long does it take Sage to compute the determinant of an $n\\times n$ random $\\{0,1\\}$-matrix over $\\ZZ$?\n- b. Roughly how many digits does the determinant of a $n\\times n$ random  $\\{0,1\\}$-matrix with over $\\ZZ$ have?   Compute some data and make a guess based on your data."}
︠49120f78-4578-4079-bece-4959fdb49a2bi︠
%html
<font color="red"><h2>10 Points Total</h2>
<h4>Part A (7 points)</h4>
<p>Award:
    <ul>
        <li>4 points for correctly generating the matrices.</li>
        <li>3 points for correclty using %timeit</li>
    </ul>
</p>
<h4>Part B (3 points)</h4>
<p>Award:
    <ul>
        <li>2 points for some data</li>
        <li>1 point for an appropriate guess based on their data</li>
    </ul>
</p>
</font>
︡e13b273c-75fe-4056-87d0-80c3d65f3287︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\n<h4>Part A (7 points)</h4>\n<p>Award:\n    <ul>\n        <li>4 points for correctly generating the matrices.</li>\n        <li>3 points for correclty using %timeit</li>\n    </ul>\n</p>\n<h4>Part B (3 points)</h4>\n<p>Award:\n    <ul>\n        <li>2 points for some data</li>\n        <li>1 point for an appropriate guess based on their data</li>\n    </ul>\n</p>\n</font>"}
︠532d72b7-2adc-48db-b29b-fb6b99d5cf30s︠
# a
A = random_matrix(ZZ, 10, 10, x=0, y=2)
B = random_matrix(ZZ, 100, 100, x=0, y=2)
C = random_matrix(ZZ, 500, 500, x=0, y=2)
D = random_matrix(ZZ, 1000, 1000, x=0, y=2)

︡92e657c1-c69c-45bf-895b-e00eb677324e︡{"done":true}︡
︠72beb8b6-b14b-4c03-9361-21295be21746s︠
reset('timeit')
%timeit A.determinant()
︡380889e8-bbd3-4551-905a-9bdf17e98f74︡{"stdout":"625 loops, best of 3: 101 ns per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠4edb1694-3325-489d-bb27-2541f44826a9s︠
reset('timeit')
%timeit B.determinant()
︡1b822eb4-d443-454e-91c3-680609e015cd︡{"stdout":"625 loops, best of 3: 99.2 ns per loop\n"}︡{"done":true}︡
︠035bb18c-784d-47ae-ad3f-a12add149465s︠
reset('timeit')
%timeit C.determinant()
︡2da96262-6593-40e9-ba1b-2d0f0b8b1116︡{"stdout":"5 loops, best of 3: 191 ns per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠06259de9-2102-4b7a-bfbc-d0e262755daes︠
reset('timeit')
%timeit D.determinant()
︡d04b5180-5f2a-479c-8fa3-269b8c2438af︡{"stdout":"5 loops, best of 3: 0 ns per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠c34c0b28-effe-45c9-98ef-5b217472d0ecis︠
# b
%md
For an nxn matrix, the approximate number of digits in the determinant seems to be about N
Approximately linear.
︡98211e6e-ab13-4f29-8747-ccdee0dae23b︡{"hide":"input"}︡{"md":"For an nxn matrix, the approximate number of digits in the determinant seems to be about N\nApproximately linear."}︡{"done":true}︡
︠8d878231-2452-4a3d-8408-b5f74cf2bbf4s︠
# Computed for part b.
# They should have some computed data here.
︡24a64808-fa5a-4ad8-9974-bda3d5d7113d︡{"done":true}︡
︠b0c17aba-9b63-448d-8072-bab5d90baebai︠
%md
### Problem 4 -- Eigenvalues and eigenvectors of matrices $\QQ$

Let $M$ be the following matrix with rational entries
$$
M = \left(\begin{array}{rrrr}
\frac{1}{2} & 0 & -1 & 0 \\
1 & \frac{1}{2} & 1 & 1 \\
0 & 1 & -1 & -1 \\
2 & 1 & -2 & 1
\end{array}\right)
$$

- a. Use Sage to compute the characteristic polynomial $f(x)$ of $M$.
- b. Use Sage to verify that $f(M)=0$.   (This is a consequence of the Cayley-Hamilton theorem.)
- c. Compute the roots of $f$ symbolically.  Display one of them using the show command.  You should see a big formula involving radical signs.
- d. Use `A.eigenvalues()` to compute the roots of $f$.
- e. Verify that the product of the roots of the characteristic polynomial $f$ is equal to the determinant of $M$.
︡9f49913c-0ff6-4e4e-99c8-0ed636764b38︡{"done":true,"md":"### Problem 4 -- Eigenvalues and eigenvectors of matrices $\\QQ$\n\nLet $M$ be the following matrix with rational entries\n$$\nM = \\left(\\begin{array}{rrrr}\n\\frac{1}{2} & 0 & -1 & 0 \\\\\n1 & \\frac{1}{2} & 1 & 1 \\\\\n0 & 1 & -1 & -1 \\\\\n2 & 1 & -2 & 1\n\\end{array}\\right)\n$$\n\n- a. Use Sage to compute the characteristic polynomial $f(x)$ of $M$.\n- b. Use Sage to verify that $f(M)=0$.   (This is a consequence of the Cayley-Hamilton theorem.)\n- c. Compute the roots of $f$ symbolically.  Display one of them using the show command.  You should see a big formula involving radical signs.\n- d. Use `A.eigenvalues()` to compute the roots of $f$.\n- e. Verify that the product of the roots of the characteristic polynomial $f$ is equal to the determinant of $M$."}
︠2b4128d0-cd0b-4eb0-a75d-8dc8e577fe3di︠
%html
<font color="red"><h2>10 Points Total</h2>
<h4>All parts (2 points each)</h4>
<p>Award points based on correct output.
</p>
</font>
︡6da1e18d-2146-408b-86eb-4f890fbf8400︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\n<h4>All parts (2 points each)</h4>\n<p>Award points based on correct output.\n</p>\n</font>"}
︠cb523c23-3d15-46c5-a1c5-eb3f1cd45775s︠
#  a.
M = matrix(QQ, 4, [1/2, 0, -1, 0, 1, 1/2, 1, 1, 0, 1, -1, -1, 2, 1, -2, 1])
f = M.charpoly()
f
︡b4880cc3-f727-4904-9d59-16f75846ab66︡{"html":"<div align='center'>$\\displaystyle x^{4} - x^{3} - \\frac{19}{4} x^{2} + 6 x - \\frac{5}{4}$</div>"}︡{"done":true}︡
︠c183b08e-1840-4516-995d-a63ebff8e8f8s︠
# b.
f(M)
︡36ad5be3-f2e8-4af5-bf87-66ad889a8939︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠4d713b5f-3405-4321-80a6-352e46e1e175s︠
# c
r = f.roots(SR)
show(r[0])
︡48facb74-d590-46f3-a53b-071dfe05e726︡{"html":"<div align='center'>($\\displaystyle -\\frac{1}{2} \\, {\\left(\\frac{1}{36} i \\, \\sqrt{773} \\sqrt{6} - \\frac{5}{8}\\right)}^{\\frac{1}{3}} {\\left(i \\, \\sqrt{3} + 1\\right)} - \\frac{-19 i \\, \\sqrt{3} + 19}{24 \\, {\\left(\\frac{1}{36} i \\, \\sqrt{773} \\sqrt{6} - \\frac{5}{8}\\right)}^{\\frac{1}{3}}}$, $\\displaystyle 1$)</div>"}︡{"done":true}︡
︠a7f1b618-93ec-4b53-9209-523df1ae6decs︠
# d
E = M.eigenvalues()
show(E)
︡527bc3fa-e606-4c79-b7a0-d602c338cc1e︡{"html":"<div align='center'>[$\\displaystyle 1$, $\\displaystyle -2.300719103558421?$, $\\displaystyle 0.2671728756506578?$, $\\displaystyle 2.033546227907764?$]</div>"}︡{"done":true}︡
︠88864ee9-f89a-430f-a94f-5da0dcccda89s︠
# e
show(E[0]*E[1]*E[2]*E[3])
show(M.determinant())
show(E[0]*E[1]*E[2]*E[3] == M.determinant())
︡cf051ecb-e7e5-4477-a274-75a3f3d9f4c7︡{"html":"<div align='center'>$\\displaystyle -1.250000000000000?$</div>"}︡{"html":"<div align='center'>$\\displaystyle -\\frac{5}{4}$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\mathrm{True}$</div>"}︡{"done":true}︡
︠a5df4ae2-efde-4e26-ae7e-6c961e74f50bi︠
%md
### Problem 5 -- Implement the horrible recursive "expansion by cofactors" algorithm to compute determinants

- a. Implement a function called `my_det` that calculates the determinant of a matrix using the recursive "expansion by cofactors" algorithm (this is probably the way you learned to compute determinants in a Linear Algebra class). The Matrix methods `delete_columns` and `delete_rows` may come in handy. You can assume that your input is a square matrix. (Note: Do not cache intermediate results in your implementation.)
- b. Count how many times your algorithm computes the determinant of a 1x1 matrix when you give as input...
  * A 1x1 matrix
  * A 2x2 matrix
  * A 3x3 matrix
  * A 4x4 matrix
  * A NxN matrix (Here you should guess based on what you observe above.)
  * (hint: you could make a counter and use the `global` python keyword)
- c. What does this tell you about how the algorithm's compute time might scale based on the size of N? (computational complexity)
- d. Time the computation of determinants of some random matrices using Sage (NOT your function); based on the compute times you observe, do you think Sage is using a version of your algorithm? Give a short (2-3 sentence) explanation.
︡72bbaf29-b943-4b17-b6c7-6ca513aeb152︡{"done":true,"md":"### Problem 5 -- Implement the horrible recursive \"expansion by cofactors\" algorithm to compute determinants\n\n- a. Implement a function called `my_det` that calculates the determinant of a matrix using the recursive \"expansion by cofactors\" algorithm (this is probably the way you learned to compute determinants in a Linear Algebra class). The Matrix methods `delete_columns` and `delete_rows` may come in handy. You can assume that your input is a square matrix. (Note: Do not cache intermediate results in your implementation.)\n- b. Count how many times your algorithm computes the determinant of a 1x1 matrix when you give as input...\n  * A 1x1 matrix\n  * A 2x2 matrix\n  * A 3x3 matrix\n  * A 4x4 matrix\n  * A NxN matrix (Here you should guess based on what you observe above.)\n  * (hint: you could make a counter and use the `global` python keyword)\n- c. What does this tell you about how the algorithm's compute time might scale based on the size of N? (computational complexity)\n- d. Time the computation of determinants of some random matrices using Sage (NOT your function); based on the compute times you observe, do you think Sage is using a version of your algorithm? Give a short (2-3 sentence) explanation."}
︠1b71378e-abed-4791-aadb-013425b2343fi︠
%html
<font color="red"><h2>20 Points Total</h2>
<h4>Part A (12 points)</h4>
<p>Award:
    <ul>
        <li>12 points if their soloution works for N = 1, 2, 3, 4, 5.</li>
        <li>10 points if they just missed a negative sign in their formula.</li>
        <li>8 points if their solution seems like it's going towards the given solution.</li>
        <li>1 - 6 points depending on how much of an attempt they made.</li>
    </ul>
</p>
<h4>Part B (4 points)</h4>
<p>Award:
    <ul>
        <li>4 points if they correctly count the correct number of timesa 1x1 matrix is computed.</li>
        <li>2 points if they count the number of times `my_det` is called instead.</li>
    </ul>
</p>
<h4>Part C (2 points)</h4>
<p>Award:
    <ul>
        <li>2 points for N!</li>
        <li>1 point for anything else with a reasonable argument</li>
    </ul>
</p>
<h4>Part D (2 points)</h4>
<p>Award:
    <ul>
        <li>2 points for "no" and and a short explanation.</li>
        <li>1 point for just a no.</li>
    </ul>
</p>
</font>
︡25ca8379-0700-41bb-a217-f34653f0e607︡{"done":true,"html":"<font color=\"red\"><h2>20 Points Total</h2>\n<h4>Part A (12 points)</h4>\n<p>Award:\n    <ul>\n        <li>12 points if their soloution works for N = 1, 2, 3, 4, 5.</li>\n        <li>10 points if they just missed a negative sign in their formula.</li>\n        <li>8 points if their solution seems like it's going towards the given solution.</li>\n        <li>1 - 6 points depending on how much of an attempt they made.</li>\n    </ul>\n</p>\n<h4>Part B (4 points)</h4>\n<p>Award:\n    <ul>\n        <li>4 points if they correctly count the correct number of timesa 1x1 matrix is computed.</li>\n        <li>2 points if they count the number of times `my_det` is called instead.</li>\n    </ul>\n</p>\n<h4>Part C (2 points)</h4>\n<p>Award:\n    <ul>\n        <li>2 points for N!</li>\n        <li>1 point for anything else with a reasonable argument</li>\n    </ul>\n</p>\n<h4>Part D (2 points)</h4>\n<p>Award:\n    <ul>\n        <li>2 points for \"no\" and and a short explanation.</li>\n        <li>1 point for just a no.</li>\n    </ul>\n</p>\n</font>"}
︠53c6f614-3ee9-4e12-b37a-eccdfb9a0684s︠
# Solution - 5
from collections import Counter
count = 0
def my_det(M):
	global count
	if M.nrows() == 1:
		count += 1
		return M[0][0]
	total = 0
	for col in range(M.ncols()):
		minor = M.delete_rows([0]).delete_columns([col])
		total += (-1)**(col) * M[0][col] * my_det(minor)
	return total

for n in [1..5]:
    count = 0
    A = random_matrix(QQ, n)
    z = my_det(A)
    print n, count
︡0a6be6b8-7238-4794-be3d-5c8b45dba231︡{"stdout":"1 1\n2 2\n3 6\n4 24\n5 120\n"}︡{"done":true}︡
︠8cbcc6b6-e03b-4557-80a4-abdd8dbc1d0cis︠
# Part C
%md
The computational complexity is N!
︡b05d9734-3bfc-472e-97f0-017c3f9c0f44︡{"hide":"input"}︡{"md":"The computational complexity is N!"}︡{"done":true}︡
︠fe460bd1-2f3b-42b7-9fe7-4aa94df4acads︠
reset ('timeit')
# Part D
%timeit random_matrix(ZZ, 10).determinant()
%timeit random_matrix(ZZ, 100).determinant()
%timeit random_matrix(ZZ, 500).determinant()
︡5216d0a2-544b-46e7-8029-4203ac94e52a︡{"stdout":"625 loops, best of 3: 29.1 µs per loop\n"}︡{"stdout":"25 loops, best of 3: 8.49 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"5 loops, best of 3: 1 s per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠01cc2cd5-c768-4569-8fac-39fddcc6a202i︠
%md
No; it would be way slower.
︡dbc0e8bf-f703-400d-8542-a309b1afb73d︡{"done":true,"md":"No; it would be way slower."}
︠50cf1bf6-8fda-48f2-ba45-164e5aa02eeci︠

%md

### Problem 6 -- explore some matrix functions

Let $F$ be the following matrix over the rational numbers $\QQ$:
$$
F = \left(\begin{array}{rrrr}
-1 & -1 & -1 & -2 \\
-1 & -7 & -5 & -1 \\
-3 & 0 & 0 & 0 \\
1 & -1 & 2 & 9
\end{array}\right)
$$

For each of the following functions: `F.gram_schmidt()`, `F.rref()`, `F.LU()`

- a. Evaluate the function on $F$ and see what you get.
- b. Explain in your own words what the function does (you don't have to say anything about how it is implemented or works).  E.g., why do you think it has the name it has?
- c. How might you use this function to solve some problem in mathematics?  I.e., what sort of problem might you solve?
- d. Would the function "work" (finish in a few seconds) when given a $100\times 100$ random $\{0,1\}$-matrix over $\ZZ$? No explanation is necessary for this part.



︡5a3976a9-c94d-4835-86af-ce4829748e1d︡{"done":true,"md":"\n### Problem 6 -- explore some matrix functions\n\nLet $F$ be the following matrix over the rational numbers $\\QQ$:\n$$\nF = \\left(\\begin{array}{rrrr}\n-1 & -1 & -1 & -2 \\\\\n-1 & -7 & -5 & -1 \\\\\n-3 & 0 & 0 & 0 \\\\\n1 & -1 & 2 & 9\n\\end{array}\\right)\n$$\n\nFor each of the following functions: `F.gram_schmidt()`, `F.rref()`, `F.LU()`\n\n- a. Evaluate the function on $F$ and see what you get.\n- b. Explain in your own words what the function does (you don't have to say anything about how it is implemented or works).  E.g., why do you think it has the name it has?\n- c. How might you use this function to solve some problem in mathematics?  I.e., what sort of problem might you solve?\n- d. Would the function \"work\" (finish in a few seconds) when given a $100\\times 100$ random $\\{0,1\\}$-matrix over $\\ZZ$? No explanation is necessary for this part."}
︠dd33cf6b-e176-406c-b3e7-b4423773f954i︠
%html
<font color="red"><h2>10 Points Total</h2>
For parts A, B, and C, you just need to check that they gave a solution.
<h4>Part A (3 points)</h4>
<p>Award:
    <ul>
        <li>1 point per call.</li>
    </ul>
</p>
<h4>Part B (3 points)</h4>
<p>Award:
    <ul>
        <li>1 point per explanation.</li>
    </ul>
</p>
<h4>Part C (3 points)</h4>
<p>Award:
    <ul>
        <li>1 point per example.</li>
    </ul>
</p>
<h4>Part D (1 point)</h4>
<p>
No output is necessary
</p>
<p>Award:
    <ul>
        <li>1 point if they said yes for all of them.</li>
        <li>0.5 points if they missed one</li>
        <li>0 otherwise.</li>
    </ul>
</p>
</font>
︡cd221b40-ae84-4aa4-8404-16739d656a09︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\nFor parts A, B, and C, you just need to check that they gave a solution.\n<h4>Part A (3 points)</h4>\n<p>Award:\n    <ul>\n        <li>1 point per call.</li>\n    </ul>\n</p>\n<h4>Part B (3 points)</h4>\n<p>Award:\n    <ul>\n        <li>1 point per explanation.</li>\n    </ul>\n</p>\n<h4>Part C (3 points)</h4>\n<p>Award:\n    <ul>\n        <li>1 point per example.</li>\n    </ul>\n</p>\n<h4>Part D (1 point)</h4>\n<p>\nNo output is necessary\n</p>\n<p>Award:\n    <ul>\n        <li>1 point if they said yes for all of them.</li>\n        <li>0.5 points if they missed one</li>\n        <li>0 otherwise.</li>\n    </ul>\n</p>\n</font>"}
︠4fa5d57a-e9e9-4254-83d1-1059b31e2d2as︠
F = matrix([[-1,-1,-1,-2],[-1,-7,-5,-1],[-3,0,0,0],[1,-1,2,9]])
F
︡e5b30e46-d909-46db-a6e8-8c4142209680︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n-1 &amp; -1 &amp; -1 &amp; -2 \\\\\n-1 &amp; -7 &amp; -5 &amp; -1 \\\\\n-3 &amp; 0 &amp; 0 &amp; 0 \\\\\n1 &amp; -1 &amp; 2 &amp; 9\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠fd2f6b66-4af4-4417-9e53-3c6567fc1979s︠
# 6a.
show(F.gram_schmidt())
show(F.rref())
show(F.LU())
︡7619f7b3-f842-4cb6-9d0a-fc1258325479︡{"html":"<div align='center'>($\\displaystyle \\left(\\begin{array}{rrrr}\n-1 &amp; -1 &amp; -1 &amp; -2 \\\\\n\\frac{8}{7} &amp; -\\frac{34}{7} &amp; -\\frac{20}{7} &amp; \\frac{23}{7} \\\\\n-\\frac{762}{307} &amp; \\frac{15}{307} &amp; \\frac{63}{307} &amp; \\frac{342}{307} \\\\\n0 &amp; -\\frac{153}{254} &amp; \\frac{221}{254} &amp; -\\frac{17}{127}\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 0 &amp; 0 \\\\\n\\frac{15}{7} &amp; 1 &amp; 0 &amp; 0 \\\\\n\\frac{3}{7} &amp; -\\frac{24}{307} &amp; 1 &amp; 0 \\\\\n-\\frac{20}{7} &amp; \\frac{209}{307} &amp; \\frac{809}{762} &amp; 1\n\\end{array}\\right)$)</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>($\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 1 \\\\\n0 &amp; 1 &amp; 0 &amp; 0 \\\\\n1 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 0 &amp; 0 \\\\\n\\frac{1}{3} &amp; 1 &amp; 0 &amp; 0 \\\\\n-\\frac{1}{3} &amp; \\frac{1}{7} &amp; 1 &amp; 0 \\\\\n\\frac{1}{3} &amp; \\frac{1}{7} &amp; -\\frac{2}{19} &amp; 1\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n-3 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; -7 &amp; -5 &amp; -1 \\\\\n0 &amp; 0 &amp; \\frac{19}{7} &amp; \\frac{64}{7} \\\\\n0 &amp; 0 &amp; 0 &amp; -\\frac{17}{19}\n\\end{array}\\right)$)</div>"}︡{"done":true}︡
︠4fc079a0-807a-417c-9093-e1e2b675e97bis︠
# 6c.
%md
- Use Gram-Schmidt in projecting vectors onto subspaces
- Use rref to find kernels of matrices, and solve systems of equations
- Wikipedia says "LU is also a key step when inverting a matrix"... so many students will say that.
︡02e63ba0-e795-441f-963b-86060d3e4f36︡{"hide":"input"}︡{"md":"- Use Gram-Schmidt in projecting vectors onto subspaces\n- Use rref to find kernels of matrices, and solve systems of equations\n- Wikipedia says \"LU is also a key step when inverting a matrix\"... so many students will say that."}︡{"done":true}︡
︠0ce95f23-c29c-4ce6-a81f-a89f01d202e7s︠
%typeset_mode False
#6d.
# yes, they all work for 100x100 matrices over ZZ.  See:
B = random_matrix(ZZ, 100, x=0, y=2)
B.gram_schmidt()
B.rref()
B.LU()
︡7a3d6a2c-f8d6-4e45-9c21-a648b9824511︡{"stdout":"(100 x 100 dense matrix over Rational Field, 100 x 100 dense matrix over Rational Field)"}︡{"stdout":"\n"}︡{"stdout":"100 x 100 dense matrix over Rational Field\n"}︡{"stdout":"(100 x 100 sparse matrix over Integer Ring, 100 x 100 dense matrix over Rational Field, 100 x 100 dense matrix over Rational Field)"}︡{"stdout":"\n"}︡{"done":true}︡
︠a25c237d-4fb7-426d-b485-f533885a6b2d︠
︡1d6d3865-de6d-49c2-9541-85c1deca4f5d︡
︠5427b53f-5a9d-4584-9f98-4aaaf31b432bs︠

︡056bff18-57d7-46d1-8289-f1cdb47b1c3a︡{"done":true}︡










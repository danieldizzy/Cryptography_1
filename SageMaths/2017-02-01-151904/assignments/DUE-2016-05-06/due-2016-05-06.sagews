︠4189f872-59c9-4402-b7ef-7e1cfb5e84b6i︠
%md
# Math 480 - Homework 5: Due 6pm on May 6, 2016
︡f8a01199-1fe9-4723-8641-9d5fc14ef4c9︡︡{"done":true,"md":"# Math 480 - Homework 5: Due 6pm on May 6, 2016"}
︠1fe68ebb-02c8-41a8-b399-6d9556294267i︠
%md
**There are SIX problems. All problems have equal weight except probelem 5 which has twice the weight of the others**

Solve each problem using Sage unless otherwise indicated.   In particular, if there is some linear algebra question, which you could easily
do by hand or in your head, you should still show exactly how to solve it using Sage if possible.  Of course, do always think with your brain!

Useful facts:

- Sage quickref for linear algebra: https://wiki.sagemath.org/quickref?action=AttachFile&do=get&target=quickref-linalg.pdf
- See sections 1.5, 4.4, 4.16, of *Sage For Undergraduates*.
- You can make a 5x5 random 0,1 matrix in Sage by typing `random_matrix(ZZ, 5, x=0, y=2)`.

︡b372df5e-99ec-46a1-96e1-30f62c86fe2c︡{"done":true,"md":"**There are SIX problems. All problems have equal weight except probelem 5 which has twice the weight of the others**\n\nSolve each problem using Sage unless otherwise indicated.   In particular, if there is some linear algebra question, which you could easily\ndo by hand or in your head, you should still show exactly how to solve it using Sage if possible.  Of course, do always think with your brain!\n\nUseful facts:\n\n- Sage quickref for linear algebra: https://wiki.sagemath.org/quickref?action=AttachFile&do=get&target=quickref-linalg.pdf\n- See sections 1.5, 4.4, 4.16, of *Sage For Undergraduates*.\n- You can make a 5x5 random 0,1 matrix in Sage by typing `random_matrix(ZZ, 5, x=0, y=2)`."}
︠d3f27130-648f-45c5-b3a9-9b6e78786766i︠
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


︡a4f01e9d-0955-4db1-aa25-18d96406f14b︡︡{"done":true,"md":"### Problem 1 -- solve a linear system in four variables both symbolically and using matrices\n\nConsider the following system of linear equations\n\n$$\n\\begin{align*}\na + 3b - 2c + 7d &= -12 \\\\\n-a - 5b - 2d &= 389 \\\\\n-5a - 2b + 3c + d &= 0 \\\\\n3a + 8b - d &= 4\n\\end{align*}\n$$\n\nSolve this equation for rational numbers $a$, $b$, $c$ and $d$ in several ways using Sage:\n- a. Solve symbolically, using the *solve* command and symbolic variables (created using `%var`)\n- b. Solve using matrices, in the following three ways:\n  - (1) Create a 4x4 matrix $A$ and a vector $v$ and use `A.solve_right(v)`.   (As a double check, note that $\\det(A)=-21$.)\n  - (2) Multiply $v$ by the inverse of $A$,\n  - (3) Compute the reduced row echelon form of the augmented matrix `[A|v]` and read off the solution."}
︠592aed05-e74e-40d5-9079-7d0c224c1f85︠
# a



︡8fb5ca24-9dfa-49aa-9fbe-b91c944a10e7︡
︠c14ae56f-f27f-4d4d-8c5d-d4443444700a︠
# b


︡dd83665b-e793-4147-83bd-b4c272bc8995︡
︠682305ed-53ee-4cda-aa74-eee02fba7615i︠

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


︡8eb09b0f-a0d0-4e72-ba96-9debd563f0e5︡
︠c0e8db73-e95c-4988-b711-f0ed2342dde2︠
# a




︡c4b07cc7-f448-4392-8d9e-dbdea74bea4e︡
︠f2ef55d0-12ea-4591-a03c-1d8cfed84deb︠
# b




︡9bf6ff7b-0de6-43f5-9a03-a04f9e4fc78a︡
︠42b57f67-8151-49dd-a2ba-22b186fd33d7︠
# c




︡b326b8c8-070f-4cc9-aa65-f25e77eccefe︡
︠14eb50ae-44ff-49c2-92c3-d8fda0dd64b5i︠
%md
### Problem 3 -- how fast is linear algebra over $\ZZ$?

- a. For $n=10, 100, 500, 1000$, how long does it take Sage to compute the determinant of an $n\times n$ random $\{0,1\}$-matrix over $\ZZ$?
- b. Roughly how many digits does the determinant of a $n\times n$ random  $\{0,1\}$-matrix with over $\ZZ$ have?   Compute some data and make a guess based on your data.
︡99317bb1-6c78-4051-b6c6-9ada501b0c00︡︡{"done":true,"md":"### Problem 3 -- how fast is linear algebra over $\\ZZ$?\n\n- a. For $n=10, 100, 500, 1000$, how long does it take Sage to compute the determinant of an $n\\times n$ random $\\{0,1\\}$-matrix over $\\ZZ$?\n- b. Roughly how many digits does the determinant of a $n\\times n$ random  $\\{0,1\\}$-matrix with over $\\ZZ$ have?   Compute some data and make a guess based on your data."}
︠6a2370fe-9d9e-4cad-8361-2fe80e1aff4d︠
# a




︡aa11c89a-b5f7-4512-9bfb-448f1c5128b8︡
︠c34c0b28-effe-45c9-98ef-5b217472d0ec︠
# b



︡940719ef-4dd5-4dae-bef7-3f1ef9b9a5d0︡
︠8d878231-2452-4a3d-8408-b5f74cf2bbf4︠
# Computed for part b.





︡5e1c7e17-ca38-46c8-bb9c-7f49c0b132d4︡
︠9e641a62-e05b-4cfc-abbd-db9e61b31840i︠

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
︡9d1ed85e-9acd-4c6e-ad0a-81f81b5a3cd7︡︡{"done":true,"md":"### Problem 4 -- Eigenvalues and eigenvectors of matrices $\\QQ$\n\nLet $M$ be the following matrix with rational entries\n$$\nM = \\left(\\begin{array}{rrrr}\n\\frac{1}{2} & 0 & -1 & 0 \\\\\n1 & \\frac{1}{2} & 1 & 1 \\\\\n0 & 1 & -1 & -1 \\\\\n2 & 1 & -2 & 1\n\\end{array}\\right)\n$$\n\n- a. Use Sage to compute the characteristic polynomial $f(x)$ of $M$.\n- b. Use Sage to verify that $f(M)=0$.   (This is a consequence of the Cayley-Hamilton theorem.)\n- c. Compute the roots of $f$ symbolically.  Display one of them using the show command.  You should see a big formula involving radical signs.\n- d. Use `A.eigenvalues()` to compute the roots of $f$.\n- e. Verify that the product of the roots of the characteristic polynomial $f$ is equal to the determinant of $M$."}
︠a938385c-07f9-452c-bdaa-38d7d6fe6c6f︠
#  a.
# ... Your code


# Define your function f above here.
# Do not change these two lines below.
f
show(f)
︡538ca148-09af-4c08-a2ac-e7039f7c4afb︡
︠d5e862e6-febc-4ca9-ba1c-784c79893fc2︠
# b.



︡08dee920-6299-48d2-8424-43926cce3e6b︡
︠d094ce52-51f6-4eb9-aa1d-63ebeca7ffcd︠
# c



show(root) # You'll need root defined correctly above.
︡17b26d59-3e75-482d-998a-16d9d6f60cd9︡
︠3c30ce86-70e0-4dd2-b20d-93efe2992e03︠
# d





︡10b5dc09-ed13-47a1-ae50-062269d87329︡
︠251a03f5-55e8-4317-a1fe-2772dc7c714b︠
# e



︡05a4d065-9664-480a-853a-8a81ff05e157︡
︠9a6ab2a7-2ba5-4d67-acee-e009870b6d77i︠
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
︡c6204070-588e-4a36-bfed-c2dbccd1fff6︡︡{"done":true,"md":"### Problem 5 -- Implement the horrible recursive \"expansion by cofactors\" algorithm to compute determinants\n\n- a. Implement a function called `my_det` that calculates the determinant of a matrix using the recursive \"expansion by cofactors\" algorithm (this is probably the way you learned to compute determinants in a Linear Algebra class). The Matrix methods `delete_columns` and `delete_rows` may come in handy. You can assume that your input is a square matrix. (Note: Do not cache intermediate results in your implementation.)\n- b. Count how many times your algorithm computes the determinant of a 1x1 matrix when you give as input...\n  * A 1x1 matrix\n  * A 2x2 matrix\n  * A 3x3 matrix\n  * A 4x4 matrix\n  * A NxN matrix (Here you should guess based on what you observe above.)\n  * (hint: you could make a counter and use the `global` python keyword)\n- c. What does this tell you about how the algorithm's compute time might scale based on the size of N? (computational complexity)\n- d. Time the computation of determinants of some random matrices using Sage (NOT your function); based on the compute times you observe, do you think Sage is using a version of your algorithm? Give a short (2-3 sentence) explanation."}
︠ee684872-c9ac-44ce-9aa7-021aa6969622︠
# Solution - 5
def my_det(M):
	# do something with M here!
    pass # Delete this line when you write your solution









︡254334bd-8119-4559-af42-700df4150ec3︡
︠ec67d195-fd12-4793-b6cb-5d9e1d2ed518i︠

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



︡35c2dbec-253b-4056-8577-cbd688537b0f︡︡{"done":true,"md":"\n### Problem 6 -- explore some matrix functions\n\nLet $F$ be the following matrix over the rational numbers $\\QQ$:\n$$\nF = \\left(\\begin{array}{rrrr}\n-1 & -1 & -1 & -2 \\\\\n-1 & -7 & -5 & -1 \\\\\n-3 & 0 & 0 & 0 \\\\\n1 & -1 & 2 & 9\n\\end{array}\\right)\n$$\n\nFor each of the following functions: `F.gram_schmidt()`, `F.rref()`, `F.LU()`\n\n- a. Evaluate the function on $F$ and see what you get.\n- b. Explain in your own words what the function does (you don't have to say anything about how it is implemented or works).  E.g., why do you think it has the name it has?\n- c. How might you use this function to solve some problem in mathematics?  I.e., what sort of problem might you solve?\n- d. Would the function \"work\" (finish in a few seconds) when given a $100\\times 100$ random $\\{0,1\\}$-matrix over $\\ZZ$? No explanation is necessary for this part."}
︠5ef918b9-0f8d-4226-850b-f6f09c3ff0e0︠










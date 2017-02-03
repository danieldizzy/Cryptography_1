︠e41493ae-2252-47fb-9825-b7d84f68b2cfi︠
%md
### Problem 3: (numpy)

1. Generate a random vector of integers between 0 and 10 (inclusive) of length 100.
   (hint: [np.bincount](http://docs.scipy.org/doc/numpy/reference/generated/numpy.bincount.html))
1. Which number appears most often?

︡6a2eb6ec-8672-4498-a666-49277dcc4451︡{"done":true,"md":"### Problem 3: (numpy)\n\n1. Generate a random vector of integers between 0 and 10 (inclusive) of length 100.\n   (hint: [np.bincount](http://docs.scipy.org/doc/numpy/reference/generated/numpy.bincount.html))\n1. Which number appears most often?"}
︠310608b6-7d17-40c1-810f-6064b4fff62d︠
# Solution

Z = np.random.randint(0, 10, size = 100)
np.bincount(Z).argmax()
︡b9bb3240-69b8-4a77-b3a5-61c6ba93aaf6︡{"stdout":"3\n"}︡{"done":true}︡
︠7ec2cbfe-0b99-4c4e-bd3c-5e0bb9da1247︠
%md
### Problem 4 (numpy)

For two different types of random matrices with size 1000x1000 (e.g. rand, randn):
 - Multiply the matrix with its own transpose: $B = A^T * A$
 - Then compute the eigenvalues of that resulting matrix $B$ and plot a histogram via matplotlib.

Guess what each the distributions of eigenvalues looks like. (Compare with the distribution of the random sampling routines.)

* random matrices: http://docs.scipy.org/doc/numpy/reference/routines.random.html
* linear algebra: http://docs.scipy.org/doc/numpy/reference/routines.linalg.html

  e.g. `np.random.beta(.1, 5, size=(1000, 1000))`

︡0c5bf3b4-fe66-4e8a-9f21-18c8b2d113b9︡{"done":true,"md":"### Problem 4 (numpy)\n\n1. For different types of random matrices with size 1000x1000 (e.g. rand, randn)\n2. Multiply the matrix with its own transpose: $B = A^T * A$\n3. Then compute the eigenvalues of that resulting matrix $B$ and plot a histogram via matplotlib!\n\nGuess, what each the distributions of eigenvalues looks like! (Compare with the distribution of the random sampling routines)\n\n* random matrices: http://docs.scipy.org/doc/numpy/reference/routines.random.html\n* linear algebra: http://docs.scipy.org/doc/numpy/reference/routines.linalg.html\n\n  e.g. `np.random.beta(.1, 5, size=(1000, 1000))`"}
︠cde321b0-e11e-47a3-bc7d-3b389e1fb12e︠
# Solution
%python
A = np.random.beta(.1, 5, size=(1000, 1000))
A = A.T * A
Aev = np.linalg.eigvals(A)
plt.hist(Aev)
plt.show()

︡681aa343-9eee-4b1c-a324-5c36d374d4f3︡{"stdout":"(array([  17.,   57.,  135.,  226.,  270.,  168.,   89.,   32.,    5.,    1.]), array([-0.31629052, -0.24057083, -0.16485113, -0.08913143, -0.01341173,\n        0.06230796,  0.13802766,  0.21374736,  0.28946706,  0.36518675,\n        0.44090645]), <a list of 10 Patch objects>)\n"}︡{"file":{"filename":"a50c3aa5-8dc1-4f05-b7a6-ae3a37b3bb1b.svg","show":true,"text":null,"uuid":"b5049deb-2a99-42a2-9978-5c6544cd17b6"},"once":false}︡{"done":true}︡
︠381182f7-1b26-4627-b4d0-9bb479823308︠

︡1a434ecd-7456-49ca-86b3-211d74e679a1︡
︠c96ef2b3-cb12-4c39-8097-dadf45a6f7a4︠
%md
### Problem 5: (scipy)

1. create two random vectors with normal distribution
1. use a T-test to check, if they significantly differ

* http://docs.scipy.org/doc/scipy/reference/tutorial/stats.html

︡caa151f9-7295-4a63-a8df-ae4ba1423436︡{"done":true,"md":"### Problem 5: (scipy)\n\n1. create two random vectors with normal distribution\n1. use a T-test to check, if they significantly differ\n\n* http://docs.scipy.org/doc/scipy/reference/tutorial/stats.html"}
︠f27ef568-947b-41e2-ab10-7e89f2364f97︠
# Solution





︡ab1b5543-2636-4dd7-97a0-af5da6c7fc1e︡
︠9fc93115-d652-4634-a413-a2920fd97c8ei︠
%md
### Problem 6: (scipy)

The family of BFGS optimization algorithms is very well known.

Optimize a two dimensional function over a constraint box using it!

1. choose one from this list of classical optimization functions: https://en.wikipedia.org/wiki/Test_functions_for_optimization
2. express the mathematical equation in terms of numpy vectors
3. minimize in the box $[-10, 10]^2$ using the l-bfgs-b algorithm from scipy.

   question: what happens, when you do not specify the gradients?

* theory: http://docs.scipy.org/doc/scipy/reference/tutorial/optimize.html#broyden-fletcher-goldfarb-shanno-algorithm-method-bfgs

* minimize: http://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.minimize.html#scipy.optimize.minimize

* l-bfgs-b: http://docs.scipy.org/doc/scipy/reference/optimize.minimize-lbfgsb.html#optimize-minimize-lbfgsb


︡e259a89e-c492-4eca-94e4-c0a282f62045︡{"done":true,"md":"### Problem 6: (scipy)\n\nThe family of BFGS optimization algorithms is very well known.\n\nOptimize a two dimensional function over a constraint box using it!\n\n1. choose one from this list of classical optimization functions: https://en.wikipedia.org/wiki/Test_functions_for_optimization\n2. express the mathematical equation in terms of numpy vectors\n3. minimize in the box $[-10, 10]^2$ using the l-bfgs-b algorithm from scipy.\n\n   question: what happens, when you do not specify the gradients?\n\n* theory: http://docs.scipy.org/doc/scipy/reference/tutorial/optimize.html#broyden-fletcher-goldfarb-shanno-algorithm-method-bfgs\n\n* minimize: http://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.minimize.html#scipy.optimize.minimize\n\n* l-bfgs-b: http://docs.scipy.org/doc/scipy/reference/optimize.minimize-lbfgsb.html#optimize-minimize-lbfgsb"}
︠b5ff4a8f-153c-44b6-8bc0-41e2c1639001︠
# Solution










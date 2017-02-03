︠670c035e-10aa-4005-93af-f379301fe855i︠
%md
# Math 480 - Homework 3: Due 6pm on April 15, 2016
## Speed
︡f8a01199-1fe9-4723-8641-9d5fc14ef4c9︡︡{"done":true,"md":"# Math 480 - Homework 3: Due 6pm on April 15, 2016\n## Speed"}
︠1fe68ebb-02c8-41a8-b399-6d9556294267i︠
%md
**There are 5 problems and all have equal weights.**
︡4bed8dd2-c713-4c56-a165-2b1858697cfe︡︡{"done":true,"md":"**There are 5 problems and all have equal weights.**"}
︠1fced8d1-162c-4c08-a78b-3d119a351032︠


︡78ec670e-a763-45c6-8810-ce17860e3566︡
︠6756cf3b-5714-486e-a268-4ed240fd782ai︠
%md
## Problem 1: Standard deviation

a. Write a straightforward Python function (not using anything special from numpy
or Sage) to compute the standard deviation of a list of numbers.

b. Compare the speed of your program when given as input `v = range(1000)`,  `v = range(10000)` and `v = range(100000)` with the speed of standard deviation on that input as implemented in: numpy, R, and stats.TimeSeries.   Use %timeit.

c. Do a and b again, but for an implementation of mysd using Cython (you do not have to use any special features of Cython).

︡d1ada541-c621-4e1d-b28c-51372e8b7b2b︡︡{"done":true,"md":"## Problem 1: Standard deviation\n\na. Write a straightforward Python function (not using anything special from numpy\nor Sage) to compute the standard deviation of a list of numbers.\n\nb. Compare the speed of your program when given as input `v = range(1000)`,  `v = range(10000)` and `v = range(100000)` with the speed of standard deviation on that input as implemented in: numpy, R, and stats.TimeSeries.   Use %timeit.\n\nc. Do a and b again, but for an implementation of mysd using Cython (you do not have to use any special features of Cython)."}
︠6b1656d3-0559-4ff7-b1aa-d1bbd1a918e1︠

def mysd(v):
    # your code here
    pass


︡55bd5609-2d11-4163-a340-eb8163ede85f︡
︠95fa6ee2-e696-410a-9b72-674601b8c7dbs︠
# Test: your code should agree with the std function that is built into Sage.
std([1..10])
︡e1913b3a-5622-4d73-a108-39acbde51fde︡︡{"stdout":"sqrt(55/6)\n"}︡{"done":true}
︠ac0ef5c6-682e-4a42-b310-26d817b1095f︠








︡c9b52d17-f947-425f-919b-47caadb0a4ab︡
︠0f11d0a0-d244-4420-b02c-ec63f9063f00i︠
%md
## Problem 2: Which approach

Imagine you're an a tenure-track academic researcher.  To do some key research,
you need to implement code to compute a function $f(n)$, and use it to
evaluate $\alpha = f(1) + f(2) +  \cdots +  f(100)$.

You can implement this code in two ways:

**STRATEGY 1:** Work fulltime for one month implementing and debugging a very fast algorithm
in C, so that actually computing $\alpha$ only takes $1$ hour on your laptop.

**STRATEGY 2:** Spend about 3 hours writing a non-optimized Python program (that
calls some other slow code), then let your code run on a cluster
for 1 month (running the program costs \$2K in grant money).

Come up with a creative (but serious) argument in favor of each of the above strategies.

(How this will be graded: (a) you may lose points for mistakes in English spelling and grammar, (b) you must have put real thought into the problem.)













︡3d035dc9-ef7f-4124-b90a-c6e3f4902cd1︡︡{"done":true,"md":"## Problem 2: Which approach\n\nImagine you're an a tenure-track academic researcher.  To do some key research,\nyou need to implement code to compute a function $f(n)$, and use it to\nevaluate $\\alpha = f(1) + f(2) +  \\cdots +  f(100)$.\n\nYou can implement this code in two ways:\n\n**STRATEGY 1:** Work fulltime for one month implementing and debugging a very fast algorithm\nin C, so that actually computing $\\alpha$ only takes $1$ hour on your laptop.\n\n**STRATEGY 2:** Spend about 3 hours writing a non-optimized Python program (that\ncalls some other slow code), then let your code run on a cluster\nfor 1 month (running the program costs \\$2K in grant money).\n\nCome up with a creative (but serious) argument in favor of each of the above strategies.\n\n(How this will be graded: (a) you may lose points for mistakes in English spelling and grammar, (b) you must have put real thought into the problem.)"}
︠a344ae7f-de49-4dae-8e40-d9c1d2f11dcf︠
%md
In favor of STRATEGY 1:








︡5112bd88-52ea-4e91-bfd1-9a95fa71de9e︡
︠5a8598f3-b442-44c7-a04c-cdc4c26ec1d5︠

%md
In favor of STRATEGY 2:







︡24ab4892-b4f0-45e6-be2e-990826138f2c︡
︠4d5bbc2b-5b5d-46d3-b183-94ba0af9e503︠

︡79f8d516-0207-4fda-8247-84d243795cf5︡
︠e63641f5-1b6f-4d40-a9de-e6bebb105144i︠
%md
## Problem 3:

Given a rough order of magnitude estimate for how long each of the following should take:

1. Doing a Google search for `math software` (just the time that Google reports it having taken).
2. A server in Seattle pinging a server in California (both with optimal network connections).
3. A server in Seattle pinging a server in Japan  (both with optimal network connections).
4. Adding together 1 million double precision floating point numbers using pure Python.
4. Adding together 1 million double precision floating point numbers using Cython (or C) with type declarations.
5. Computing the determinant of a 100x100 matrix whose entries are random single-digit integers (using Sage).  No rounding errors.
6. 1 million separate writes of random numbers to an SSD disk.   By "separate write" we mean that you flush the write to disk every time.  You can lookup specs for number of IO operations per second for some common SSD's by searching on Google.



︡a058a50c-167b-47d6-ab4e-ce3e5f28dd59︡︡{"done":true,"md":"## Problem 3:\n\nGiven a rough order of magnitude estimate for how long each of the following should take:\n\n1. Doing a Google search for `math software` (just the time that Google reports it having taken).\n2. A server in Seattle pinging a server in California (both with optimal network connections).\n3. A server in Seattle pinging a server in Japan  (both with optimal network connections).\n4. Adding together 1 million double precision floating point numbers using pure Python.\n4. Adding together 1 million double precision floating point numbers using Cython (or C) with type declarations.\n5. Computing the determinant of a 100x100 matrix whose entries are random single-digit integers (using Sage).  No rounding errors.\n6. 1 million separate writes of random numbers to an SSD disk.   By \"separate write\" we mean that you flush the write to disk every time.  You can lookup specs for number of IO operations per second for some common SSD's by searching on Google."}
︠15a0f646-b744-4285-a828-d5e597796970︠

















︡905dee88-5913-419a-a09b-df4fc5b53d0a︡
︠94169c72-0564-46fa-83e4-f5988dfe4412i︠
%md
## Problem 4: Techniques used by projects

Track down projects that use various tools that we discussed this week.

1. Give five examples of existing open source Python projects that use Cython.  What do they use Cython for?
2. Give five examples of existing open source Python projects that use Numpy.  What is something they use Numpy for?
3. Give three examples of existing open source Python projects that use Numba.  How do they use numba?
︡da01210c-555b-45df-96a1-3f23271dd001︡︡{"done":true,"md":"## Problem 4: Techniques used by projects\n\nTrack down projects that use various tools that we discussed this week.\n\n1. Give five examples of existing open source Python projects that use Cython.  What do they use Cython for?\n2. Give five examples of existing open source Python projects that use Numpy.  What is something they use Numpy for?\n3. Give three examples of existing open source Python projects that use Numba.  How do they use numba?"}
︠715d9dc9-d011-4fb0-8430-345285419b4b︠











︡c3c72719-f8d7-48a8-9153-8054c35b8aea︡
︠22e056db-9536-48c0-b097-c9e27357df20i︠
%md
## Problem 5:

1. Write a simple naive function using a for loop to compute $s(n) = 1 + 2 + 3 + \cdots + n$, the sum of the first $n$ integers.  Do **not** use the formula $s(n)=n(n+1)/2$.   Use %timeit and/or %time to see how long your function takes when $n=10^5$ and $n=10^6$.
2. Ensure that the numbers are of type Python int in part 1 (rather than Sage's Integers).  How much does that improve the timings?
3. Use Numba to try to speed up your Python function and time it (put %python at the top of any cell in which you use numba). Does Numba help?
4. Compile the exact same function using Cython and time it.
5. Add Cython type declarations, so assume that everything is `cdef long`, and compile it.
6. Do 1-5 above again, but using the formula $s(n)=n(n+1)/2$ instead of a for loop.
︡faebad09-9f48-49df-a5fa-f4e0b695fb70︡︡{"done":true,"md":"## Problem 5:\n\n1. Write a simple naive function using a for loop to compute $s(n) = 1 + 2 + 3 + \\cdots + n$, the sum of the first $n$ integers.  Do **not** use the formula $s(n)=n(n+1)/2$.   Use %timeit and/or %time to see how long your function takes when $n=10^5$ and $n=10^6$.\n2. Ensure that the numbers are of type Python int in part 1 (rather than Sage's Integers).  How much does that improve the timings?\n3. Use Numba to try to speed up your Python function and time it (put %python at the top of any cell in which you use numba). Does Numba help?\n4. Compile the exact same function using Cython and time it.\n5. Add Cython type declarations, so assume that everything is `cdef long`, and compile it.\n6. Do 1-5 above again, but using the formula $s(n)=n(n+1)/2$ instead of a for loop."}
︠69d111ea-b596-40c2-aaf8-c31b8f879fc4︠











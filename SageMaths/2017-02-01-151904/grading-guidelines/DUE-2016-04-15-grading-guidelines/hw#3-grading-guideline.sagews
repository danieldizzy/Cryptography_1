︠670c035e-10aa-4005-93af-f379301fe855i︠
%md
# Math 480 - Grading for Homework 3:

**Due Friday, April 22, 2016 by 6pm**

Your grading will be automatically collected.
︡f8a01199-1fe9-4723-8641-9d5fc14ef4c9︡︡{"done":true,"md":"# Math 480 - Grading for Homework 3:\n\n**Due Friday, April 22, 2016 by 6pm**\n\nYour grading will be automatically collected."}
︠4b032157-4616-4dea-bded-cb80886f9859︠
%html
<font color="red"><h1>HOMEWORK TOTAL: 65 POINTS</h1></font>
︡15f3a5db-6c70-4699-b9d9-1113e86072ef︡{"done":true,"html":"<font color=\"red\"><h1>HOMEWORK TOTAL: 65 POINTS</h1></font>"}
︠70662ac0-74e0-4431-847c-5a468b039dadi︠
%html

<font color="red"><h3>GRADING GUIDELINES</h3>
    <ul><li>Go through your gradee's homework worksheet and assign a score to each question. Please state an individual questions assigned score in a cell below it, and leave a few words comment.</li>
        <li>State the total score you've assigned for the homework at the top of the worksheet. Put <br><tt>TOTAL: X/65</tt><br>
            in a cell on its own, where <tt>X</tt> is the total score for this homework.</li>
        <li>The idea is to provide constructive feedback for your gradee. Please attempt to be fair in your grading, and make sure your comments are professional.</li>
        <li>For visibility, I recommend any text you add be colored red. You're welcome to copy any of red html text below and paste it in, suitably edited, if you so desire.</li>
    </ul>
</font>
︡be5cfea5-d7bf-477a-a75a-36c6b652b7bf︡{"done":true,"html":"\n<font color=\"red\"><h3>GRADING GUIDELINES</h3>\n    <ul><li>Go through your gradee's homework worksheet and assign a score to each question. Please state an individual questions assigned score in a cell below it, and leave a few words comment.</li>\n        <li>State the total score you've assigned for the homework at the top of the worksheet. Put <br><tt>TOTAL: X/65</tt><br>\n            in a cell on its own, where <tt>X</tt> is the total score for this homework.</li>\n        <li>The idea is to provide constructive feedback for your gradee. Please attempt to be fair in your grading, and make sure your comments are professional.</li>\n        <li>For visibility, I recommend any text you add be colored red. You're welcome to copy any of red html text below and paste it in, suitably edited, if you so desire.</li>\n    </ul>\n</font>"}
︠6756cf3b-5714-486e-a268-4ed240fd782ai︠
%md
## Problem 1: Standard deviation

a. Write a straightforward Python function (not using anything special from numpy
or Sage) to compute the standard deviation of a list of numbers.

b. Compare the speed of your program when given as input `v = range(1000)`,  `v = range(10000)` and `v = range(100000)` with the speed of standard deviation on that input as implemented in: numpy, R, and stats.TimeSeries.   Use %timeit.

c. Do a and b again, but for an implementation of mysd using Cython (you do not have to use any special features of Cython).

︡d1ada541-c621-4e1d-b28c-51372e8b7b2b︡︡{"done":true,"md":"## Problem 1: Standard deviation\n\na. Write a straightforward Python function (not using anything special from numpy\nor Sage) to compute the standard deviation of a list of numbers.\n\nb. Compare the speed of your program when given as input `v = range(1000)`,  `v = range(10000)` and `v = range(100000)` with the speed of standard deviation on that input as implemented in: numpy, R, and stats.TimeSeries.   Use %timeit.\n\nc. Do a and b again, but for an implementation of mysd using Cython (you do not have to use any special features of Cython)."}
︠6b1656d3-0559-4ff7-b1aa-d1bbd1a918e1︠
%html

<font color="red"><h2>10 Points Total</h2>
<h4>Part A (3 points total)</h4>
<p>Test that their function behaves the same way as the standard deviation function built into sage.</p>
<p>Award:
    <ul>
        <li>3 points if their function matches behavior to the examples below</li>
        <li>1 point if they wrote something that looks close to correct</li>
    </ul>
</p>
<h4>Part B (3 points total)</h4>
<p>Award:
    <ul>
        <li>3 points for correctly using %timeit</li>
        <li>2 points if each instance has the same sort of problem.</li>
    </ul>
</p>
<h4>Part C (3 points total)</h4>
<p>Award:
    <ul>
        <li>3 points for a correct implementation in Cython and using %timeit correctly</li>
        <li>2 point for just a correct implementation in Cython or a partially correct implementation with correct %timeit usage</li>
        <li>1 point for just using %timeit correctly</li>
    </ul>
</p>
</font>

︡8074bd2a-5cbb-46d8-a69c-1c2e0df8d15c︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<h4>Part A (3 points total)</h4>\n<p>Test that their function behaves the same way as the standard deviation function built into sage.</p>\n<p>Award:\n    <ul>\n        <li>3 points if their function matches behavior to the examples below</li>\n        <li>1 point if they wrote something that looks close to correct</li>\n    </ul>\n</p>\n<h4>Part B (3 points total)</h4>\n<p>Award:\n    <ul>\n        <li>3 points for correctly using %timeit</li>\n        <li>2 points if each instance has the same sort of problem.</li>\n    </ul>\n</p>\n<h4>Part C (3 points total)</h4>\n<p>Award:\n    <ul>\n        <li>3 points for a correct implementation in Cython and using %timeit correctly</li>\n        <li>2 point for just a correct implementation in Cython or a partially correct implementation with correct %timeit usage</li>\n        <li>1 point for just using %timeit correctly</li>\n    </ul>\n</p>\n</font>"}
︠17ce0a75-0693-4845-9d90-e84f090ca299s︠
# Example Solution
def mysd(data):
    # Size of data
    size = len(data)

    # Make sure that we're dealing with Sage Integers
    data = map(Integer, data)

    # Calculate the average
    average = sum(data)/size

    # Calculate the deviations from mean, squared
    squared_deviations = sum(map(lambda x : (x - average)^2, data))

    # Calculate the variance
    variance = squared_deviations/(size - 1) # Note that we divide by size-1

    # Return the standard deviation
    return sqrt(variance)

# Some tests
print "These should all be sqrt(55/6)"
mysd(range(10))
mysd(range(1, 11))
mysd([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
std([1..10])
print "\nThese should be sqrt(7/2)"
std([1..6])
mysd([1..6])

︡23730602-8a40-4f76-a340-2ca935e884a4︡︡{"stdout":"These should all be sqrt(55/6)\n"}︡{"stdout":"sqrt(55/6)\n"}︡{"stdout":"sqrt(55/6)\n"}︡{"stdout":"sqrt(55/6)\n"}︡{"stdout":"sqrt(55/6)\n"}︡{"stdout":"\nThese should be sqrt(7/2)\n"}︡{"stdout":"sqrt(7/2)\n"}︡{"stdout":"sqrt(7/2)\n"}︡{"done":true}
︠30f52a69-e61f-4876-b163-ddabcd477590s︠
# Example Solution

print "My Times"
%timeit mysd(range(1000))
%timeit mysd(range(10000))
%timeit mysd(range(100000))
print ""

print "Timings using stats.TimeSeries"
x = stats.TimeSeries(range(1000))
y = stats.TimeSeries(range(10000))
z = stats.TimeSeries(range(100000))
%timeit x.standard_deviation()
%timeit y.standard_deviation()
%timeit z.standard_deviation()
print ""

print "Timings using Numpy"
import numpy
numpy.std(range(1000), ddof=1)
%timeit numpy.std(range(1000), ddof=1)
%timeit numpy.std(range(10000), ddof=1)
%timeit numpy.std(range(100000), ddof=1)
print ""

︡524b7f6d-a57a-453a-979c-d9c7460891c7︡︡{"stdout":"My Times\n"}︡{"stdout":"125 loops, best of 3: 3.17 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"25 loops, best of 3: 35.6 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"5 loops, best of 3: 290 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"\n"}︡{"stdout":"Timings using stats.TimeSeries\n"}︡{"stdout":"625 loops, best of 3: 2.47 µs per loop\n"}︡{"stdout":"625 loops, best of 3: 24.1 µs per loop\n"}︡{"stdout":"625 loops, best of 3: 228 µs per loop"}︡{"stdout":"\n"}︡{"stdout":"\n"}︡{"stdout":"Timings using Numpy\n"}︡{"stdout":"288.81943609574938\n"}︡{"stdout":"625 loops, best of 3: 133 µs per loop"}︡{"stdout":"\n"}︡{"stdout":"625 loops, best of 3: 729 µs per loop"}︡{"stdout":"\n"}︡{"stdout":"125 loops, best of 3: 7.62 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"\n"}︡{"done":true}
︠128eadc2-69ae-4608-9e70-005c38ff9793s︠
%r
x <- c(1:1000)
start.time <- Sys.time()
sd(x, na.rm = FALSE)
end.time <- Sys.time()
time.taken <- end.time - start.time
time.taken

y <- c(1:10000)
start.time <- Sys.time()
sd(y, na.rm = FALSE)
end.time <- Sys.time()
time.taken <- end.time - start.time
time.taken

z <- c(1:100000)
start.time <- Sys.time()
sd(z, na.rm = FALSE)
end.time <- Sys.time()
time.taken <- end.time - start.time
time.taken
︡242608c9-b5b7-4042-b9a5-9fb4421a4157︡︡{"stdout":"[1] 288.8194\n\n\nTime difference of 0.004317999 secs\n\n\n[1] 2886.896\n\n\nTime difference of 0.005000114 secs\n\n\n[1] 28867.66\n\n\nTime difference of 0.006437063 secs"}︡{"done":true}
︠424bba1a-6c41-4478-8184-b42015d7a974i︠
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
︡2cdb13a9-1548-457a-93df-adabc5365b03︡︡{"done":true,"md":"## Problem 2: Which approach\n\nImagine you're an a tenure-track academic researcher.  To do some key research,\nyou need to implement code to compute a function $f(n)$, and use it to\nevaluate $\\alpha = f(1) + f(2) +  \\cdots +  f(100)$.\n\nYou can implement this code in two ways:\n\n**STRATEGY 1:** Work fulltime for one month implementing and debugging a very fast algorithm\nin C, so that actually computing $\\alpha$ only takes $1$ hour on your laptop.\n\n**STRATEGY 2:** Spend about 3 hours writing a non-optimized Python program (that\ncalls some other slow code), then let your code run on a cluster\nfor 1 month (running the program costs \\$2K in grant money).\n\nCome up with a creative (but serious) argument in favor of each of the above strategies.\n\n(How this will be graded: (a) you may lose points for mistakes in English spelling and grammar, (b) you must have put real thought into the problem.)"}
︠839903c0-1a9f-4aef-b7b2-a15a6f2114d5i︠
%html
<font color="red"><h2>10 Points Total</h2>
<h4>Part A and B (5 points each)</h4>
<p>Award points based on their thoughtfulness.</p>
<p>Award:
    <ul>
        <li>5 points for a well reasoned answer describing situations for each strategy.</li>
        <li>~3 points if they wrote some reasons down</li>
        <li>~1 point if they wrote something trivial</li>
    </ul>
</p>
</font>
︡5933b208-dad8-4bef-97ef-89a5b4ac9a83︡︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\n<h4>Part A and B (5 points each)</h4>\n<p>Award points based on their thoughtfulness.</p>\n<p>Award:\n    <ul>\n        <li>5 points for a well reasoned answer describing situations for each strategy.</li>\n        <li>~3 points if they wrote some reasons down</li>\n        <li>~1 point if they wrote something trivial</li>\n    </ul>\n</p>\n</font>"}
︠b9584cf0-3e39-4d80-b5ff-ec4456b3c3e7i︠
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
︡597eee59-5912-47ae-96d4-679978161a27︡︡{"done":true,"md":"## Problem 3:\n\nGiven a rough order of magnitude estimate for how long each of the following should take:\n\n1. Doing a Google search for `math software` (just the time that Google reports it having taken).\n2. A server in Seattle pinging a server in California (both with optimal network connections).\n3. A server in Seattle pinging a server in Japan  (both with optimal network connections).\n4. Adding together 1 million double precision floating point numbers using pure Python.\n4. Adding together 1 million double precision floating point numbers using Cython (or C) with type declarations.\n5. Computing the determinant of a 100x100 matrix whose entries are random single-digit integers (using Sage).  No rounding errors.\n6. 1 million separate writes of random numbers to an SSD disk.   By \"separate write\" we mean that you flush the write to disk every time.  You can lookup specs for number of IO operations per second for some common SSD's by searching on Google."}
︠6731542d-8f15-4319-a8ff-f21186472e4ei︠
%html
<font color="red"><h2>10 Points Total</h2>
<p>Award:
    <ul>
        <li>1 point per part if their answer is within an order of magnitude of the example solution.</li>
        <li>.5 points if it's within two orders of magnitude.</li>
        <li>+ 3 points for completion</li>
    </ul>
</p>
</font>

︡9fd68143-24d0-4ac7-9b43-017cce4e4d92︡︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\n<p>Award:\n    <ul>\n        <li>1 point per part if their answer is within an order of magnitude of the example solution.</li>\n        <li>.5 points if it's within two orders of magnitude.</li>\n        <li>+ 3 points for completion</li>\n    </ul>\n</p>\n</font>"}
︠d65ca5c9-7c3e-498f-bae4-cffe518e4b2ci︠
%md
#### Example Solution

1. 0.1 seconds
2. 10 ms
3. 100 ms
4. 100 ms
5. 25 ms
6. 100 ns
7. 2 sec

︡c1de5891-8261-45dd-be8f-0055fc978879︡︡{"done":true,"md":"#### Example Solution\n\n1. 0.1 seconds\n2. 10 ms\n3. 100 ms\n4. 100 ms\n5. 25 ms\n6. 100 ns\n7. 2 sec"}
︠8b3d2cd7-6c94-4e87-a0b3-5e6630c41b2ci︠
%md
Problem 4: Techniques used by projects

Track down projects that use various tools that we discussed this week.

    1. Give five examples of existing open source Python projects that use Cython. What do they use Cython for?

    2. Give five examples of existing open source Python projects that use Numpy. What is something they use Numpy for?

    3. Give three examples of existing open source Python projects that use Numba. How do they use numba?
︡5d6abc56-d4c0-4306-a53e-8ddbd8d9f8ed︡︡{"done":true,"md":"Problem 4: Techniques used by projects\n\nTrack down projects that use various tools that we discussed this week.\n\n    1. Give five examples of existing open source Python projects that use Cython. What do they use Cython for?\n\n    2. Give five examples of existing open source Python projects that use Numpy. What is something they use Numpy for?\n\n    3. Give three examples of existing open source Python projects that use Numba. How do they use numba?"}
︠5ea61ab0-56bc-4fc0-9e24-63ee4c8b15ce︠
%html
<font color="red"><h2>15 Points Total</h2>
<h4>Part 1, 2, and 3</h4>
<p>Award:
    <ul>
        <li>1 point per example</li>
        <li>+ 2 points for completion</li>
    </ul>
</p>
<p>
    If their example is not found in the example solution, briefly try to find out if their example works. Do not take off points for repeats. For example if a project uses both Cython and Numpy, it may be used for part 1 and part 2.
</p>
</font>
︡5322833d-9a4f-467d-8e6e-0600638da724︡︡{"done":true,"html":"<font color=\"red\"><h2>15 Points Total</h2>\n<h4>Part 1, 2, and 3</h4>\n<p>Award:\n    <ul>\n        <li>1 point per example</li>\n        <li>+ 2 points for completion</li>\n    </ul>\n</p>\n<p>\n    If their example is not found in the example solution, briefly try to find out if their example works. Do not take off points for repeats. For example if a project uses both Cython and Numpy, it may be used for part 1 and part 2.\n</p>\n</font>"}
︠398b6626-1c16-4888-8aee-127fd79238d0i︠
%md
#### Solution:
Part 1: Any from this [list](https://github.com/cython/cython/wiki/projects)

Part 2: Any from this [list](https://scipy.github.io/old-wiki/pages/Projects.html)

Part 3: Some examples below.
- [iutils](https://github.com/indranilsinharoy/iutils)
- [Continuum](https://www.continuum.io/)
- [NumbaPro](https://devblogs.nvidia.com/parallelforall/numbapro-high-performance-python-cuda-acceleration/) (Even though it's been deprecated)
- [Brisk](https://www.openhub.net/p/brisk_numba)
- [Numbas](https://github.com/numbas/Numbas)
- [Numbagg](https://github.com/shoyer/numbagg)
- [Numbavec](https://github.com/mvsaha/numbavec)
︡22745944-3e5d-4345-b6e1-2149f1d536f8︡︡{"done":true,"md":"#### Solution:\nPart 1: Any from this [list](https://github.com/cython/cython/wiki/projects)\n\nPart 2: Any from this [list](https://scipy.github.io/old-wiki/pages/Projects.html)\n\nPart 3: Some examples below.\n- [iutils](https://github.com/indranilsinharoy/iutils)\n- [Continuum](https://www.continuum.io/)\n- [NumbaPro](https://devblogs.nvidia.com/parallelforall/numbapro-high-performance-python-cuda-acceleration/) (Even though it's been deprecated)\n- [Brisk](https://www.openhub.net/p/brisk_numba)\n- [Numbas](https://github.com/numbas/Numbas)\n- [Numbagg](https://github.com/shoyer/numbagg)\n- [Numbavec](https://github.com/mvsaha/numbavec)"}
︠528e80a0-bc3d-44c5-b830-0ad2e215f508i︠
%md
## Problem 5:

1. Write a simple naive function using a for loop to compute $s(n) = 1 + 2 + 3 + \cdots + n$, the sum of the first $n$ integers.  Do **not** use the formula $s(n)=n(n+1)/2$.   Use %timeit and/or %time to see how long your function takes when $n=10^5$ and $n=10^6$.
2. Ensure that the numbers are of type Python int in part 1 (rather than Sage's Integers).  How much does that improve the timings?
3. Use Numba to try to speed up your Python function and time it (put %python at the top of any cell in which you use numba). Does Numba help?
4. Compile the exact same function using Cython and time it.
5. Add Cython type declarations, so assume that everything is `cdef long`, and compile it.
6. Do 1-5 above again, but using the formula $s(n)=n(n+1)/2$ instead of a for loop.
︡30ff45a9-93b7-431f-8ed3-0563ede5df8c︡︡{"done":true,"md":"## Problem 5:\n\n1. Write a simple naive function using a for loop to compute $s(n) = 1 + 2 + 3 + \\cdots + n$, the sum of the first $n$ integers.  Do **not** use the formula $s(n)=n(n+1)/2$.   Use %timeit and/or %time to see how long your function takes when $n=10^5$ and $n=10^6$.\n2. Ensure that the numbers are of type Python int in part 1 (rather than Sage's Integers).  How much does that improve the timings?\n3. Use Numba to try to speed up your Python function and time it (put %python at the top of any cell in which you use numba). Does Numba help?\n4. Compile the exact same function using Cython and time it.\n5. Add Cython type declarations, so assume that everything is `cdef long`, and compile it.\n6. Do 1-5 above again, but using the formula $s(n)=n(n+1)/2$ instead of a for loop."}
︠a14e064b-44a8-4c8c-bcd0-84e8f3138de8i︠
%html
<font color="red"><h2>20 Points Total</h2>
<h4>Part 1, 2, 3, 4, 5 (10 points, 2 points per part)</h4>
<p>
    Each of these parts requires its own implementation. If each part has a similar error, only deduct points for one of them.
    </p>
<p>Award:
    <ul>
        <li>2 points if they have a correct implementation and use %timeit</li>
        <li>1.5 points if their implementation is nearly correct and use %timeit</li>
        <li>1 point if they are missing one of the requirements</li>
    </ul>
</p>
<h4>Part 6 (10 points, 2 points per copy of parts 1-5)</h4>
<p>
    This is the same as parts 1-5 except as one part.
    </p>
<p>Award points identically to above.
</p>
</font>
︡cd16ba6c-0783-4afc-a203-fe71bf787ca5︡︡{"done":true,"html":"<font color=\"red\"><h2>20 Points Total</h2>\n<h4>Part 1, 2, 3, 4, 5 (10 points, 2 points per part)</h4>\n<p>\n    Each of these parts requires its own implementation. If each part has a similar error, only deduct points for one of them.\n    </p>\n<p>Award:\n    <ul>\n        <li>2 points if they have a correct implementation and use %timeit</li>\n        <li>1.5 points if their implementation is nearly correct and use %timeit</li>\n        <li>1 point if they are missing one of the requirements</li>\n    </ul>\n</p>\n<h4>Part 6 (10 points, 2 points per copy of parts 1-5)</h4>\n<p>\n    This is the same as parts 1-5 except as one part.\n    </p>\n<p>Award points identically to above.\n</p>\n</font>"}
︠5120d7c3-fd1e-4f2c-a574-4bdd9846cadf︠
# Sample Solution
def sum_basic(n):
    sum = 0
    for x in [1..n]: # Using this notation iterates over sage Integers
        sum += x
    return sum

sum_basic(10)
︡29c9cb51-6805-4e25-9546-63f05814dafa︡︡{"stdout":"55\n"}︡{"done":true}
︠4b8b5fa0-ae62-461d-bfc1-e3de5931414c︠
def sum_int(n):
    sum = int(0)
    for x in range(n + 1): # Using range iterates over python ints
        sum += x
    return sum

sum_int(10)
︡3c07ec40-9d2e-4300-838a-e14d2f0e95b6︡︡{"stdout":"55\n"}︡{"done":true}
︠3151f589-7e60-413c-9731-80e1087f7be7s︠
%python

import numba
@numba.jit
def sum_numba(n):
    sum = int(0)
    for x in range(n + 1):
        sum += x
    return sum

sum_numba(10)
︡da33b51d-3184-43fb-903a-499ef7b69f94︡︡{"stdout":"55"}︡{"stdout":"\n"}︡{"done":true}
︠5d3d2136-d872-4941-b438-e468c813e927s︠
%cython
import math
def sum_numba(n):
    sum = int(0)
    for x in range(n + 1):
        sum += x
    return sum


︡7ef72817-b9ec-4dc1-a61b-49b1f12346f5︡︡{"stdout":"Defined math, sum_numba"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/18440/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_18440_dir_ORlT7h_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_18440_dir_ORlT7h_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/raw/.sage/temp/compute7-us/18440/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_18440_dir_ORlT7h_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_18440_dir_ORlT7h_a_pyx_0.html"},"once":false}︡{"done":true}
︠beb5ac74-02c5-4c72-b3fe-240c2a5d9e21︠
%cython
import math
def sum_numba(long n):      # Don't take off any points if they used 'cdef int' instead of 'cdef long'
    cdef long sum = 0       # -0.5 if this isn't a long
    cdef long x = 0         # Don't take off any points if they used 'cdef int' instead of 'cdef long'
    for x in range(n + 1):
        sum += x
    return sum
︡807fd3c1-4db2-46fa-9fc9-c01e826524fa︡︡{"stdout":"Defined math, sum_numba"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/18440/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_18440_dir_VNP2Ew_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_18440_dir_VNP2Ew_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/raw/.sage/temp/compute7-us/18440/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_18440_dir_VNP2Ew_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_18440_dir_VNP2Ew_a_pyx_0.html"},"once":false}︡{"done":true}
︠a3da76dc-7205-4ee0-b070-99ec291875bci︠
%md
### <font color='red'>%timeit usage should be similar to above in problem 1</font>
︡ddd66275-4047-4c1f-ad94-4d9d12783605︡︡{"done":true,"md":"### <font color='red'>%timeit usage should be similar to above in problem 1</font>"}
︠c4494cb6-f09e-49a2-bfc0-b3373dd77a75︠
︠17f2692a-e3cc-422f-b5fd-cebaac87f28c︠










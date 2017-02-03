︠670c035e-10aa-4005-93af-f379301fe855i︠
%md
# Math 480 - Grading for Homework 3:

**Due Friday, April 22, 2016 by 6pm**

Your grading will be automatically collected.
︡f8a01199-1fe9-4723-8641-9d5fc14ef4c9︡︡{"done":true,"md":"# Math 480 - Grading for Homework 3:\n\n**Due Friday, April 22, 2016 by 6pm**\n\nYour grading will be automatically collected."}
︠4b032157-4616-4dea-bded-cb80886f9859i︠
%html
<font color="red"><h1>HOMEWORK TOTAL: 50 POINTS</h1></font>
︡15f3a5db-6c70-4699-b9d9-1113e86072ef︡︡{"done":true,"html":"<font color=\"red\"><h1>HOMEWORK TOTAL: 50 POINTS</h1></font>"}
︠70662ac0-74e0-4431-847c-5a468b039dadi︠
%html

<font color="red"><h3>GRADING GUIDELINES</h3>
    <ul><li>Go through your gradee's homework worksheet and assign a score to each question. Please state an individual questions assigned score in a cell below it, and leave a few words comment.</li>
        <li>State the total score you've assigned for the homework at the top of the worksheet. Put <br><tt>TOTAL: X/50</tt><br>
            in a cell on its own, where <tt>X</tt> is the total score for this homework.</li>
        <li>The idea is to provide constructive feedback for your gradee. Please attempt to be fair in your grading, and make sure your comments are professional.</li>
        <li>For visibility, I recommend any text you add be colored red. You're welcome to copy any of red html text below and paste it in, suitably edited, if you so desire.</li>
    </ul>
</font>
︡be5cfea5-d7bf-477a-a75a-36c6b652b7bf︡︡{"done":true,"html":"\n<font color=\"red\"><h3>GRADING GUIDELINES</h3>\n    <ul><li>Go through your gradee's homework worksheet and assign a score to each question. Please state an individual questions assigned score in a cell below it, and leave a few words comment.</li>\n        <li>State the total score you've assigned for the homework at the top of the worksheet. Put <br><tt>TOTAL: X/50</tt><br>\n            in a cell on its own, where <tt>X</tt> is the total score for this homework.</li>\n        <li>The idea is to provide constructive feedback for your gradee. Please attempt to be fair in your grading, and make sure your comments are professional.</li>\n        <li>For visibility, I recommend any text you add be colored red. You're welcome to copy any of red html text below and paste it in, suitably edited, if you so desire.</li>\n    </ul>\n</font>"}
︠6756cf3b-5714-486e-a268-4ed240fd782ai︠
%md
## Problem 1: Standard deviation

a. Write a straightforward Python function (not using anything special from numpy
or Sage) to compute the standard deviation of a list of numbers.

b. Compare the speed of your program when given as input `v = range(1000)`,  `v = range(10000)` and `v = range(100000)` with the speed of standard deviation on that input as implemented in: numpy, R, and stats.TimeSeries.   Use %timeit.

c. Do a and b again, but for an implementation of mysd using Cython (you do not have to use any special features of Cython).

︡d1ada541-c621-4e1d-b28c-51372e8b7b2b︡︡{"done":true,"md":"## Problem 1: Standard deviation\n\na. Write a straightforward Python function (not using anything special from numpy\nor Sage) to compute the standard deviation of a list of numbers.\n\nb. Compare the speed of your program when given as input `v = range(1000)`,  `v = range(10000)` and `v = range(100000)` with the speed of standard deviation on that input as implemented in: numpy, R, and stats.TimeSeries.   Use %timeit.\n\nc. Do a and b again, but for an implementation of mysd using Cython (you do not have to use any special features of Cython)."}
︠44b5ec84-37b6-47b9-a6e5-10d05f21db16︠
%html
<font color="red"><h2>20 Points Total</h2>
<h4>Part A (2 points total)</h4>
<p>Award:
    <ul>
        <li>2 points if their function behaves the same way as the standard deviation function built into sage.</li>
        <li>1 </li>
    </ul>
</p>
<h4>Part B (6 points total, 2 points per part)</h4>
<p>Award:
    <ul>
        <li>3 points</li>
        <li>2 points</li>
    </ul>
</p>
<h4>Part C (12 points total, 3 points per part)</h4>
<p>Award:
    <ul>
        <li>3 points if they </li>
        <li>2 points if they</li>
        <li>1 point if they.</li>
        <li>0 points for anything else</li>
    </ul>
</p>
</font>

︡8074bd2a-5cbb-46d8-a69c-1c2e0df8d15c︡︡{"done":true,"html":"\n<font color=\"red\"><h2>20 Points Total</h2>\n<h4>Part A (2 points total)</h4>\n<p>Test that their function behaves the same way as the standard deviation function built into sage.</p>\n<p>Award:\n    <ul>\n        <li>2 points if they did not use anything special outside of vanila Python </li>\n        <li>1 </li>\n    </ul>\n</p>\n<h4>Part B (9 points total, 3 points per part)</h4>\n<p>Award:\n    <ul>\n        <li>3 points</li>\n        <li>2 points</li>\n    </ul>\n</p>\n<h4>Part C (9 points total, 3 points per part)</h4>\n<p>Award:\n    <ul>\n        <li>3 points if they </li>\n        <li>2 points if they</li>\n        <li>1 point if they.</li>\n        <li>0 points for anything else</li>\n    </ul>\n</p>\n</font>"}
︠17ce0a75-0693-4845-9d90-e84f090ca299s︠
def mysd(data):
    # Calculate the average
    average = 0
    for entries in data:
        average += entries
    average = average/len(data)

    # Calculate the deviations from mean, squared
    deviations_squared = 0
    for entries in data:
        deviations_squared += (entries - average)**2

    # Calculate the variance
    variance = deviations_squared/len(data)

    # return the standard deviation
    return sqrt(variance)

mysd([1..10]) == std([1..10])
︡32499359-78b4-4772-949f-27789ad771da︡︡{"stdout":"1/2*sqrt(33) == sqrt(55/6)\n"}︡{"done":true}
︠30f52a69-e61f-4876-b163-ddabcd477590s︠
std([1..10])
︡04b11c2e-9e1e-4b64-b518-3c9f0e4dca34︡︡{"stdout":"sqrt(55/6)\n"}︡{"done":true}
︠2992224d-5171-488c-8b90-051d4e22f5c1s︠
# Example Solution

print "My Times"
mysd(range(1000))
%timeit mysd(range(1000))
%timeit mysd(range(10000))
%timeit mysd(range(100000))
print ""

print "Timings using stats.TimeSeries"
t = stats.TimeSeries(range(1000))
r = stats.TimeSeries(range(10000))
s = stats.TimeSeries(range(100000))
t.standard_deviation()
%timeit r.standard_deviation()
%timeit t.standard_deviation()
%timeit s.standard_deviation()
print ""

print "Timings using Numpy"
import numpy
numpy.std(range(1000), ddof=1)
%timeit numpy.std(range(1000), ddof=1)
%timeit numpy.std(range(10000), ddof=1)
%timeit numpy.std(range(100000), ddof=1)
print ""
︡d0492e15-9edf-4446-890c-67831d8d7fe6︡︡{"stdout":"My Times\n"}︡{"stdout":"3/2*sqrt(37037)\n"}︡{"stdout":"125 loops, best of 3: 2.66 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"25 loops, best of 3: 24.9 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"5 loops, best of 3: 269 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"\n"}︡{"stdout":"Timings using stats.TimeSeries\n"}︡{"stdout":"288.8194360957494\n"}︡{"stdout":"625 loops, best of 3: 22.3 µs per loop\n"}︡{"stdout":"625 loops, best of 3: 2.48 µs per loop\n"}︡{"stdout":"625 loops, best of 3: 222 µs per loop"}︡{"stdout":"\n"}︡{"stdout":"\n"}︡{"stdout":"Timings using Numpy\n"}︡{"stdout":"288.81943609574938\n"}︡{"stdout":"625 loops, best of 3: 135 µs per loop"}︡{"stdout":"\n"}︡{"stdout":"625 loops, best of 3: 993 µs per loop"}︡{"stdout":"\n"}︡{"stdout":"25 loops, best of 3: 10.1 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"\n"}︡{"done":true}
︠adad2994-5ae5-48db-be61-55cc5441aedds︠
print "times in r"
#time in r
reset("r")
%r
#x <- c(1:1000)
#sd(x, na.rm = FALSE)
start.time <- Sys.time()
sd(1:1000, na.rm = FALSE)
end.time <- Sys.time()
total.time <- end.time - start.time
total.time

start.time <- Sys.time()
sd(1:10000, na.rm = FALSE)
end.time <- Sys.time()
total.time <- end.time - start.time
total.time

start.time <- Sys.time()
sd(1:100000, na.rm = FALSE)
end.time <- Sys.time()
total.time <- end.time - start.time
total.time
#system.time(a <- sd(1:1000))
#system.time(a <- sd(1:10000))
#system.time(a <- sd(1:100000))
︡f0f6a27c-44b1-4ccb-9d7e-95a57e6309c9︡︡{"stdout":"times in r\n"}︡{"stdout":"[1] 288.8194\n\n\nTime difference of 0.005102158 secs\n\n[1] 2886.896\n\n\nTime difference of 0.00421977 secs\n\n[1] 28867.66\n\n\nTime difference of 0.007123947 secs"}︡{"done":true}
︠95fa6ee2-e696-410a-9b72-674601b8c7dbs︠
# Test: your code should agree with the std function that is built into Sage.
std([1..10])
︡1d027f72-4e0a-4359-a505-81b0bfd09708︡︡{"stdout":"sqrt(55/6)\n"}︡{"done":true}
︠ac0ef5c6-682e-4a42-b310-26d817b1095fs︠
%cython
import math
from sage.all import Integer, sqrt as sqrt0   # type Integer instead of  sage.all.Integer
def mysd_cython(v):
    # your code here
    numbs = Integer(len(v))
    total = 0
    for n in v:
        total += n
    avg = total/numbs
    dev = 0
    for n in v:
        res = n - avg
        dev += res**2
    return sqrt0((dev/(numbs-1)))




︡2c60c412-7b41-420b-a845-25d0c4f0d0f7︡︡{"stdout":"Defined Integer, math, mysd_cython, sqrt0"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/3583/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_Y8M0P9_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_Y8M0P9_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/raw/.sage/temp/compute7-us/3583/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_Y8M0P9_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_Y8M0P9_a_pyx_0.html"},"once":false}︡{"done":true}
︠ac45f6e7-e806-4dac-aecc-fd48015f5b15s︠
mysd_cython([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
%timeit mysd_cython(range(1000))
%timeit mysd_cython(range(10000))
%timeit mysd_cython(range(100000))
︡d04f713f-9edc-4dc0-b4d4-dace06183c5f︡︡{"stdout":"sqrt(55/6)\n"}︡{"stdout":"125 loops, best of 3: 2.62 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"25 loops, best of 3: 21.6 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"5 loops, best of 3: 180 ms per loop"}︡{"stdout":"\n"}︡{"done":true}
︠31c15c58-e91d-4722-b99c-730597f9c3e0s︠
#In conclusion, Python is the slowest, with Cython being only slightly faster and r being slightly faster than both, and numpy and stats.timeseries are much faster than the others
︡8d4d4460-94f8-4491-bf87-2ac9208c2715︡︡{"done":true}
︠0f11d0a0-d244-4420-b02c-ec63f9063f00︠
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
︠ff8d8010-0a2f-4ec6-ade2-19686a736704s︠



︡7c90547a-659f-409b-9a6d-9b2ace29eb40︡︡{"done":true}
︠e63641f5-1b6f-4d40-a9de-e6bebb105144︠
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
︠35dcf148-c186-43de-8876-a1e10b516762︠

︡b5b679b5-04da-4976-b9be-ccaca6fee1ce︡
︠f4740bab-fc1e-46c1-8f7c-8f043a962cf4s︠
%cython

def getTotal(v):
    cdef float total = 0.0
    for n in v:
        total += n
    return total
︡392fc19d-4965-42d4-8181-1ae8efd4e221︡︡{"stdout":"Defined getTotal"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/14924/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_14924_dir_ECfx7G_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_14924_dir_ECfx7G_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/raw/.sage/temp/compute7-us/14924/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_14924_dir_ECfx7G_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_14924_dir_ECfx7G_a_pyx_0.html"},"once":false}︡{"done":true}
︠de76376c-ba8a-41c2-9b84-bbab4e777453s︠

s = set(range(1, 1000000))
%timeit getTotal(s)
︡555fea43-7bcc-4687-bb20-ef3b61e94b7a︡︡{"stdout":"25 loops, best of 3: 50.4 ms per loop"}︡{"stdout":"\n"}︡{"done":true}
︠75fbe61b-fd05-4cca-b58b-9387a9945f51s︠

m = matrix(100, 100, 7)
m.parent()
%timeit det(m)
︡4a95f753-c546-4982-9b2c-4d505dfea12f︡︡{"stdout":"Full MatrixSpace of 100 by 100 dense matrices over Integer Ring\n"}︡{"stdout":"625 loops, best of 3: 238 ns per loop\n"}︡{"done":true}
︠e5b3629c-b448-4db0-83c2-dc2b566f938e︠
%md
Problem 4: Techniques used by projects

Track down projects that use various tools that we discussed this week.

    1. Give five examples of existing open source Python projects that use Cython. What do they use Cython for?

    2. Give five examples of existing open source Python projects that use Numpy. What is something they use Numpy for?

    3. Give three examples of existing open source Python projects that use Numba. How do they use numba?
︡cde7fe9c-4744-4311-8473-29ac591ba8e4︡︡{"done":true,"md":"Problem 4: Techniques used by projects\n\nTrack down projects that use various tools that we discussed this week.\n\n    1. Give five examples of existing open source Python projects that use Cython. What do they use Cython for?\n\n    2. Give five examples of existing open source Python projects that use Numpy. What is something they use Numpy for?\n\n    3. Give three examples of existing open source Python projects that use Numba. How do they use numba?"}
︠30ba6669-dd4d-4b9a-b49b-68d68b462aa2i︠
%md
Question 1

source: https://github.com/cython/cython/wiki/projects

1. Sage - Call useful methods at Cython speed (ex. Fast Hashable Class http://doc.sagemath.org/html/en/reference/misc/sage/misc/fast_methods.html)
2. Crux
3. Plasticity
4. GIPSY
5. PyYAML

These projects use Cython to get the functionality of Python and the speed of C (faster than pure Python)
︡aec933e0-a21e-46ee-a7f4-ef1429698712︡︡{"done":true,"md":"Question 1\n\nsource: https://github.com/cython/cython/wiki/projects\n\n1. Sage - Call useful methods at Cython speed (ex. Fast Hashable Class http://doc.sagemath.org/html/en/reference/misc/sage/misc/fast_methods.html)\n2. Crux\n3. Plasticity\n4. GIPSY\n5. PyYAML\n\nThese projects use Cython to get the functionality of Python and the speed of C (faster than pure Python)"}
︠ab0ebb67-32ca-49a3-86e4-0f0896c2c767si︠


︡cc782296-1252-4a2c-87e0-b041f270679d︡︡{"done":true}
︠f9c92a0a-5a3a-4be5-8a20-a4c364f81dadi︠
%md
Question 2

1. SciPy (https://www.scipy.org/)
2. PyTables (http://www.pytables.org/)
3. Pathomx (http://pathomx.org/)
4. NeuralTalk (https://github.com/karpathy/neuraltalk)
5. Veusz (http://freecode.com/projects/veusz)

Numpy is used for data collection of generic data that can be seamlessly utilized with many different data structures (source: http://www.numpy.org/)
︡a07fde58-e94b-4b08-bd12-f74553920379︡︡{"done":true,"md":"Question 2\n\n1. SciPy (https://www.scipy.org/)\n2. PyTables (http://www.pytables.org/)\n3. Pathomx (http://pathomx.org/)\n4. NeuralTalk (https://github.com/karpathy/neuraltalk)\n5. Veusz (http://freecode.com/projects/veusz)\n\nNumpy is used for data collection of generic data that can be seamlessly utilized with many different data structures (source: http://www.numpy.org/)"}
︠b75ebffe-99be-4b88-bd2e-45389dbe6acci︠
%md

Question 3

1. Numbas (https://github.com/numbas/Numbas)
2. numbagg (https://github.com/shoyer/numbagg)
3. numbavec (https://github.com/mvsaha/numbavec)

Numba is used to run mathematical processes faster than pure Python can.
︡d8b57f46-d31f-4757-91ac-483478190170︡︡{"done":true,"md":"\nQuestion 3\n\n1. Numbas (https://github.com/numbas/Numbas)\n2. numbagg (https://github.com/shoyer/numbagg)\n3. numbavec (https://github.com/mvsaha/numbavec)\n\nNumba is used to run mathematical processes faster than pure Python can."}
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
︠6dcc4be1-6aca-420c-aa3f-9de409370233s︠
def getSum(x):
    total = 0
    for n in range(1, x+1):
        total += n
    return total

%timeit getSum(100000)
%timeit getSum(1000000)
︡5d855890-43cd-492f-b2ea-3909ae454625︡︡{"stdout":"5 loops, best of 3: 43.2 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"5 loops, best of 3: 469 ms per loop"}︡{"stdout":"\n"}︡{"done":true}
︠9f643f97-d05c-4b8d-969d-4ddd8107faf5s︠
#make numbers python int
def getSum(x):
    total = int(0)
    for n in range(1, x+1):
        total += int(n)
    return total

%timeit getSum(100000)
%timeit getSum(1000000)
︡dcfdc2b9-857f-4e80-9c53-d19d182bb6d7︡︡{"stdout":"25 loops, best of 3: 16.7 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"5 loops, best of 3: 183 ms per loop"}︡{"stdout":"\n"}︡{"done":true}
︠f7c58f0f-d1ab-46f1-b536-1e3f42c6a08as︠
#roughly more than doubles the speed
︡219a128b-6735-430f-b318-c8db6f0503b2︡︡{"done":true}
︠fa2ce6c7-cc5b-470e-a68c-9e917b82773ds︠
#using numba
%python

import numba
@numba.jit
def getSum(x):
    total = int(0)
    for n in range(1, x+1):
        total += int(n)
    return total

%timeit getSum(100000)
%timeit getSum(1000000)
︡c5295b60-4bed-416b-a7fa-6069386ab6a5︡{"stdout":"5 loops, best of 3: 27.5 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"5 loops, best of 3: 329 ms per loop"}︡︡{"stdout":"5 loops, best of 3: 329 ms per loop"}{"stdout":"\n"}︡{"done":true}︡
︠e02961a9-649c-4414-8742-6846d22c36d7s︠
#numba doesn't make it faster
︡28a5d3d4-9968-46d7-95cc-fe145f2bbca8︡︡{"done":true}
︠8b1affbe-b8ef-47ce-b3a7-b83527e26a9cs︠
#using cython
%cython
import math
def getSum(x):
    total = int(0)
    for n in range(1, x+1):
        total += int(n)
    return total

︡97e55f76-b83e-4fa0-a808-d3ffc96da84f︡︡{"stdout":"Defined getSum, math"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/3583/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_Sxg74u_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_Sxg74u_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/raw/.sage/temp/compute7-us/3583/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_Sxg74u_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_Sxg74u_a_pyx_0.html"},"once":false}︡{"done":true}
︠447a6253-06e5-48d7-aa51-f4e1479f6c69s︠
%timeit getSum(100000)
%timeit getSum(1000000)
︡0955c1bf-064a-4319-808c-f16c50ca5395︡︡{"stdout":"125 loops, best of 3: 4.51 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"5 loops, best of 3: 55.3 ms per loop"}︡{"stdout":"\n"}︡{"done":true}
︠b03c8c7f-436d-446c-9d61-fa7478bdefeds︠
#adding type declarations
%cython
import math

def getSum(x):
    cdef long total=0
    for n in range(1, x+1):
        total += int(n)
    return total

︡7268b8d3-85a0-411c-942f-e83bf26b2806︡︡{"stdout":"Defined getSum, math"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/3583/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_DZn3br_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_DZn3br_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/raw/.sage/temp/compute7-us/3583/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_DZn3br_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_DZn3br_a_pyx_0.html"},"once":false}︡{"done":true}
︠b47e14aa-a6b9-4637-b8fa-6aadb3682ae1s︠

%timeit getSum(100000)
%timeit getSum(1000000)
︡32688975-1ab5-4c95-a9ac-dee80587645e︡︡{"stdout":"125 loops, best of 3: 4.36 ms per loop"}︡{"stdout":"\n"}︡{"stdout":"5 loops, best of 3: 56.4 ms per loop"}︡{"stdout":"\n"}︡{"done":true}
︠ec7870ea-a17b-454f-8071-a991b9c8e077s︠
#now not using a loop
def getSum(n):
    return  n * (n+1) / 2

%timeit getSum(100000)
%timeit getSum(1000000)
︡5a983ff2-dda0-4882-8751-478e96956308︡︡{"stdout":"625 loops, best of 3: 875 ns per loop\n"}︡{"stdout":"625 loops, best of 3: 1.02 µs per loop\n"}︡{"done":true}
︠bd531e46-7fe5-493d-a737-cf7fbcf2ac77s︠
#make numbers python int
def getSum(n):
    return  n * (n+1) / 2

%timeit getSum(int(100000))
%timeit getSum(int(1000000))
︡b37bffcb-0f42-4294-852a-2c6b29e3a837︡︡{"stdout":"625 loops, best of 3: 2.22 µs per loop\n"}︡{"stdout":"625 loops, best of 3: 2.2 µs per loop\n"}︡{"done":true}
︠12153943-65ec-4eed-a39a-6dff2bd37ec5s︠
#makes it slightly slower
︡d01d0dd5-d7b1-4192-a406-26e638146f37︡︡{"done":true}
︠016e568c-e322-4b0a-9179-0e39e0a5e91es︠
#using numba
%python

import numba
@numba.jit
def getSum(n):
    return  n * (n+1) / 2

%timeit getSum(100000)
%timeit getSum(1000000)
︡59848fda-b36f-47f0-b523-74711fad903e︡︡{"stdout":"625 loops, best of 3: 19.5 µs per loop"}︡{"stdout":"\n"}︡{"stdout":"625 loops, best of 3: 26.1 µs per loop\n"}︡{"done":true}
︠45ba124e-c5f6-414e-84fb-3e10374a9d68s︠
#numba made it slightly slower
︡143da6df-a19e-487d-a94e-3d2524d4e379︡︡{"done":true}
︠366e3b2b-3a51-4c56-a629-826b3c1eab66s︠
#using cython
%cython
import math

def getSum(n):
    return  n * (n+1) / 2
︡a9b55fe6-9be6-4f0b-b7a7-b668d29d6e88︡︡{"stdout":"Defined getSum, math"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/3583/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_rc_lFd_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_rc_lFd_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/raw/.sage/temp/compute7-us/3583/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_rc_lFd_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_rc_lFd_a_pyx_0.html"},"once":false}︡{"done":true}
︠22e2bd0f-4d95-45f0-bc98-3ea23e94b05as︠
%timeit getSum(int(100000))
%timeit getSum(int(1000000))
︡f0e79c79-1bb0-46a6-bb7c-5fc9a3d97ae8︡︡{"stdout":"625 loops, best of 3: 638 ns per loop\n"}︡{"stdout":"625 loops, best of 3: 613 ns per loop\n"}︡{"done":true}
︠58c929ce-898b-46b7-bd28-7dc045495157s︠
#add type declaration
%cython
import math

def getSum(n):
    cdef long total = n * (n+1) / 2
    return  total
︡f29f21be-de63-4ba4-a3de-68d854dd38cc︡︡{"stdout":"Defined getSum, math"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/3583/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_LHr9t3_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_LHr9t3_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/raw/.sage/temp/compute7-us/3583/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_LHr9t3_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_3583_dir_LHr9t3_a_pyx_0.html"},"once":false}︡{"done":true}
︠b77ac22b-0e3e-4080-8d5a-2fc6cde88b9cs︠
%timeit getSum(int(100000))
%timeit getSum(int(1000000))
︡b41d801f-6713-4075-966a-ddb2e7efa119︡︡{"stdout":"625 loops, best of 3: 301 ns per loop\n"}︡{"stdout":"625 loops, best of 3: 301 ns per loop\n"}︡{"done":true}
︠867fb8de-7a2d-4d84-9e0a-d5f7e2274948s︠
︡98f71e4c-8dfa-459a-b90e-3be4e6657928︡︡{"done":true}










︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-04-11
### William Stein

## **Lectures 7: Speed (part 1 of 3)**

Or... why slower is often faster.

### Plan:

- Monday: benchmarking, using numpy and other libraries to make code factors
- Wednesday: Cython
- Friday: Other performance optimization tools (e.g., numba, pypy, Psycho?, etc.?)

### Announcements

- Start the screencast!!!!  Unless you know for a fact otherwise, I forgot.
- TA office hours: Thursday
- "Virtual" office hours: email math480-2016-sage@googlegroups.com, wstein@uw.edu, or john.jeng5@gmail.com
- Type in a chat in any project -- the TA and I should see a notification and help you.
- Homework 2 will be collected at (or after) about 6pm tonight. Make sure your work is there, since recent days were a disaster (not any more!)
- Peer grading will happen.
- Note: filenames ending in ~ -- when updating an assignment the old files have a ~.  We updated today's assignment right after making it.
︡70e03e40-9a05-428f-83b3-b56d801d9744︡︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-04-11\n### William Stein\n\n## **Lectures 7: Speed (part 1 of 3)**\n\nOr... why slower is often faster.\n\n### Plan:\n\n- Monday: benchmarking, using numpy and other libraries to make code factors\n- Wednesday: Cython\n- Friday: Other performance optimization tools (e.g., numba, pypy, Psycho?, etc.?)\n\n### Announcements\n\n- Start the screencast!!!!  Unless you know for a fact otherwise, I forgot.\n- TA office hours: Thursday\n- \"Virtual\" office hours: email math480-2016-sage@googlegroups.com, wstein@uw.edu, or john.jeng5@gmail.com\n- Type in a chat in any project -- the TA and I should see a notification and help you.\n- Homework 2 will be collected at (or after) about 6pm tonight. Make sure your work is there, since recent days were a disaster (not any more!)\n- Peer grading will happen.\n- Note: filenames ending in ~ -- when updating an assignment the old files have a ~.  We updated today's assignment right after making it."}
︠236ac9aka-97a3-41fd-b9dc-6c8265f66221i︠
%md

This morning I woke up and read [on Hacker News](https://news.ycombinator.com/item?id=11469481)

> "Python is slow. Painfully slow. Slow as in "it stores the entire AST at runtime and lets you modify it while the program runs" slow. But it's also great at numerical computation with numpy. And it's enormously flexible (which is what makes it slow). And it's clean. It writes really well. For a quick mathematical processing program or website whose code needs to be legible, it's great." -- robert.stolarz@yandex.com

Response by somebody else:
> "Python doesn't store the entire AST at runtime. You can hook into the import process and modify code before it's compiled to bytecode. You can modify the bytecode at runtime but not any that's on the stack.  Python is also not all that slow, CPython is slow-ish but it's has effectively no optimizations at all. PyPy which has decent optimizations is actually fairly fast and getting faster with every release." -- DasIch
︡fc7db1bb-3f36-4dba-a776-0159f3faa683︡︡{"done":true,"md":"\nThis morning I woke up and read [on Hacker News](https://news.ycombinator.com/item?id=11469481)\n\n> \"Python is slow. Painfully slow. Slow as in \"it stores the entire AST at runtime and lets you modify it while the program runs\" slow. But it's also great at numerical computation with numpy. And it's enormously flexible (which is what makes it slow). And it's clean. It writes really well. For a quick mathematical processing program or website whose code needs to be legible, it's great.\" -- robert.stolarz@yandex.com\n\nResponse by somebody else:\n> \"Python doesn't store the entire AST at runtime. You can hook into the import process and modify code before it's compiled to bytecode. You can modify the bytecode at runtime but not any that's on the stack.  Python is also not all that slow, CPython is slow-ish but it's has effectively no optimizations at all. PyPy which has decent optimizations is actually fairly fast and getting faster with every release.\" -- DasIch"}
︠4071b698-b4f6-42e7-a487-2f2f3024474ei︠
%md
## Timing your code

Here's some code.  It is intentionally naive in various ways...
︡9c9de811-9c3d-4f19-9d2b-1197b7f4ec15︡︡{"done":true,"md":"## Timing your code\n\nHere's some code.  It is intentionally naive in various ways..."}
︠9428a912-d7ee-465b-890d-3dfd9eb096c9︠
def sin_sum(n):
    """
    Return the sum  sin(1) + sin(2) + ... + sin(n-1)
    """
    return float(sum(sin(m) for m in xrange(1,n)))
︡215b21b2-0a66-4c30-b13c-b73a9f1f80f3︡︡{"done":true}
︠d90c60ec-0c3a-4fae-9ecd-e862614a485cs︠
sin(1) + sin(2)
︡de41ef3b-ae39-4475-87d8-96f44edf01bd︡︡{"stdout":"sin(2) + sin(1)\n"}︡{"done":true}
︠f0ca33c1-932f-4be5-b290-19a7eb37b8e4︠
range(10)
︡ca812b2d-4170-4451-9dad-0298a09102fe︡︡{"stdout":"[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]\n"}︡{"done":true}
︠cab3b204-e482-429b-b26c-00b0713bf5fa︠
xrange(10^9)
︡80ee9cff-dfba-472d-91f7-f18a5dde2d58︡︡{"stdout":"xrange(1000000000)\n"}︡{"done":true}
︠ad33be37-82c9-4474-b8e8-e2e32d28da3bs︠
sin(0)
︡3c9d9958-ada1-4f3f-91e1-3574c7b299dc︡︡{"stdout":"0.9092974268256817\n"}︡{"done":true}
︠2d0a5966-fa32-4ba9-b36a-df88cd0d6edcs︠
float(sin(1 + 1))
︡f55a47f2-505b-492f-81c2-7775d7a86f36︡{"stdout":"0.9092974268256817\n"}︡{"done":true}︡
︠e2c37982-2b4c-41b5-97c5-9b180bd0f291s︠
sin_sum?
︡5371cd42-68b3-433a-af2f-a4b77ec92c9d︡
︠f3d241bc-9c4a-4003-8a35-ae80e83ae66ai︠
%md
Explain this code line by line:

- define function of one input
- Docstring
- sin(m) is the sage symbolic sin function
- `(sin(m) for m in range(n))` is like a list comprehension but it is "lazy" so it doesn't waste memory -- you can iterative over it though.
- `sum(...)` iterates over its input summing it up
- `float(...)` converts its input to a float


Throw out a mathematical question: Is there a simple formula for $\sum_{0< m\leq n} \sin(m)$ similar to the formula
$\sum_{0< m\leq n} m = \frac{n(n-1)}{2}$?
︡02051869-0fe3-47f9-a1d2-dabc80338833︡︡{"done":true,"md":"Explain this code line by line:\n\n- define function of one input\n- Docstring\n- sin(m) is the sage symbolic sin function\n- `(sin(m) for m in range(n))` is like a list comprehension but it is \"lazy\" so it doesn't waste memory -- you can iterative over it though.\n- `sum(...)` iterates over its input summing it up\n- `float(...)` converts its input to a float\n\n\nThrow out a mathematical question: Is there a simple formula for $\\sum_{0< m\\leq n} \\sin(m)$ similar to the formula\n$\\sum_{0< m\\leq n} m = \\frac{n(n-1)}{2}$?"}
︠7be23c02-2072-4ddd-a017-db317fb80cc6s︠
sin_sum(10000)  # this might feel slow if you try it!
︡0bec5735-0b07-4fcc-9388-5121cbc8918b︡{"stdout":"1.9395054106807317"}︡{"stdout":"\n"}︡︡{"stdout":"\n"}{"done":true}︡︡{"done":true}
︠3a0e55bb-4b3a-4833-8ffe-e4403b112022i︠
%md
- Is it slow?
- Or is the network (or SMC) just slow at sending the answer back?
- If it is slow, why?

There are many ways to **time execution of code:**

1. *Very naive:* use a stopwatch.  Start the code running and start a stopwatch on your phone or whatever. Look at the wall clock.
1. *Python:* use the `time` module, and prints
1. *Python:* use the `timeit` module, and better prints
1. In worksheets: `%time` and `%timeit`
1. In Sage: `cputime` and `walltime` functions.
1. Using `%prun` in a terminal (so create a terminal and type "sage").  This is an ipython feature.

And there are also many, many ways to **speed up code**...
︡bdea0599-9df6-47f9-b278-9fdee54dd86b︡︡{"done":true,"md":"- Is it slow?\n- Or is the network (or SMC) just slow at sending the answer back?\n- If it is slow, why?\n\nThere are many ways to **time execution of code:**\n\n1. *Very naive:* use a stopwatch.  Start the code running and start a stopwatch on your phone or whatever. Look at the wall clock.\n1. *Python:* use the `time` module, and prints\n1. *Python:* use the `timeit` module, and better prints\n1. In worksheets: `%time` and `%timeit`\n1. In Sage: `cputime` and `walltime` functions.\n1. Using `%prun` in a terminal (so create a terminal and type \"sage\").  This is an ipython feature.\n\nAnd there are also many, many ways to **speed up code**..."}
︠46ad2570-7b76-4d3d-98ce-6c28dfa6ed3as︠
# Let's time the function in all these ways.

# 1. seems like about a second....?

# 2. time module

import time
t = time.time()   # number of seconds since "the epoch" (exercise: when was that?)
sin_sum(10000)
print "elapsed time", time.time() - t

# nice thing -- you can put time.time()'s anywhere in your code -- sort of like print statements -- for debugging performance issues..
︡35216ed8-9750-439b-84e3-705304b10624︡︡{"stdout":"1.9395054106807317"}︡{"stdout":"\n"}︡{"stdout":"elapsed time 5.03362798691\n"}︡{"done":true}
︠2b9170a3-1dd5-411a-b23a-14fb18cc7beesi︠
%md 3. timeit module: see https://docs.python.org/2/library/timeit.html
︡8e163009-7432-4594-b13a-280ff3007cfa︡︡{"hide":"input"}︡{"md":"3. timeit module: see https://docs.python.org/2/library/timeit.html"}︡{"done":true}
︠ed4795f7-091c-4e47-9e5f-561f8e4605b7s︠
import timeit
timeit.timeit('sin_sum(1000)', number=50)
︡d12fc986-bda6-4476-a132-3cd98dc58d50︡︡{"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/sage/sage-6.10/local/lib/python/timeit.py\", line 236, in timeit\n    return Timer(stmt, setup, timer).timeit(number)\n  File \"/projects/sage/sage-6.10/local/lib/python/timeit.py\", line 201, in timeit\n    timing = self.inner(it, self.timer)\n  File \"<timeit-src>\", line 6, in inner\nNameError: global name 'sin_sum' is not defined\n"}︡{"done":true}
︠96b33c48-cc42-4496-9155-f83b12447aafs︠
timeit.timeit('2+3', number=10000)
# I'm not sure how to make this work... -- let's skip to sage's time/timeit, which basicaly makes the buitin timeit easy.
︡a3ef6266-1db3-4033-bca1-66571bf5c70f︡︡{"stdout":"0.0002300739288330078\n"}︡{"done":true}
︠5ecda444-2dad-4c82-9147-b722192d1065s︠
%time
sin_sum(10000)
︡f5854857-7c7b-40c2-893d-b6a941873564︡︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 945, in execute_with_code_decorators\n    code = code_decorator(code)\nTypeError: 'module' object is not callable\n"}︡{"done":true}
︠4e9aa281-e030-45b1-848e-4d9b2eef2794s︠
# the above doesn't work because we replace %time by doing "import time".... so do this:
reset('time')
︡80d5c341-3eb1-431c-ab4a-c10461b3546f︡︡{"done":true}
︠f49a85d3-0e14-4f17-a2e3-603647f326d5s︠
%time
sin_sum(10000)
︡8a43c6e8-9eaf-4f1c-9baf-f15054058872︡{"stdout":"1.9395054106807317"}︡{"stdout":"\n"}︡{"stdout":"CPU time: 4.98 s, Wall time: 5.12 s\n"}︡{"done":true}︡︡{"stdout":"\n"}︡{"stdout":"CPU time: 4.98 s, Wall time: 5.12 s\n"}︡{"done":true}
︠6101b5af-4857-4eea-b9c8-ed04a92e0c4ds︠
%timeit
sin_sum(1000)
︡e4f5565a-17de-453e-b51a-4577e029aa9b︡︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 945, in execute_with_code_decorators\n    code = code_decorator(code)\nTypeError: 'module' object is not callable\n"}︡{"done":true}
︠d6f67a36-3045-43e5-bb07-2d6d58b60bbc︠
reset('timeit')
%timeit
sin_sum(1000)  # runs many times so give it smaller input!
︡37b15ca4-ec2b-4bb4-8395-89eaed65f6cf︡︡{"stdout":"5 loops, best of 3: 79.8 ms per loop"}︡{"stdout":"\n"}︡{"done":true}
︠4dff5d3e-09a6-49e3-8418-c630aff5f09es︠
%timeit
sin_sum(100)
︡5e048696-2042-4c8e-8b4b-a7170d27e116︡︡{"stdout":"125 loops, best of 3: 4.49 ms per loop"}︡{"stdout":"\n"}︡{"done":true}
︠ff3a873e-d890-4de3-9f3c-3d9cc66db274i︠
%md
Use cputime and walltime
︡0e1f099c-e11f-42c6-af75-a9e980f85205︡︡{"done":true,"md":"Use cputime and walltime"}
︠9af5e461-352b-4257-862e-a2788e968941s︠
t = cputime()
sin_sum(10000)
print cputime(t)
︡b491a002-5d16-4d5e-8508-2699d7d27863︡︡{"stdout":"1.9395054106807317"}︡{"stdout":"\n"}︡{"stdout":"4.464\n"}︡{"done":true}
︠23770ea4-2f3a-4523-b4b9-5296849384a8s︠
t = walltime()
sin_sum(10000)
print walltime(t)
︡f3a2aabc-4e2e-43b0-98c6-156dcf948acc︡︡{"stdout":"1.9395054106807317"}︡{"stdout":"\n"}︡{"stdout":"4.84630799294\n"}︡{"done":true}
︠26aa5bd8-af7e-4d08-8cb6-cc3489702216i︠
%md
Discuss the difference between cpu and wall time.
︡26541c3e-f73c-4d15-88d8-15119bda68e3︡︡{"done":true,"md":"Discuss the difference between cpu and wall time."}
︠5cd7ffee-b1af-4f19-b12c-77acfb14c265︠

︡e3dedc50-5986-4c49-87a3-c61be4a1b239︡
︠4c4d29f4-83c3-4d1f-aa50-677ef02bb567i︠
%md
Using %prun in a terminal

- +New --> Terminal.
- type `sage` to start sage.
- Define the function.
- Use `%prun sin_sum(10000)`
︡8f29798c-1257-4a60-b19b-119768ec36cf︡︡{"done":true,"md":"Using %prun in a terminal\n\n- +New --> Terminal.\n- type `sage` to start sage.\n- Define the function.\n- Use `%prun sin_sum(10000)`"}
︠d354edf4-cb0f-486e-bd06-d2c4e63a3dda︠

︡5c1219ed-a52c-4a20-b348-755c24cfecd3︡
︠579b9ab1-6d8b-4ea4-bb6d-3802e1d60dc2︠

︡6c40d679-478c-442e-98c2-bbfda0c01c8e︡
︠88a86c83-9d8f-4b3d-9d6b-67eb16007431i︠
%md
**Exercise:** Try to make sin_sum faster and time the result in several ways.  Ideas for how:

- replace `m` by `float(m)`
- replace `sin` by `math.sin`
︡f6d184db-cb42-4b1e-9e40-557b86152932︡︡{"done":true,"md":"**Exercise:** Try to make sin_sum faster and time the result in several ways.  Ideas for how:\n\n- replace `m` by `float(m)`\n- replace `sin` by `math.sin`"}
︠57da5d98-a381-47de-be43-804a8b0a8cc6s︠
math.sin(4)
︡289b0241-d893-42b1-8e93-7a79f0a9368f︡︡{"stdout":"-0.7568024953079282\n"}︡{"done":true}
︠bce521be-27fd-4a6b-973c-54f59bbded61︠

︡00f8ace8-4193-469e-bf72-12551c0f6971︡
︠fe7b918b-6452-48ea-83d4-7a2df2270fcas︠
5/(2*10^(-3))
︡203e2c01-07b6-4740-884b-703f8bde85a4︡︡{"stdout":"2500\n"}︡{"done":true}
︠e35febed-1f8e-4308-865f-b04f3314254a︠

︠fc2ecc3c-f1cd-4b0c-82df-c0ad33e4e02a︠

︠a9e64b2c-d93e-4873-a233-6fb9ec5f327a︠
def sin_sum(n):
    """
    Return the sum  sin(1) + sin(2) + ... + sin(n-1)
    """
    return float(sum(sin(m) for m in xrange(1,n)))

def sin_sum(n):
    """
    Return the sum  sin(1) + sin(2) + ... + sin(n-1)
    """
    return float(sum(math.sin(m) for m in xrange(1,n)))













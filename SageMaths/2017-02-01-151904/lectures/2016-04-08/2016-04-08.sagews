︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-04-08
### William Stein

## **Lectures 6: Dicts and Classes (Python 3/3)**

- My morning sucked: massive SageMathCloud problems.  You can turn in your homework on Monday at 6pm rather than Friday at 6pm.
- Screencast

︡70e03e40-9a05-428f-83b3-b56d801d9744︡︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-04-08\n### William Stein\n\n## **Lectures 6: Dicts and Classes (Python 3/3)**\n\n- My morning sucked: massive SageMathCloud problems.  You can turn in your homework on Monday at 6pm rather than Friday at 6pm.\n- Screencast"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md
## Another important data structure: the Python dictionary

A Python dictionary is the Python version of what computer scientists might call an "associative array".

It's what us mathematicians call a "function" (from one finite set to another).  Except, like a list, it can be modified (to make another function).
︡14f4f227-7e2f-4233-81ca-3ec3dee9973e︡︡{"done":true,"md":"## Another important data structure: the Python dictionary\n\nA Python dictionary is the Python version of what computer scientists might call an \"associative array\".\n\nIt's what us mathematicians call a \"function\" (from one finite set to another).  Except, like a list, it can be modified (to make another function)."}
︠24b6a5ad-73f2-404b-82b6-c118f6ce4cces︠
def foo(n):
    return random()
︡82a612b9-2100-44f8-a7b8-45fce91ea8ca︡︡{"done":true}
︠1745df9b-c080-4242-95b9-d47d5c3e7c0es︠
foo(5)
︡9127953d-0c11-4e44-9b5e-630640283bea︡︡{"stdout":"0.5057163160541822\n"}︡{"done":true}
︠925acc57-7549-4e1d-aaae-bc39079ba8fds︠
foo(5)
︡754679fd-8816-464f-af4e-51ab6e68602c︡︡{"stdout":"0.2638328061849261\n"}︡{"done":true}
︠8ffe6908-b74b-47e8-8cd9-fcdaf609fdd0s︠
d = {5:25, 10:100, 3:8, 3:'another value'}
︡1dce6800-8e64-41b6-971e-ce741fa1b72e︡︡{"done":true}
︠3cf1ddfc-81da-49f8-a3e7-134484d6dc10s︠
d
︡aa70b8ce-75cd-4f99-966f-773e7037d533︡︡{"stdout":"{10: 'foo bar', 3: 'another value', 5: 25}\n"}︡{"done":true}
︠1f1daabd-5993-46d7-a09a-5a55e1f6d77cs︠
d[10]
︡056d71d5-3469-471c-8866-b81702001d24︡︡{"stdout":"100\n"}︡{"done":true}
︠ed7eabbc-b377-4a8d-a68f-add83b9952ccs︠
d[10] = 'foo bar'
︡24cdb5f4-ce25-4103-82b7-34ae8f5c1b58︡︡{"done":true}
︠97ee6a79-f241-42e4-b5cc-8396a04576b8s︠
d[10]
︡abf36dbd-89ae-44bb-b1a2-0d862d2ab05f︡︡{"stdout":"'foo bar'\n"}︡{"done":true}
︠18c7f593-076e-4ee0-ac59-6e9e8a2b3801s︠
d[5]
︡119775a0-0e70-4fc9-b81f-b8a69c1a9e71︡︡{"stdout":"25\n"}︡{"done":true}
︠eb2af520-e927-43e1-ae15-f0e001a58840s︠
d[10]
︡181940a4-acda-48b3-810f-08a24ce6a22d︡︡{"stdout":"100\n"}︡{"done":true}
︠7f9489d4-664c-441c-b378-e905e9b0ea8cs︠
d[3]
︡854de082-509f-45f7-8b8f-4b3e07762c4e︡︡{"stdout":"8\n"}︡{"done":true}
︠159813f9-381b-46bd-a8e2-19c07ca019e1s︠
d[7]  # should fail -- since we didn't say what 7 maps to.
︡4335c965-53f1-4ea0-ac9d-14bdbd52e152︡︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nKeyError: 7\n"}︡{"done":true}
︠12f92a64-769e-40ca-91f0-1c6eb64f1579s︠
try:
    d[7]
except KeyError:
    print "there was an errror"
︡71d80bdb-9e43-46bb-b270-ac68f5ac128f︡︡{"stdout":"there was an errror\n"}︡{"done":true}
︠dd9611e8-6142-4752-975c-8bad8375eb6di︠
%md
The keys (inputs) of a Python dictionary can be any object x in Python where `hash(x)` doesn't give an error.

In practice, `hash(x)` is supposeed to work if and only if `x` is **immutable**, i.e., really can't change.
︡95bd0d19-279e-4cce-901d-0b255a9194e9︡︡{"done":true,"md":"The keys (inputs) of a Python dictionary can be any object x in Python where `hash(x)` doesn't give an error.\n\nIn practice, `hash(x)` is supposeed to work if and only if `x` is **immutable**, i.e., really can't change."}
︠5d843b8c-c518-427d-8f98-874b9318270bs︠
hash(7)
︡758b7c3a-1418-4647-906e-e2c08d61b305︡︡{"stdout":"7\n"}︡{"done":true}
︠d3fc570b-f451-46f1-b719-3d29f753097bs︠
w = [2,3]
hash(w)   # better not work!
︡e822b04c-66a9-4959-8e2d-761db190508d︡︡{"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nTypeError: unhashable type: 'list'\n"}︡{"done":true}
︠1651c145-4a94-4167-8637-d960f3286e7di︠
%md
Tuples -- I mentioned them very quickly last time.

Tuples are sort of like lists, but you can change the objects they point to or the number of things they point to.

Hence... **they have a chance to be immutable:**
︡cd8f5601-95e3-4a67-aa1c-7cc1ed4b3d0d︡︡{"done":true,"md":"Tuples -- I mentioned them very quickly last time.\n\nTuples are sort of like lists, but you can change the objects they point to or the number of things they point to.\n\nHence... **they have a chance to be immutable:**"}
︠629db280-8471-4075-9a4b-024a42731b2cs︠
d = {5:'a',   [2,3]:5}
︡96dc2173-efb9-4484-a0c8-1bda6455e744︡︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nTypeError: unhashable type: 'list'\n"}︡{"done":true}
︠d5c281f5-49d8-4bd7-b00e-527bd9a8a1ef︠
x = [2,3]
d[x]
︠893a8827-7fdd-4df1-a191-d31bdd0fc83fs︠
hash([2,3])
︡c917ff7c-f0b5-45f6-9103-35fbfbf1b17d︡︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nTypeError: unhashable type: 'list'\n"}︡{"done":true}
︠7e53d595-f31c-43a4-b7fe-0d1d45c88496s︠
w = (2,3)
hash(w)    # a tuple where each thing in the tuple is immutable
︡1c6027bb-885b-48d2-a51a-6a1f80b78ec2︡︡{"stdout":"3713082714463740756\n"}︡{"done":true}
︠4f50157b-145f-40a3-86c9-dba986cd5f9b︠
d = {(2,3):5,   (7,19): 26}   # you can use anything immutable as the inputs (or keys or domain)
d[(7,19)]
︡4e06ecf4-f35d-4fb0-8c01-4a5989223ddd︡︡{"stdout":"26\n"}︡{"done":true}
︠18608d49-189f-4eb4-b3b0-1d1f8d986fd2i︠
%md
Not all tuples are immutable.  For example:
︡1080ca5b-c591-4b96-bf2a-e16cc496c68b︡︡{"done":true,"md":"Not all tuples are immutable.  For example:"}
︠070ad738-e402-4f09-9ce9-4e978fd9ba65s︠
w = ([2,3], 5)   # a tuple where first thing is NOT immutable
hash(w)
︡b62c1cf1-90f9-405c-88e5-5a825fa05067︡︡{"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nTypeError: unhashable type: 'list'\n"}︡{"done":true}
︠c3046dd4-c2d1-4635-a276-fcfb504ec790s︠
id(w[0])
︡37944be3-609c-46ae-a136-b093aeb99093︡︡{"stdout":"140218864891664\n"}︡{"done":true}
︠d350b0a3-07f6-4911-a703-6a9af962b8c9s︠
w[0].append("Sage")
w
︡ff073fdd-9a8b-4903-a1c1-1ab425f90194︡︡{"stdout":"([2, 3, 'Sage'], 5)\n"}︡{"done":true}
︠cd27f405-4b25-40b9-abe7-7927aaf777a6s︠
id(w[0])
︡396c46f5-b1d9-47a2-8943-464a7c8b0a73︡︡{"stdout":"140218864891664\n"}︡{"done":true}
︠dcaa834d-9cc8-4db7-83de-f50b6cebed84i︠
%md

**Exercise:** Which of the following are immutable, i.e., `hash`-able, so they can be used as keys for a dictionary?

- the string "Foo"

- the empty list []

- the number 3.14

- the dictionary {7:10, 3:8}

- the tuple ('foo', 'bar')

Make a dictionary that has all the immutable objects above as keys... and anything you want (hashable or not) as values.
︡7493f29b-0539-4c27-822a-e621603571bd︡︡{"done":true,"md":"\n**Exercise:** Which of the following are immutable, i.e., `hash`-able, so they can be used as keys for a dictionary?\n\n- the string \"Foo\"\n\n- the empty list []\n\n- the number 3.14\n\n- the dictionary {7:10, 3:8}\n\n- the tuple ('foo', 'bar')\n\nMake a dictionary that has all the immutable objects above as keys... and anything you want (hashable or not) as values."}
︠d8249bb0-71be-48d1-9a26-fc1ee9e68810︠
hash("Foo")   # no error <===> it's immutable
︡a4198fa5-09b5-48fc-b630-3510b703e095︡︡{"stdout":"-5036909580522842981\n"}︡{"done":true}
︠87c2b980-c0c7-45d0-8f2e-677788776e83s︠

d = {"Foo":(1,2), 3.14:5}  # IS A DICTIONARY


︡06228e04-830e-421f-bc03-49dc40233af3︡︡{"done":true}
︠428a7395-6738-4fba-85ca-888522b98c33s︠
type(d)
︡a256cee4-f841-4906-a3ac-93525dfcd68e︡︡{"stdout":"<type 'dict'>\n"}︡{"done":true}
︠f3956db1-2249-4397-b71e-a398457064ffs︠
d
︡a2d05563-6bcc-4719-84c2-78b26c24ac43︡︡{"stdout":"{'Foo': (1, 2), 3.14000000000000: 5}\n"}︡{"done":true}
︠08e50a25-2b3c-4541-a4a3-21f09c940b0cs︠
hash(d)

︡a64e186d-37ec-4afd-bf9f-4843d88d619c︡︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nTypeError: unhashable type: 'dict'\n"}︡{"done":true}
︠57b6f2b5-2a9a-4a85-a030-dfe206d4ad15i︠
%md
Here's a dictionary with a *function* as a value:
︡0de673e0-255e-417e-b039-70f455483798︡︡{"done":true,"md":"Here's a dictionary with a *function* as a value:"}
︠c81d36d9-3764-493a-b8bc-946d9339eb1as︠
def length(self):
    return sqrt(self['x']^2 + self['y']^2)

self = {'x':10,  'y':25,  'length':length}
self
︡51564694-a543-4fc7-b097-8e607826b278︡︡{"stdout":"{'y': 25, 'x': 10, 'length': <function length at 0x7f8740436ed8>}\n"}︡{"done":true}
︠d34000e6-8c11-4050-bee7-49b8a531cd45s︠
self['length'](self)
︡f884ae2d-822d-422b-b177-57b50cee35ca︡︡{"stdout":"5*sqrt(29)\n"}︡{"done":true}
︠f683b6b3-a9b6-4115-8574-38fafc2b5f54i︠
%md
Using dicts with data and functions you could model objects and work with them.

But the notation is very awkward!

Python classes do much the same thing, with vastly nicer notation!
︡a2252da7-8e39-4c81-a7e9-161a73b672e7︡︡{"done":true,"md":"Using dicts with data and functions you could model objects and work with them.\n\nBut the notation is very awkward!\n\nPython classes do much the same thing, with vastly nicer notation!"}
︠352e986e-5321-4508-99ca-def6711b7a77︠

︠f4dd5f00-1a75-4cc5-9eca-2d84a91d360bi︠
%md
## Python Classes

Python classes let you easily create custom Python objects.  They are a fantastic way of organizing math-related code.

Example:
︡82badfc5-4b7c-4e83-a4b1-c848d949d537︡︡{"done":true,"md":"## Python Classes\n\nPython classes let you easily create custom Python objects.  They are a fantastic way of organizing math-related code.\n\nExample:"}
︠0b2d4358-f2c8-481f-a4d7-a71311a2a597︠
class Vector:
    def __init__(self, x, y):
        self.x = x
        self.y = y
        print "I just initialized myself"
    def length(self):
        print "hi this is length"
        return sqrt(self.x^2 + self.y^2)
    def __add__(self, right):
        return Vector(self.x+right.x, self.y + right.y)  # change to Vector3
    def __repr__(self):
        return "William's vector (%s, %s)"%(self.x, self.y)

︡963d5a91-12ee-448a-bef8-c9a42da0cd89︡︡{"done":true}
︠3f20e2d3-69cd-42f5-9373-4c52dd8d414as︠
v = Vector(e, pi)
print v
︡9ac85e0f-a0af-44ef-b6e2-cd7aa0f30acb︡︡{"stdout":"I just initialized myself\n"}︡{"stdout":"William's vector (e, pi)\n"}︡{"done":true}
︠153dd7d9-12cc-4bde-b875-1ce0d4232bd5s︠
v.length()
︡9a746501-abaf-4198-865e-7f4bea3e8738︡︡{"stdout":"hi this is length\nsqrt(pi^2 + e^2)\n"}︡{"done":true}
︠c459adf0-9eba-482a-b9a1-f7bf1e11c66bs︠
v + v
︡965c35d6-3046-407d-b358-4616d65a45b3︡︡{"stdout":"The Vector (2*e, 2*pi)\n"}︡{"done":true}
︠0997ba1a-5a90-4356-988f-755ac0ac3355s︠
v.__dict__
︡04593904-915f-4122-84e5-3ed135026f76︡︡{"stdout":"{'y': pi, 'x': e}\n"}︡{"done":true}
︠13e278cd-28eb-48ca-a6b1-7ec8ccf1ca1di︠
%md

**Exercise:**

Copy the above code and make a class Vector3 that models a vector in 3-dimensional space.

If you have time, also include a `__sub__` method, to subtract one vector from another, and test that v - w works.
︡4f8204a4-4314-4a77-b634-bb1bd4e86d2d︡︡{"done":true,"md":"\n**Exercise:**\n\nCopy the above code and make a class Vector3 that models a vector in 3-dimensional space.\n\nIf you have time, also include a `__sub__` method, to subtract one vector from another, and test that v - w works."}
︠e997cc80-9b13-4aff-b8bb-2b1342f66dbb︠
v.cross_product(w)











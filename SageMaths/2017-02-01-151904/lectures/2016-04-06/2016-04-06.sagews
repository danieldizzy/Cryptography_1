︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-04-06
### William Stein

## **Lectures 5: Basic Python Data Structures: lists, tuples, dicts**

Misc:

1. The TA has the flu, so his office hours tomorrow probably canceled (or unsafe).
1. Homework due Friday at 6pm.  I've almost finished implementing peer grading :-)
1. Start the screencast!!!!
︡70e03e40-9a05-428f-83b3-b56d801d9744︡︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-04-06\n### William Stein\n\n## **Lectures 5: Basic Python Data Structures: lists, tuples, dicts**\n\nMisc:\n\n1. The TA has the flu, so his office hours tomorrow probably canceled (or unsafe).\n1. Homework due Friday at 6pm.  I've almost finished implementing peer grading :-)\n1. Start the screencast!!!!"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8o︠


︡57bb173f-c24c-4516-b67e-7ad3296461fb︡
︠721216c9-0a2c-4bf1-bb66-5501dc002adfi︠
%md
(if we are out of time, will start this on )

## List Comprehensions

A clean way to make a list of things.  You might then iterative over this list, or do something else with it.  Very
handy in mathematics.

    [expression(x) for x in [list]]

    [expression(x) for x in [list] if something(x)]

    [expression(x, y) for x in [list] for y in [another list] if something(x, y)]

etc.


︡0a0b09e3-6626-4092-8c85-edf1287ce1a8︡︡{"done":true,"md":"## List Comprehensions\n\nA clean way to make a list of things.  You might then iterative over this list, or do something else with it.  Very\nhandy in mathematics.\n\n    [expression(x) for x in [list]]\n\n    [expression(x) for x in [list] if something(x)]\n\n    [expression(x, y) for x in [list] for y in [another list] if something(x, y)]\n\netc."}
︠9984fd45-2498-463c-8427-953cd13c5e08o︠
[n for n in range(-3,5)]  # you can give a start value for range
︡81c424c9-cba5-4b82-a8e3-9723d82e05b1︡︡{"stdout":"[-3, -2, -1, 0, 1, 2, 3, 4]\n"}︡{"done":true}
︠ca1d6270-bf13-4ef6-b005-c9d39613532fo︠
[n*2 for n in range(10)]
︡78d5484d-9ce6-40ff-b3cf-28830f6baef8︡︡{"stdout":"[0, 2, 4, 6, 8, 10, 12, 14, 16, 18]\n"}︡{"done":true}
︠20100fe2-01d9-4fb6-a855-af201a600b67o︠
[n for n in range(20) if n%2 == 0]
︡ba72c559-e6bf-450b-9908-007f88dd5e4a︡︡{"stdout":"[0, 2, 4, 6, 8, 10, 12, 14, 16, 18]\n"}︡{"done":true}
︠54d591cf-4dc4-483b-881a-f170b24622f8o︠
[[x,y] for x in range(4) for y in ['X','Y','Z'] if x%2 == 0]
︡5646b9bb-9dd5-4f67-9240-7414e0f84010︡︡{"stdout":"[[0, 'X'], [0, 'Y'], [0, 'Z'], [2, 'X'], [2, 'Y'], [2, 'Z']]\n"}︡{"done":true}
︠8c8b9786-8444-4140-a26a-204fbba54caei︠
%md
You can typically rewrite a list comprehension as a for loop (or nested for loops).
︡df70a5e5-154e-4d3c-9007-6a09306fd01d︡︡{"done":true,"md":"You can typically rewrite a list comprehension as a for loop (or nested for loops)."}
︠528c694f-8817-44d0-877b-474dbf805133︠
v = []
for n in range(10):
    v.append(n)
print v
︡7af5c5ef-cb92-4fd5-9b00-bd346da403c3︡︡{"stdout":"[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]\n"}︡{"done":true}
︠b7c6b18f-70ba-43e4-a639-24d6b74c499ao︠

︡dfcdd6c8-4e9b-430c-b929-4e3c9ec152e4︡
︠495356a0-f984-48b5-af28-5cdc289ea5aei︠
%md
**KEY INSIGHT:** The order of the for loops and the if are *exactly* the same as in the list comprehension.
︡fe02958c-3a86-427b-9b73-0a4be4b1250e︡︡{"done":true,"md":"**KEY INSIGHT:** The order of the for loops and the if are *exactly* the same as in the list comprehension."}
︠1e48ec4d-5c32-4114-8b5d-d65758c0be57︠
v = []
for x in range(4):
    for y in ['X','Y','Z']:
        if x % 2 == 0:
            v.append([x,y])
print v
︡e37c9fca-cde2-4fdc-b99d-7f63e913f57b︡︡{"stdout":"[[0, 'X'], [0, 'Y'], [0, 'Z'], [2, 'X'], [2, 'Y'], [2, 'Z']]\n"}︡{"done":true}
︠235bc798-16d9-40ca-9133-9adde9eb256fo︠

︡b8144583-a530-42ae-94ae-6ed654d4ba3e︡
︠6606fade-60ea-432a-9266-98b7e2ded826︠
laksdjflasjdfjasd = 399393
show_identifiers()
︡fe3fc680-6f17-44f4-a5e2-c12ff486557b︡︡{"stdout":"['dynamic', 'hide', 'julia', 'md', 'smc', 'magics', 'mediawiki', 'sage_salvus', 'typeset_mode', 'hideall', 'fortran', 'fork', 'reset', 'time', 'perl', 'default_mode', 'sh', 'sage_server', 'wiki', 'require', 'show', 'checkbox', 'timeit', 'sage_chat', 'prun', 'plot3d_using_matplotlib', 'runfile', 'input_box', 'pretty_print_default', 'ruby', 'input_grid', 'range_slider', 'go', 'capture', 'help', 'pandoc', 'script', 'interact', 'selector', 'clear', 'restore', 'color_selector', 'javascript', 'load', 'coffeescript', 'pylab', 'cython', 'button', 'cell', 'exercise', 'raw_input', 'slider', 'sage_eval', 'view', 'delete_last_output', 'python', 'auto', 'text_control', 'laksdjflasjdfjasd', 'python3', 'var']\n"}︡{"done":true}
︠ba10778d-8534-45ae-8eec-59dd6ba230e7o︠

︡c1047c90-e109-4525-93b9-6d22702eb584︡
︠a59200a7-6d24-45ff-acfc-23a2289c0e84i︠
%md
**Exercise now:**

Construct the following list using a list comprehension and the if/else exercise function `my_sign` you wrote above:

    [[-3,'negative'], [-2,'negative'], [-1,'negative'], [0,'zero'], [1,'positive'], [2,'positive'], [3,'positive']]

<br>
If you have time, do the same but using a for loop.
︡b11b5d55-6f11-45a2-8006-eb681c1b0351︡︡{"done":true,"md":"**Exercise now:**\n\nConstruct the following list using a list comprehension and the if/else exercise function `my_sign` you wrote above:\n\n    [[-3,'negative'], [-2,'negative'], [-1,'negative'], [0,'zero'], [1,'positive'], [2,'positive'], [3,'positive']]\n\n<br>\nIf you have time, do the same but using a for loop."}
︠38a09b8a-3522-4a3b-aa11-fed58e3ebbceo︠

︡c80979c0-00dd-42b7-bd89-9c2b993b97fa︡
︠ef718be2-7044-4515-a2b0-79f47190fe2ci︠
%md
## Python Lists

**WARNING:** Python lists are *SUBTLE* due to references.

A Python list is a an ordered sequence of references to Python objects.   And assignment in Python is copy by reference.

This is totally different than how things work with, e.g., MATLAB.

Consider first this:
︡07f8b0b2-ff23-4d1a-99b0-7c2279364cb3︡︡{"done":true,"md":"## Python Lists\n\n**WARNING:** Python lists are *SUBTLE* due to references.\n\nA Python list is a an ordered sequence of references to Python objects.   And assignment in Python is copy by reference.\n\nThis is totally different than how things work with, e.g., MATLAB. \n\nConsider first this:"}
︠9b733020-ecb9-4b1c-aaaf-0c840c63a3aa︠
a = [1,2,3]
b = a
b[0] = 5
print "a = ", a
print "b = ", b
︡ed200bec-2c91-4b0b-a6f3-b5276e95c57e︡︡{"stdout":"a =  [5, 2, 3]\n"}︡{"stdout":"b =  [5, 2, 3]\n"}︡{"done":true}
︠66b01fb9-44ac-490a-b831-a6f371deba1d︠
id(a)
︡0aef6e03-8e3e-4957-b38a-3983d429f039︡︡{"stdout":"139885298620104\n"}︡{"done":true}
︠8c0e9ff3-9824-4ef6-a2f5-aed57a632b46︠
id(b)
︡78cfc8eb-d064-4a7a-9a8d-19899ef65b6e︡︡{"stdout":"139885298620104\n"}︡{"done":true}
︠a3b2674e-b759-4cde-b497-6e9e49febd4di︠
%md
And here is what happens in MATLAB, actuallyOctave is a free clone of matlab (1-based and copy by value):
︡b4a491b2-d4cc-49d6-bb42-bb8b51fc00a5︡︡{"done":true,"md":"And here is what happens in MATLAB, actuallyOctave is a free clone of matlab (1-based and copy by value):"}
︠35a3380a-6ade-4dab-a183-7a5d581ca724︠
%octave
a = [1,2,3];
b = a;
b(1) = 5;
a
b
︡878ae35b-1085-4a0d-9c83-af3478b5045e︡︡{"stdout":"\n\n\na =\n\n 1 2 3\n\n\nb =\n\n 5 2 3\n\n"}︡{"done":true}
︠1c62e875-d2ee-4019-af42-8c3225d49ad6i︠
%md
And R (1-based and copy by value):
︡5458e9ea-28ef-46da-affc-87aa273071ea︡︡{"done":true,"md":"And R (1-based and copy by value):"}
︠8bc307ad-695b-4d78-a8a0-e87872ae4e87︠
%r
a <- c(1,2,3);
b <- a;
b[1] = 5;
a
b
︡9d36a5a2-dec1-4e4f-bf0f-32ddd43acb12︡{"stdout":"[1] 1 2 3\n[1] 5 2 3"}︡{"done":true}︡
︠fa3b3e9c-01c0-4ced-a5eb-7c99425472d5o︠

︡2b7e290e-4621-4aaa-921b-82832d463a55︡
︠6630ceb2-92a4-4dae-90df-9ba256628e4bi︠
%md
Here's what happens in Javascript (0-based and copy by reference):
︡de4a47ac-423d-4737-94e4-ffd4f8f58d80︡︡{"done":true,"md":"Here's what happens in Javascript (0-based and copy by reference):"}
︠43487cbb-28d8-4054-b0dc-7da0b57c075f︠
%javascript
a = [1,2,3];
b = a;
b[0] = 5;
print("a =",a)
print("b =",b)
︡e4d5c10a-7315-4ad5-baa1-c7ad91376523︡︡{"done":true,"javascript":{"code":"a = [1,2,3];\nb = a;\nb[0] = 5;\nprint(\"a =\",a)\nprint(\"b =\",b)"}}
︠76f0cfe9-88e6-453e-a676-9f1c0f22ffd6i︠
%md
And in Julia (1-based and copy by reference!):
︡342e784f-7ebb-484c-89ff-646db8f175e2︡︡{"done":true,"md":"And in Julia (1-based and copy by reference!):"}
︠305641ca-5daf-4aea-a458-3adaf9016301︠
%julia
a = [1,2,3];
b = a;
b[1] = 5;
println("a =", a, "\nb =", b);
︡8ae45661-d043-41d2-98d7-d47030ecae25︡︡{"stdout":"a =[5,2,3]\r\nb =[5,2,3]"}︡{"done":true}
︠e05e9a0b-0150-4127-9b95-3438f61bcafdi︠
%md
The point is that different programming languages make very subtle and different design choices.  And that's all
they are -- choices.   One choices really is better for some purposes and worse for other purposes.
︡ec0bc601-4b1a-4046-89e2-a73524445a39︡︡{"done":true,"md":"The point is that different programming languages make very subtle and different design choices.  And that's all\nthey are -- choices.   One choices really is better for some purposes and worse for other purposes."}
︠f3338110-4642-4d98-b1ab-c900e6484ed3︠

︡4cdcc9a8-732e-42b2-b936-83b830ead03e︡
︠806454ac-e594-4754-8c2f-f09406bca880i︠
%md

The copy by reference choice of Python makes lists potentially subtle. For example:
︡476778da-9921-49bb-94f4-321d3cb1ae1d︡︡{"done":true,"md":"\nThe copy by reference choice of Python makes lists potentially subtle. For example:"}
︠b27ae082-bffc-44b2-8016-c006706a1fc0s︠
v = [1,2,3]
w = [v, v, [1,2,3]]
w
︡caf0db56-9b9b-49df-bf4a-3e72fc49b8d5︡︡{"stdout":"[[1, 2, 3], [1, 2, 3], [1, 2, 3]]\n"}︡{"done":true}
︠5835894b-a538-4e81-8b19-5fc1588b8384s︠
w[0][0] = 'sage'
︡24a34506-bb09-4b5b-91dd-a065839de294︡︡{"done":true}
︠b3d251f7-e71c-48e1-a42f-75fa1f6cbd1bi︠
%md
Now **what the heck** is w equal to?  (Wait until lots of people in class think this through.)
︡3c99292f-71aa-4a93-8609-a4329268bed7︡︡{"done":true,"md":"Now **what the heck** is w equal to?  (Wait until lots of people in class think this through.)"}
︠d7ba24b2-1414-4561-8808-80cb6bc98812s︠
print w
︡e1259ef4-950a-4d4c-91cd-04908a4112ff︡︡{"stdout":"[['sage', 2, 3], ['sage', 2, 3], [1, 2, 3]]\n"}︡{"done":true}
︠e7b2222e-e17d-4d2e-9689-fec1f114c03es︠
[id(x) for x in w]
︡4887f0cf-349c-409e-9a6b-c54a6004885a︡︡{"stdout":"[139885300265904, 139885300265904, 139885298619168]\n"}︡{"done":true}
︠ee32f449-2170-4d29-b3ad-dfec38789a05i︠
%md
**Moral:**
Just because something prints out at `[[1, 2, 3], [1, 2, 3], [1, 2, 3]]` doesn't mean you know what that something is!
In Python, things can be very subtle.

> **Don't judge an object by its cover (how it prints).**

If you don't get this point, you might hate Python.  If you do, you might start to see huge power and flexibility in
what Python offers... and understand why Python might be the most popular programming language in data science, which is itself
a very popular emerging field.
︡1b8f6962-c22d-4a1a-b2e9-af448a85bc10︡︡{"done":true,"md":"**Moral:**\nJust because something prints out at `[[1, 2, 3], [1, 2, 3], [1, 2, 3]]` doesn't mean you know what that something is!\nIn Python, things can be very subtle.  \n\n> **Don't judge an object by its cover (how it prints).**\n\nIf you don't get this point, you might hate Python.  If you do, you might start to see huge power and flexibility in\nwhat Python offers... and understand why Python might be the most popular programming language in data science, which is itself\na very popular emerging field."}
︠efc41ab5-f6b8-48de-ae60-cc302193f1e5i︠
%md
Shallow and deep copies.

Let's try the copy module from Python's standard library: https://docs.python.org/2/library/
︡5a974d89-26e8-497b-b7e4-0ee6cd0f7377︡︡{"done":true,"md":"Shallow and deep copies.\n\nLet's try the copy module from Python's standard library: https://docs.python.org/2/library/"}
︠27303a68-484b-40d9-80f7-3702e0780490s︠
import copy  # this is how you import a module in Python
v = [1,2,3]
w = [v, v, [1,2,3]]
w1 = copy.copy(w)   # how to use a function defined in a module
w1[0][0] = 'hi'
print "w1 = ", w1
print "w  = ", w    # not much of a copy!!!  It just copies the top level references

︡c29779d9-c184-40f5-9207-7a7cf8830d22︡︡{"stdout":"w1 =  [['hi', 2, 3], ['hi', 2, 3], [1, 2, 3]]\n"}︡{"stdout":"w  =  [['hi', 2, 3], ['hi', 2, 3], [1, 2, 3]]\n"}︡{"done":true}
︠7510adef-d7c6-4c90-bde4-6179f71d301d︠
copy.
︠565f9643-d97b-477a-9a13-413ac3c3144do︠
# Question: will this change w?
w1[0] = 'hi'
print w   # what do you expect
︡9bb64c99-7c76-4913-95c3-fb7471c69eb2︡
︠90a77d1a-4272-4428-a6ea-ed3cd76d3a82s︠
# To really copy, use deepcopy:
import copy  # this is how you import a module in Python
v = [1,2,3]
w = [v, v, [1,2,3]]
w1 = copy.deepcopy(w)   # uses more memory; causes more work -- and that's why we want options
w1[0][0] = 'hi'
print "w1 = ", w1
print "w  = ", w    # yep, not touched by changing w
︡59c01341-1b01-4e11-9cd4-5cd8ebc5886a︡︡{"stdout":"w1 =  [['hi', 2, 3], ['hi', 2, 3], [1, 2, 3]]\n"}︡{"stdout":"w  =  [[1, 2, 3], [1, 2, 3], [1, 2, 3]]\n"}︡{"done":true}
︠d14394c6-b9a2-409f-8a7c-537b51fa75d0i︠
%md
**MORAL:** Python is a real programming language designed by software engineers. It's not a special-purpose
math-only language, and it respects deeper, and more powerful, subtle (and possibly confusing)
ideas from programming.
︡8ccdc402-1dc4-4116-9cc8-1e477ab5e5be︡︡{"done":true,"md":"**MORAL:** Python is a real programming language designed by software engineers. It's not a special-purpose\nmath-only language, and it respects deeper, and more powerful, subtle (and possibly confusing)\nideas from programming."}
︠ee443ad1-c8ef-433f-848f-c28059687b7ci︠
%md
## Some more about data structures: tuples, dicts, sets
︡e62e7b13-15d2-4ece-aede-5a05e0e3a541︡︡{"done":true,"md":"## Some more about data structures: tuples, dicts, sets"}
︠661a14b0-7602-4366-be8d-2098f86de21ci︠
%md

### tuples

- Like Python lists, except you use parens instead of square brackets
- You can't change the number of entries or *what* they reference.  However, you might be able to change the referenced thing itself.
︡faa39f8b-94d6-4477-a116-ec63652f46d6︡︡{"done":true,"md":"\n### tuples\n\n- Like Python lists, except you use parens instead of square brackets\n- You can't change the number of entries or *what* they reference.  However, you might be able to change the referenced thing itself."}
︠6762c936-a9ce-410a-b3d1-479ed5fd47ces︠
v = [['x','y'], 2, 5]  # a list
t = (['x', 'y'], 2, 5) # a tuple
print "v =", v
print "t =", t
︡d9089033-e5bc-491c-9762-6d399007f2f6︡︡{"stdout":"v = [['x', 'y'], 2, 5]\n"}︡{"stdout":"t = (['x', 'y'], 2, 5)\n"}︡{"done":true}
︠c5629c70-f893-4605-b2af-2a759b802462s︠
t[1] = 3
︡acc273dd-aa44-428b-a256-ae44799049f3︡︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nTypeError: 'tuple' object does not support item assignment\n"}︡{"done":true}
︠ee232fbd-a540-4712-80f8-768f4231c43eo︠
v[1] = 3
︡4956fa5b-bf4d-4638-9104-a69b2406b135︡︡{"done":true}
︠a58d8254-2566-44ee-a84f-51822711c00cs︠
t = (1,2,7)
︡c7449352-7f41-466b-ae3f-ebf5a18bbd86︡︡{"done":true}
︠42fa3081-a060-414c-ab42-a330db00e4bas︠
t
︡4e396ca7-18ed-4ee5-853a-84b3a3b08d8a︡︡{"stdout":"(1, 2, 7)\n"}︡{"done":true}
︠484a6e05-852d-497f-8563-138fdf6bc631o︠
v.append("something")   # lists allow for lots of exciting ways of changing them
v
︡8cb4976a-4cd2-49c0-960e-06ea1faa53b9︡︡{"stdout":"[['x', 'y', 'z'], 3, 5, 'something']\n"}︡{"done":true}
︠1f5031f4-31b3-4515-8aa8-27eb028a7f2do︠
del v[3]
v
︡f5a3bddc-ea1e-46cf-9453-f3f91f2d3db0︡︡{"stdout":"[['x', 'y', 'z'], 3, 5]\n"}︡{"done":true}
︠d48b7b75-d82f-4348-80fa-836993453946o︠
t[1] = 3  # not allowed!
︡ff9ae96d-2eba-4330-8f42-cceed877d43d︡︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nTypeError: 'tuple' object does not support item assignment\n"}︡{"done":true}
︠1f0fe0d8-4d31-44a3-ac6a-6e938a991480o︠
t.append  # not so for tuples
︡0b1de5ff-a178-455a-ba4e-77579e9c4ce1︡︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nAttributeError: 'tuple' object has no attribute 'append'\n"}︡{"done":true}
︠ecb549dc-629a-48b2-b931-c01c7b827b46o︠
# However, and this is critical -- you can change v[0] or t[0] itself!

v[0].append('z')
v
︡1b6a3dfe-23d8-4e21-9e30-853f6387f70f︡︡{"stdout":"[['x', 'y', 'z', 'z'], 3, 5]\n"}︡{"done":true}
︠42ef3cb1-dca5-4c05-8f08-a125187a9177o︠
t[0].append('z')   # this doesn't change t --
# think of t as references to 3 specific objects -- you are changing one of the referenced objects, not t itself!
t
︡fed4227e-8006-494c-8951-1836a56e17c6︡︡{"stdout":"(['x', 'y', 'z'], 2, 5)\n"}︡{"done":true}
︠f04f7e45-73e6-43f6-85b1-2dd3d51d6b3fi︠
%md
**Exercise right now:** Write a function that takes as input a tuple and returns the sorted version of the tuple.
︡6df042b0-1b72-4c06-b802-daed22a2c806︡︡{"done":true,"md":"**Exercise right now:** Write a function that takes as input a tuple and returns the sorted version of the tuple."}
︠da383189-4004-4cd8-9e8f-d8d01cf88786o︠
# Hints to make this really easy:
v = (1,7, 4)
sorted(v)   # returns sorted list obtained from a tuple (or whatever)
︡fe9da78d-318f-4e16-aca8-2c7db7a931c9︡︡{"stdout":"[1, 4, 7]\n"}︡{"done":true}
︠0986c33f-70b9-461f-8382-4c774e1203afo︠
tuple([4,7,8])  # tuple of a list makes a tuple
︡bb304035-bbc9-4cb7-a8e8-304e3bde9c5d︡︡{"stdout":"(4, 7, 8)\n"}︡{"done":true}
︠28795d93-4a23-4656-9681-b6805fa0d0d4o︠
def sorted_tuple(x):
    return  # what goes here? something
︡6fa53ea1-4101-4268-9d0c-96f13adb5df0︡︡{"done":true}
︠c40b0ef4-aff4-425b-a25e-2fc39a7bd230o︠
sorted_tuple((7,3,5))  # test your function!
︡0ebbd2db-109c-4b18-9252-62f1dbf4046a︡︡{"stdout":"(3, 5, 7)\n"}︡{"done":true}
︠d07a020f-2c69-4540-be9d-64aa6f54dccfo︠










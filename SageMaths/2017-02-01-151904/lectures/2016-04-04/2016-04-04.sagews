︠c8be86cb-5546-4b59-b64f-92d07e28a869︠

︡8a502367-f046-4d0e-8876-3e0140f0cf8b︡
︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-04-04
### William Stein

## **Lectures 4: Basic Python (part 1/3)**

︡70e03e40-9a05-428f-83b3-b56d801d9744︡︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-04-04\n### William Stein\n\n## **Lectures 4: Basic Python (part 1/3)**"}
︠317be050-3eb6-459f-ac11-7294ebefde16i︠
%md
Organization:

- hmwk from last week graded and returned
- hmwk for this week available now
- office hours ta discussion
- I will leave immediately after class to do a basic demo of SMC for another class today
- stickers
- remind me to turn on the screencast, since I definitely forgot!
︡ac7fe2fc-0a82-401a-86a6-9e143456a2d8︡︡{"done":true,"md":"Organization:\n\n- hmwk from last week graded and returned\n- hmwk for this week available now\n- office hours ta discussion\n- I will leave immediately after class to do a basic demo of SMC for another class today\n- stickers\n- remind me to turn on the screencast, since I definitely forgot!"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md

Key things to learn this week:

1. **Basics:** functions, whitespace is significant, `if`, `while`, `for`, list comprehensions
1. **Data structures:** lists, tuples, dicts, sets
1. (maybe) **Classes:** `class`, methods, inheritence


︡︡{"done":true,"md":"\nKey things to ︡︡{"done":true,"md":"\nKey things to learn this week:\n\n1. **Basics:** functions, whitespace is significant, `if`, `while`, `for`, list comprehensions\n1. **Data structures:** lists, tuples, dicts, sets\n1. (maybe) **Classes:** `class`, methods, inheritence"}
︠c09fb03b-2d1c-427f-a871-2788be6e5709i︠
%md
## Functions
︡9b5376a8-e61e-44d9-8a3c-5ea74e628673︡︡{"done":true,"md":"## Functions"}
︠58a60968-ed47-46f7-bc41-3e9df66a4835s︠
def name_of_function(argument1, argument2):
    # This is a function. I changed
    print "the first argument is ", argument1, " and the second is ", argument2
    return argument1 + argument2
︡8e2f6778-53b1-4980-a947-c4dac6874cbe︡︡{"done":true}
︠23923007-8769-46be-a363-752df774d067︠
output = name_of_function(15, 19)
︡e5672730-f31c-4572-8d92-24aaf47ca047︡︡{"stdout":"the first argument is  15  and the second is  19\n"}︡{"done":true}
︠32f4cc1b-e926-4e6b-a23d-d19285dee739︠
True
︡757a1031-3700-446e-9050-d9d94b94d1e2︡︡{"stdout":"True\n"}︡{"done":true}
︠a1cb310b-ae9e-4c07-b457-4675c3205ff8s︠
False
︡0e27a2fa-0385-4755-8dee-1ce40e5c404f︡︡{"stdout":"False\n"}︡{"done":true}
︠d50bb74d-b7f5-45b4-993a-dc36842da706︠

︡7f0dc3dc-40bb-4c28-8922-17079b4973ee︡
︠3faf2b47-c09e-475e-907a-590c1ba14f9as︠
None
︡da03a78d-5b57-44d9-870c-8140f5064d8c︡︡{"done":true}
︠ddf73087-96d7-4a96-bb88-81e6c5430ec1︠
print output
︡4e74c901-86ff-4784-8ca7-f42e799d8c79︡︡{"stdout":"34\n"}︡{"done":true}
︠5f238eb5-79cc-4892-aa42-a03d381f12eas︠
name_of_function('math', '480')
︡08f87e5e-3d08-428a-9c5c-fa91decfa9e4︡︡{"stdout":"the first argument is  math  and the second is  480\n'math480'\n"}︡{"done":true}
︠57e6063b-d88d-4703-ab91-20acc0322dc6︠
# This should fail -- you can't add a string and a number in  Python.
name_of_function('abc', 123)
︡bc836f5e-8639-459a-b7e1-bdf3ac7c5ea0︡︡{"stdout":"the first argument is  abc  and the second is  123\n"}︡{"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"\", line 4, in name_of_function\n  File \"sage/structure/element.pyx\", line 1651, in sage.structure.element.RingElement.__add__ (/projects/sage/sage-6.10/src/build/cythonized/sage/structure/element.c:15852)\n    return coercion_model.bin_op(left, right, add)\n  File \"sage/structure/coerce.pyx\", line 1069, in sage.structure.coerce.CoercionModel_cache_maps.bin_op (/projects/sage/sage-6.10/src/build/cythonized/sage/structure/coerce.c:9736)\n    raise TypeError(arith_error_message(x,y,op))\nTypeError: unsupported operand parent(s) for '+': '<type 'str'>' and 'Integer Ring'\n"}︡{"done":true}
︠25c121d4-d413-4644-b8a2-0ab9f481020a︠
%python
name_of_function('abc', 123)
︡dce6c1d3-f198-4dee-b009-61b9917386d6︡︡{"stdout":"the first argument is  abc  and the second is  123\n"}︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 904, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"\", line 4, in name_of_function\nTypeError: cannot concatenate 'str' and 'int' objects\n"}︡{"done":true}
︠1110c12d-b977-48ef-a225-55e2e564be0ei︠
%md
**Exercise now:** Write a function avg that takes four arguments (which you may assume are numbers) and returns their average.
︡a3110244-753f-48c2-84b4-686ab5320c36︡︡{"done":true,"md":"**Exercise now:** Write a function avg that takes four arguments (which you may assume are numbers) and returns their average."}
︠6cf71aa5-417c-4e8e-bf26-71c3ba163443︠
def avg(x1, x2, x3, x4):
    # write code here.
︡627f4f85-c3b5-404c-a813-71cc7d39037c︡
︠cb662ab5-9adc-4e6d-a522-bbfcb17d2f41︠

︡7074e0a0-0511-4035-ac28-d0c03f776961︡
︠32f90ba1-8d87-4b9e-bafe-5678ccc4db65︠

︡956d19ab-938b-4e9b-bb10-711990196a73︡
︠44dec6d8-b91e-4ce0-aa61-157d99d96455︠
# test code here (etc.)
avg(1,2,3,4)
︡27f1fd0d-d0c4-42d3-a68f-f89ed50eac9a︡
︠6b27e05b-cc67-48de-8c30-1f6f4d5d0db7︠

︡acc4298c-7b62-4e5c-b323-923be8f70818︡
︠efa1a95b-72db-4132-b066-cd1c417283b5︠

︡6d04b2d3-d22f-4e41-873f-d29881b34f3d︡
︠1a57aeca-3abc-4d70-8ef4-b87a596c9d60︠

︡478d7674-8a52-4265-bfd1-7196cfab2111︡
︠53abf556-a40a-4816-86bd-6166bc2c9b9e︠

︡c0ea6b03-1e8f-4f1f-81e8-637256dea816︡
︠6ac41d06-2ece-4606-be52-a03703ceb601i︠
%md
## If/else Statements

    if [condition]:
        [some code]
    elif [condition]:
        [some code]
    ...
    else:
        [some code]

The condition can use ==, !=, and, or, not, and so on.

(Note: Python has no switch statement.)
︡986b40bf-57fa-4be5-b397-5f50088e4b38︡︡{"done":true,"md":"## If/else Statements\n\n    if [condition]:\n        [some code]\n    elif [condition]:\n        [some code]\n    ...\n    else:\n        [some code]\n\nThe condition can use ==, !=, and, or, not, and so on.\n\n(Note: Python has no switch statement.)"}
︠fddeb0de-b8dd-492b-b247-57e8408a1041︠
def parity(n):
    if n % 2 == 0:
        print "even"
    elif n == 2017:
        print "odd, that is next year!"
    else:
        print "odd"
︡c5ed2214-4aac-4188-891e-8cc65abb563a︡︡{"done":true}
︠67eb0083-eb28-412b-8eb3-ab013390de39︠
parity(3)
︡f30ea716-5ca6-4510-aa5c-f3f61da14b15︡︡{"stdout":"odd\n"}︡{"done":true}
︠2b0c11a6-9e10-4f02-be67-697b08ec24e6︠
parity(6)
︡56606c4c-21b9-4ee2-bad6-7bf90ea73eb1︡︡{"stdout":"even\n"}︡{"done":true}
︠1991de49-0df6-4b78-b25a-0e000a214412︠
parity(2017)
︡a167a961-fd93-4cd7-86d0-67cb87225242︡︡{"stdout":"odd, that is next year!\n"}︡{"done":true}
︠1afa138b-5990-4c96-bd20-c54e35cd2c16︠

︡33271b43-d31f-4704-afac-c3c652065d6a︡
︠28a6a978-9529-42d7-8e2e-16a8f0d761dfi︠
%md
**Exercise now:** Write a function that takes a number as input and
prints "negative" if it is less than 0, "positive" if it is bigger
than 0, and "zero" if it is equal to 0.
︡8c0ed461-c3ee-4770-9d66-26bbf8bbe032︡︡{"done":true,"md":"**Exercise now:** Write a function that takes a number as input and\nprints \"negative\" if it is less than 0, \"positive\" if it is bigger\nthan 0, and \"zero\" if it is equal to 0."}
︠77b0bf97-c68b-4559-9014-4bc26e789e2d︠
def my_sign(n):
    # write your code here
︡0b170dbf-2b88-4165-bebf-75b992d64401︡
︠0379c158-2b8b-49a3-b874-113dfac66829︠

︡b0b50ae3-2121-45f9-9e63-363e18033e29︡
︠c61ce57b-a449-47d4-8735-54f0c0fed92b︠

︡64aa625c-9342-4f76-b5af-f8998eb136bb︡
︠d88f37d7-5471-48e1-9cfe-a983c9a83f99︠

︡5e1f9167-de55-40c3-af9b-b397b0343fba︡
︠15f04c97-04e3-4d1c-9b3a-fec0fe68787d︠

︡2b108325-3ef2-45a0-a646-78490dd74323︡
︠a8334c5e-d890-40b7-ab50-672bbef2e229︠

︡0d3cc831-e7f8-45a1-a816-ecb703a59b04︡
︠b8cdc2c9-5f1c-49c5-b506-b432c6ad42aai︠
%md
## For loops

    `range(n)` is the list of integers from 0 up to n-1.


    for [variable name] in [list or anything "iterable"]:
        [code...]

︡876cb503-0e86-4bee-9859-b7a1e948b435︡︡{"done":true,"md":"## For loops\n\n    `range(n)` is the list of integers from 0 up to n-1.\n\n\n    for [variable name] in [list or anything \"iterable\"]:\n        [code...]"}
︠58d9fc50-d2d7-4149-b7ee-c41b5ac458b6s︠
range(10)
︡633e6a3d-3c4c-4353-82c1-3081c372081d︡︡{"stdout":"[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]\n"}︡{"done":true}
︠5ce6d49a-850f-46e2-afc6-9f9e1da67abds︠
for i in range(10):
    print "Hello", i
︡772af342-39c4-4b9a-9173-ec170842318c︡︡{"stdout":"Hello 0\nHello 1\nHello 2\nHello 3\nHello 4\nHello 5\nHello 6\nHello 7\nHello 8\nHello 9\n"}︡{"done":true}
︠1f0b4343-3d5b-4b89-a8f6-0929bdbf3aaas︠
i
︡b35e7a39-0247-4843-abce-465c05a93699︡︡{"stdout":"9\n"}︡{"done":true}
︠f6dfbb7c-33ba-47f2-a64e-9c02da6b0957s︠
def sum_up_to(n):
    s = 0
    for i in range(n+1):
        s = s + i
    return s
︡7a6c26c3-3b73-45fe-bf35-4f6ad785512e︡︡{"done":true}
︠dc629627-0685-4b4e-8ad0-75b3b431f1cbs︠
sum_up_to(3)
︡3c3591d0-0c3e-4fb5-af5e-af772ebacd4c︡︡{"stdout":"6\n"}︡{"done":true}
︠77b9a981-2e57-4487-9819-3cca1292976as︠
sum_up_to(10)
︡1013c8fe-a2c8-4aaf-a6a8-6c234abb9d49︡︡{"stdout":"55\n"}︡{"done":true}
︠4915c61c-8e22-43da-8904-5ca059a6dc3cs︠
sum_up_to(100)
︡d2d83671-cfe1-4930-bc9b-0e5a9c8c0ad1︡︡{"stdout":"5050\n"}︡{"done":true}
︠eb573643-e67d-41f8-8d34-f22ba3674125s︠
range(7, 50, 3)
︡e1730655-eb5d-48fc-805b-e2b819b0c8dc︡︡{"stdout":"[7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46, 49]\n"}︡{"done":true}
︠ac439f4e-5f39-4fba-9a34-3dbb7278aee3s︠
range?
︡f8c7114f-4104-4506-888b-eaf9a29602c0︡︡{"code":{"filename":null,"lineno":-1,"mode":"text/x-rst","source":"File: \nDocstring :\nrange(stop) -> list of integers range(start, stop[, step]) -> list of\nintegers\n\nReturn a list containing an arithmetic progression of integers.\nrange(i, j) returns [i, i+1, i+2, ..., j-1]; start (!) defaults to 0.\nWhen step is given, it specifies the increment (or decrement). For\nexample, range(4) returns [0, 1, 2, 3].  The end point is omitted!\nThese are exactly the valid indices for a list of 4 elements."}}︡{"done":true}
︠71f7a546-1399-4212-8b27-c06a03384bcbs︠
[5..15]
︡a19de4c0-2ad9-4119-b6b1-0625931c79ac︡︡{"stdout":"[5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]\n"}︡{"done":true}
︠8f256b65-d785-428b-ac30-155ee963c28bs︠
[5, 5.7, .., 15]
︡bf5e3914-9a4d-4c2a-9adb-15d95e429e4d︡︡{"stdout":"[5.00000000000000, 5.70000000000000, 6.40000000000000, 7.10000000000000, 7.80000000000000, 8.50000000000000, 9.20000000000000, 9.90000000000000, 10.6000000000000, 11.3000000000000, 12.0000000000000, 12.7000000000000, 13.4000000000000, 14.1000000000000, 14.8000000000000]\n"}︡{"done":true}
︠87ccc0cb-fd31-4be0-b3ef-e37e91643465i︠
%md
**Exercise now:** Write a function `sum_pow_up_to(n, k)` that returns the sum $1^k + 2^k + \cdots + n^k$.  You may assume that
$n$ and $k$ are positive integers.
︡161bd786-2ef3-44c5-ad66-eeed652d54e6︡︡{"done":true,"md":"**Exercise now:** Write a function `sum_pow_up_to(n, k)` that returns the sum $1^k + 2^k + \\cdots + n^k$.  You may assume that\n$n$ and $k$ are positive integers."}
︠2efa8564-e206-452b-93e1-860bb1d334des︠
4^5
︡04cb42c7-99a5-442a-9387-95b2e968752d︡︡{"stdout":"1024\n"}︡{"done":true}
︠4d93800b-daca-4185-8f3f-b27d7e6e94des︠
4**5
︡5e4ad6cd-af07-40ed-be54-e657fa2f7ede︡︡{"stdout":"1024\n"}︡{"done":true}
︠08a26830-37ef-4c22-8a5f-e8f26c0bf9e5s︠
%python
4^5
︡35974327-1d90-40c6-9eb4-e0cde85d43d5︡︡{"stdout":"1\n"}︡{"done":true}
︠b96b96b8-db9d-413f-b130-d609873c5be8︠
def sum_pow_up_to(n, k):
    # put code here...
︡33422560-16cf-452b-8a71-a866f757ae82︡
︠cd4b44d6-1410-47ac-87e9-ec3a77cb49f5︠
sum_pow_up_to(100,2)
︡62dc7a05-6485-4e22-813e-cbd893a42d7a︡
︠da72f0d9-487b-49ac-88ae-0996011fd614︠

︡9ef7e4d3-cb6e-4f59-9f1f-2ff75477cf6a︡
︠1b86dd90-14bc-4b33-8efa-94cf013e6ec9︠

︡33571c4a-e79c-4f8b-a586-22857c2d4ba0︡
︠8ea15708-da4e-4be3-a332-4583ddd38b73︠

︡4cbab667-72f4-4ff5-9a95-1c5701553b3a︡
︠954b5bba-21c1-4d50-89ac-f959b6a6b7f1︠

︡cceb914a-6b06-4661-9d74-03174211edd0︡
︠08f49481-9740-494b-badb-fae6ebbd9ad6i︠
%md
## While loops

    while [condition]:
        [code...]

<br>

(You can put `break` in the code to immediately exit the while loop.)

︡054e74d2-70b3-430a-8602-177a2ff1505e︡︡{"done":true,"md":"## While loops\n\n    while [condition]:\n        [code...]\n\n<br>\n\n(You can put `break` in the code to immediately exit the while loop.)"}
︠fcba7a43-0ec7-4ef8-a7c8-d6a3c1ff2625︠
i = 5
while i > 0:
    print i
    i -= 1
︡4e283a0c-7f1a-48a3-9cf1-02fe47fbe46a︡︡{"stdout":"5\n4\n3\n2\n1\n"}︡{"done":true}
︠eb6d25a7-0733-491d-9b06-c9bd3ccd5140︠
def my_factor(n):
    while not is_prime(n):       # is_prime is part of Sage (not Python)
        k = n.trial_division()   # trial_division is part of Sage (not Python)
        n = n//k
        print "found a factor=", k
    print "finished; prime number remaining=", n
︡c708357a-58bf-4de8-9af1-95dd02493b77︡︡{"done":true}
︠8940a9d3-c42e-467f-af3b-fdf329e39973︠
my_factor(20)
︡bdf61fbf-80d4-47fb-ad56-bc319afdb452︡︡{"stdout":"found a factor= 2\nfound a factor= 2\nfinished; prime number remaining= 5\n"}︡{"done":true}
︠f6f74123-4a7b-4b49-92a0-18d706ddbd86︠
my_factor(2016)
︡1785a331-5f9b-4e16-8c58-872108198d8c︡︡{"stdout":"found a factor= 2\nfound a factor= 2\nfound a factor= 2\nfound a factor= 2\nfound a factor= 2\nfound a factor= 3\nfound a factor= 3\nfinished; prime number remaining= 7\n"}︡{"done":true}
︠3bbda0c3-042e-4e9f-b090-a3c3f8d42557︠

︡f9705927-1839-4d59-bd7a-63913d497a46︡
︠f2f3a089-4f3b-44ab-9d53-40175703370di︠
%md
**Exercise now:**

Use a while loop to write a function `largest_power_of_2` that takes an input a positive integer $n$
and returns the largest power of $2$ that is less than $n$.  Your loop should start with pow=1
and while `pow*2` is less than $n$ replaces pow by `pow*2`.  When the condition fails, just return
`pow`.

︡9ef99a9e-c53f-449e-8daa-6bc3e662bb2c︡︡{"done":true,"md":"**Exercise now:**\n\nUse a while loop to write a function `largest_power_of_2` that takes an input a positive integer $n$\nand returns the largest power of $2$ that is less than $n$.  Your loop should start with pow=1\nand while `pow*2` is less than $n$ replaces pow by `pow*2`.  When the condition fails, just return\n`pow`."}
︠c9e938f0-01d4-41b1-869d-783c4a55fa9f︠
def largest_power_of_w(n):
    # put code here...
︡315da6c5-e24f-44ce-a6b8-06f876010ea6︡
︠c331aea5-9c7e-4edf-aef2-56791c9fa3b4︠

︡681511a9-026e-4d72-ae56-f5f91a9c4cb5︡
︠f82aa29a-0251-4253-ac9f-b88c45bc32e7︠

︡8375b4d6-ebde-42f6-a0ba-36a4c288837b︡
︠5173d4a6-6478-4d6a-be5d-2a435bbbb483︠

︡4ae565a8-a5c8-446d-a458-0d77373ffc2b︡
︠053b8849-6417-4963-b744-17d929282fc1︠

︡a7a33d10-9b92-4a81-bb2c-234b7b2a0b0f︡
︠35c3c34e-6fc5-467a-8dda-22c02c0fbc88︠

︡fcde6e9f-99ae-4689-bf7a-ab85e82440ab︡
︠1bc44401-a452-48e4-bf9a-26658e44a2b9︠
︠d7b59b8b-8037-4213-83b9-77fade778fae︠


︠e0d450e6-4f81-4018-8bc5-757becf2271e︠

︠4c440b60-90a5-4c2b-a5c6-54ef9c8b36fc︠












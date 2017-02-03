︠7a01dcb1-69ba-4de8-9c7b-fc828260a7f3︠
%md
# Math 480 - Homework 2: Due 6pm on April 8, 2016
︡f8a01199-1fe9-4723-8641-9d5fc14ef4c9︡︡{"done":true,"md":"# Math 480 - Homework 2: Due 6pm on April 8, 2016"}
︠1fe68ebb-02c8-41a8-b399-6d9556294267i︠
%md
**There are 6 problems and all have equal weights.**
︡4bed8dd2-c713-4c56-a165-2b1858697cfe︡︡{"done":true,"md":"**There are 6 problems and all have equal weights.**"}
︠fd260e23-378c-4b97-976a-5e409e0f2308i︠
%md
### Problem 1: Truthiness
An expression e is truthy if `bool(e)` is True; otherwise e is falsy.

Different programming languages may have different truthy and falsy values (I'm looking at you javascript).

1a. Give 10 different Python objects that are falsy.  Your list might include e.g., `[]` and `0`.  Also, by "different" we mean that `a is b` evaluates to False.

1b. In Python "is" means "identical objects", whereas "==" can be much more subtle.   Give 5 examples of Python objects `a` and `b` such that `a==b` is true but `a is b` is not true.
︡05755c88-53e2-4182-b16e-7ccd88e160f4︡︡{"done":true,"md":"### Problem 1: Truthiness\nAn expression e is truthy if `bool(e)` is True; otherwise e is falsy.\n\nDifferent programming languages may have different truthy and falsy values (I'm looking at you javascript).\n\n1a. Give 10 different Python objects that are falsy.  Your list might include e.g., `[]` and `0`.  Also, by \"different\" we mean that `a is b` evaluates to False.\n\n1b. In Python \"is\" means \"identical objects\", whereas \"==\" can be much more subtle.   Give 5 examples of Python objects `a` and `b` such that `a==b` is true but `a is b` is not true."}
︠56ea4616-31fd-4b50-945c-0e4fd8349d99︠
# Solution 1a:

[]




# Solution 1b:

[0.0 == 0, 0.0 is 0]






︡258d38fd-75f7-4cf6-bb15-de9e3fde0588︡︡{"stdout":"[True, False]\n"}︡{"done":true}
︠8d238e84-144e-443c-b85a-b00400a4eae1i︠
%md

### Problem 2: Control Flow

Write a function named fizz_buzz that accepts an integer N and for each integer m from 1 to N, prints 'Fizz' if m is divisible by 2, prints 'Buzz' if m is divisible by 3, prints 'FizzBuzz' if m is divisible by 2 and 3, and prints 'Moot' if none of the above.

eg.
Calling fizz_buzz(7)

Prints
```
Moot
Fizz
Buzz
Fizz
Moot
FizzBuzz
Moot
```
︡695c93cb-4a7d-4b33-9156-ec5ac3616a4d︡︡{"done":true,"md":"\n### Problem 2: Control Flow\n\nWrite a function named fizz_buzz that accepts an integer N and for each integer m from 1 to N, prints 'Fizz' if m is divisible by 2, prints 'Buzz' if m is divisible by 3, prints 'FizzBuzz' if m is divisible by 2 and 3, and prints 'Moot' if none of the above.\n\neg.\nCalling fizz_buzz(7)\n\nPrints\n```\nMoot\nFizz\nBuzz\nFizz\nMoot\nFizzBuzz\nMoot\n```"}
︠6c81cbca-99cd-448f-b1b7-cfcb4389cebe︠
# Solution 2





︡a7a809c3-a169-4e1a-b1b0-44100553d109︡
︠38395b0d-00a0-44b9-bf1e-5729e79be620i︠
%md

### Problem 3: Set comprehensions

Convert the following sets written in English into sets (not lists!) in Python using set comprehensions.

- 3a. $X = \{a : 0 < a < 100 \text{ and }a \text{ is even}\}$
- 3b. The set of primes less than 100 that are congruent to 1 modulo 4
- 3c. The set of positive integers $n<1000$ such that $n^3 + 1 \equiv 3 \pmod{1}$
- 3d. The set of prime number years during this century (i.e., between 2000 and 2100).
︡︡{"done":true,"md":"\n### Problem 3:︡︡{"done":true,"md":"\n### Problem 3: Set comprehensions\n\nConvert the following sets written in English into sets (not lists!) in Python using set comprehensions.\n\n- 3a. $X = \\{a : 0 < a < 100 \\text{ and }a \\text{ is even}\\}$\n- 3b. The set of primes less than 100 that are congruent to 1 modulo 4\n- 3c. The set of positive integers $n<1000$ such that $n^3 + 1 \\equiv 3 \\pmod{1}$\n- 3d. The set of prime number years during this century (i.e., between 2000 and 2100)."}
︠d7b1659f-a285-4d2a-a776-9449a05ed903o︠
# Solution 3a:



︡fcba2586-a4c2-4a2c-acfe-368b83b516dc︡
︠fc4b84fe-e009-43c4-a1ba-f0abbbee73bb︠
# Solution 3b:



︡c5b89898-fdb5-4c24-a9b8-b14e898b3b1c︡
︠b5ca33a8-2f0a-46ba-a16c-0fd8a36bd05e︠
# Solution 3c:



︡7cb83a3b-a9bc-4664-8db8-0ecce7e235ba︡
︠49b79266-aaac-41e8-b339-fe4e2e5a0e1e︠
# Solution 3d:



︡73e104bc-44cd-488d-b13b-10c2d54456d5︡
︠c2b85917-2918-426b-9532-69a479ae460bi︠
%md
### Problem 4: Better and Worse
- 4a. Implement a "good" function that returns the Nth Fibonacci number.
- 4b. What makes your choice better than others? (Hint: read about how recursion in Python sucks.)
︡2e78ca2d-d70d-443f-8f2c-9fd3f582547b︡︡{"done":true,"md":"### Problem 4: Better and Worse\n- 4a. Implement a \"good\" function that returns the Nth Fibonacci number.\n- 4b. What makes your choice better than others? (Hint: read about how recursion in Python sucks.)"}
︠2221037b-d287-43fa-a945-c336d8f4d2a2︠
# Solution 4a:
# fib(n)...
#   return nth Fibonacci number


︡6801e658-fa03-4185-b39d-7846a3ae164a︡
︠c7dcd844-6e4e-4085-bd6d-1f553e545d20︠

︡badbdfd4-e925-4fc1-b5a2-aa0b2d316b77︡
︠12406aa6-c5f9-4006-b0c9-042d9812b392︠
%md
#### Solution 4b:



︡7e84c06b-a0d4-4883-99b0-639024e40a0a︡
︠8e94eb12-8333-47ea-b415-5d04efa82b5ci︠
%md
### Problem 5: Fibonacci numbers

5a. Using your function above, generate a list of the first 100 Fibonacci numbers.

5b. Write code that computes how many of these Fibonacci numbers are prime.

5c. Do you think there are infinitely many prime Fibonacci numbers?  (Back up your claim with data and/or internet searches.)
︡510fcba3-6dea-4cdf-bd4f-3e25c13541e1︡︡{"done":true,"md":"### Problem 5: Fibonacci numbers\n\n5a. Using your function above, generate a list of the first 100 Fibonacci numbers.\n\n5b. Write code that computes how many of these Fibonacci numbers are prime.\n\n5c. Do you think there are infinitely many prime Fibonacci numbers?  (Back up your claim with data and/or internet searches.)"}
︠fdd4a254-cc04-4994-84b6-4c58ad130aa3︠
# Solution 5a:



︡f88affe6-fbad-499b-b834-2b04749c84f7︡
︠1d9b8f04-0aed-42a3-b069-ad072bc403de︠
# Solution 5b:



︡4e106cbf-ba5e-4abf-a08b-ca74ac1d87b3︡
︠6237b6c5-c14f-4c00-98b9-1a44703d22e8︠
%md
#### Solution 5c:




︡06aa0766-bb12-4c94-b433-3c5a5e781937︡︡{"done":true,"md":"#### Solution 5c:"}
︠2ecb0132-45d9-4b54-a3de-005abf7b0082i︠
%md
### Problem 6: Python Dictionaries

- 6a. Search online and find as many names as you can for data structures that are like a Python "dictionary", but in other programming languages.
For example, in Javascript the analogue of a Python dictionary is called a "Map".

- 6b. Give five different types of Python objects that can't be the keys of a Python dictionary, and five that can be keys.
Your answer should consist of objects `obj` so that `type(obj)` are different.

︡a433743a-8aa4-4021-a479-38fa8d0a6f39︡︡{"done":true,"md":"### Problem 6: Python Dictionaries\n\n- 6a. Search online and find as many names as you can for data structures that are like a Python \"dictionary\", but in other programming languages.\nFor example, in Javascript the analogue of a Python dictionary is called a \"Map\".\n\n- 6b. Give five different types of Python objects that can't be the keys of a Python dictionary, and five that can be keys.\nYour answer should consist of objects `obj` so that `type(obj)` are different."}
︠22e2be30-fd8b-4483-a61c-014ae8811bca︠
%md
#### Solution 6a:




︠e1f980c1-57d1-40de-a761-ebdfdad48a28︠
# Solution 6b:




︠106c1fa9-73fc-416c-b183-afd1b7ef75b9︠












︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-03-28
### William Stein

## **Lecture 1: Introduction**

︡70e03e40-9a05-428f-83b3-b56d801d9744︡︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-03-28\n### William Stein\n\n## **Lecture 1: Introduction**"}
︠c1ab7298-9f3e-4ec5-ae63-a771f4f7e019︠

︡c0933999-fa8e-4c93-963a-9a60961999bd︡
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md

# Syllabus

## Your grade

- 80% for 8 of your 10 homeworks (2 are dropped)
- 20% for 20 days of participation (9 are dropped)
- no exams. no projects.

Participation = making changes to the lectures/[date] directory **during class** on the day of.

## Laptops
If you don't have or can't get a laptop drop the class.  You can reserve a laptop from classroom services!

## Homework
Homework is due each **Friday at 6pm**.

Your course grade will be at least 4.0 if you get 99%, a 3.5 if you get 90%, at least a 2.8 if you get 80%, at least a 1.8 if you get 70%, and at least 0.8 if you get 60%.
I may adjust grades up.

## Peer grading

We may do peer grading, in which you will grade the homework of a few randomly selected students in the course.
The TA will determine your final grade based on what other students write and the TA's own judgement.
If you find this unacceptable, drop the class.

## Cheating

- You may work with other people on homework problems within reason, but must **clearly** indicate who you work with on each problem.
- Don't copy/paste solutions, but instead write them with your own hands (the "TimeTravel" features makes it clear when you copy paste).
- You are expected to research questions for yourself online: you **should** search Google, Stack Overflow, Wikipedia, etc., a lot.  But include links in your solutions to where you found answers.

## Excuses

No excuses.  **2 homeworks and 9 participation days are dropped.**  My policy is "Life goes on."

## Mailing list

https://groups.google.com/forum/#!aboutgroup/math480-2016-sage

## Office hour

1:30-1:50 directly after class by the classroom.

︡33200115-953b-459d-84b0-a4133dd6b52e︡︡{"done":true,"md":"\n# Syllabus\n\n## Your grade\n\n- 80% for 8 of your 10 homeworks (2 are dropped)\n- 20% for 20 days of participation (9 are dropped)\n- no exams. no projects.\n\nParticipation = making changes to the lectures/[date] directory **during class** on the day of.\n\n## Laptops\nIf you don't have or can't get a laptop drop the class.  You can reserve a laptop from classroom services!\n\n## Homework\nHomework is due each **Friday at 6pm**.\n\nYour course grade will be at least 4.0 if you get 99%, a 3.5 if you get 90%, at least a 2.8 if you get 80%, at least a 1.8 if you get 70%, and at least 0.8 if you get 60%.\nI may adjust grades up.\n\n## Peer grading\n\nWe may do peer grading, in which you will grade the homework of a few randomly selected students in the course.\nThe TA will determine your final grade based on what other students write and the TA's own judgement.\nIf you find this unacceptable, drop the class.\n\n## Cheating\n\n- You may work with other people on homework problems within reason, but must **clearly** indicate who you work with on each problem.\n- Don't copy/paste solutions, but instead write them with your own hands (the \"TimeTravel\" features makes it clear when you copy paste).\n- You are expected to research questions for yourself online: you **should** search Google, Stack Overflow, Wikipedia, etc., a lot.  But include links in your solutions to where you found answers.\n\n## Excuses\n\nNo excuses.  **2 homeworks and 9 participation days are dropped.**  My policy is \"Life goes on.\"\n\n## Mailing list\n\nhttps://groups.google.com/forum/#!aboutgroup/math480-2016-sage\n\n## Office hour\n\n1:30-1:50 directly after class by the classroom."}
︠c74fe1be-357f-4df5-9649-3fb5db79aa1bi︠
%md
## Topics - 1 week each

1. Introduction to SageMath: sage worksheets, markdown (links, math in dollar signs)
1. Python
1. Cython
1. Latex
1. Symbolic calculus
1. Linear algebra
1. Statistics
1. Number theory / public-key cryptography
1. Graph theory  / combinatorics
1. Numerical computation
︡316ffab6-0356-404d-b163-6d09562b0763︡︡{"done":true,"md":"## Topics - 1 week each\n\n1. Introduction to SageMath: sage worksheets, markdown (links, math in dollar signs)\n1. Python\n1. Cython\n1. Latex\n1. Symbolic calculus\n1. Linear algebra\n1. Statistics\n1. Number theory / public-key cryptography\n1. Graph theory  / combinatorics\n1. Numerical computation"}
︠e38a8ef6-056b-46d0-ab8c-7e4075e90303i︠
%md
# Live Experimentation!

- Do the following in groups
- Use the button bar at the top to input many examples (e.g., plots) and evaluate each (click Run or shift+enter).
- In each case, **change something** about the input and re-run to see what happens.
︡35953780-160b-475d-8d26-98fd55c1d81a︡︡{"done":true,"md":"# Live Experimentation!\n\n- Do the following in groups\n- Use the button bar at the top to input many examples (e.g., plots) and evaluate each (click Run or shift+enter).\n- In each case, **change something** about the input and re-run to see what happens."}
︠79868f43-47e9-4e64-87f5-b8e8181a3804s︠

%var x y z
g = golden_ratio; r = 4.77
p = 2.5 - (cos(x + g*y) + cos(x - g*y) + cos(y + g*z) +
         cos(y - g*z) + cos(z - g*x) + cos(z + g*x))
show(implicit_plot3d(p, (x, -r, r), (y, -r, r), (z, -r, r),
                plot_points=30, color='maroon', mesh=1, opacity=.7), spin=1)
︡83055770-8ffc-4255-98cb-1a1fa517c279︡︡{"file":{"filename":"ed0819b2-c24f-4880-b6e9-b80d3c9859af.sage3d","uuid":"ed0819b2-c24f-4880-b6e9-b80d3c9859af"}}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠a01eee0f-1832-4d36-bc24-5c1837eeb494︠












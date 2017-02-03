︠5fb55eb3-eabb-4edb-ba17-dabd890d2eefi︠
%md
# Homework 2 - Math 480b - Spring 2016

**Due Friday, April 15, 2016 by 6pm**

Your grading will be automatically collected.

︡aac6eeb0-02bb-44d1-98bb-8ed2006fd6a3︡︡{"done":true,"md":"# Homework 2 - Math 480b - Spring 2016\n\n**Due Friday, April 15, 2016 by 6pm**\n\nYour grading will be automatically collected."}
︠f41adcef-16c3-406d-baf5-babd81f91554i︠
%html
<font color="red"><h1>HOMEWORK TOTAL: 60 POINTS</h1></font>
︡e6a07a4a-e849-48df-9d4a-22265a7f4997︡︡{"done":true,"html":"<font color=\"red\"><h1>HOMEWORK TOTAL: 60 POINTS</h1></font>"}
︠b022a19a-197a-44f8-bd83-7d5ef3199df5i︠
%html

<font color="green"><h3>GRADING GUIDELINES</h3>
    <ul><li>Go through your gradee's homework worksheet and assign a score to each question. Please state an individual questions assigned score in a cell below it, and leave a few words comment.</li>
        <li>State the total score you've assigned for the homework at the top of the worksheet. Put <br><tt>TOTAL: X/60</tt><br>
            in a cell on its own, where <tt>X</tt> is the total score for this homework.</li>
        <li>The idea is to provide constructive feedback for your gradee. Please attempt to be fair in your grading, and make sure your comments are professional.</li>
        <li>For visibility, I recommend any text you add be colored red. You're welcome to copy any of red html text below and paste it in, suitably edited, if you so desire.</li>
    </ul>
</font>
︡71027fe8-d225-4031-8438-93ca88d5afa1︡︡{"done":true,"html":"\n<font color=\"green\"><h3>GRADING GUIDELINES</h3>\n    <ul><li>Go through your gradee's homework worksheet and assign a score to each question. Please state an individual questions assigned score in a cell below it, and leave a few words comment.</li>\n        <li>State the total score you've assigned for the homework at the top of the worksheet. Put <br><tt>TOTAL: X/60</tt><br>\n            in a cell on its own, where <tt>X</tt> is the total score for this homework.</li>\n        <li>The idea is to provide constructive feedback for your gradee. Please attempt to be fair in your grading, and make sure your comments are professional.</li>\n        <li>For visibility, I recommend any text you add be colored red. You're welcome to copy any of red html text below and paste it in, suitably edited, if you so desire.</li>\n    </ul>\n</font>"}
︠b5a63860-9c5d-4f36-87a1-0729a9493eedi︠
%md
### Problem 1: Truthiness
An expression e is truthy if `bool(e)` is True; otherwise e is falsy.

Different programming languages may have different truthy and falsy values (I'm looking at you javascript).

1a. Give 10 different Python objects that are falsy.  Your list might include e.g., `[]` and `0`.  Also, by "different" we mean that `a is b` evaluates to False.

1b. In Python "is" means "identical objects", whereas "==" can be much more subtle.   Give 5 examples of Python objects `a` and `b` such that `a==b` is true but `a is b` is not true.
︡24b9ec84-4ee9-42c0-8fb8-fde5db087372︡︡{"done":true,"md":"### Problem 1: Truthiness\nAn expression e is truthy if `bool(e)` is True; otherwise e is falsy.\n\nDifferent programming languages may have different truthy and falsy values (I'm looking at you javascript).\n\n1a. Give 10 different Python objects that are falsy.  Your list might include e.g., `[]` and `0`.  Also, by \"different\" we mean that `a is b` evaluates to False.\n\n1b. In Python \"is\" means \"identical objects\", whereas \"==\" can be much more subtle.   Give 5 examples of Python objects `a` and `b` such that `a==b` is true but `a is b` is not true."}
︠39cef0b2-6be1-4f74-a4f6-587bd15892c3i︠
%md
## <font color='red'>Solution: 10 points total</font>
<font color='red'>0.5 points for each example in part a and in part b.</font>

#### Part a:
Examples of legal Python Objects which are falsy:
```
None
False
0
0.0
0L
0j
"" or ''
u'' or ""
[]
()
{}
set()
```
<br/>
If it's not on the above list, check with the `bool` function. <br/>
Also check to make sure that for each example a, there is not another example b such that a is b returns True.

#### Part b:
Test each of their examples against each other.

︡4923d862-ef8e-47ff-b09c-17c919e1980a︡︡{"done":true,"md":"## <font color='red'>Solution: 10 points total</font>\n<font color='red'>0.5 points for each example in part a and in part b.</font>\n\n#### Part a:\nExamples of legal Python Objects which are falsy:\n```\nNone\nFalse\n0\n0.0\n0L\n0j\n\"\" or ''\nu'' or \"\"\n[]\n()\n{}\nset()\n```\n<br/>\nIf it's not on the above list, check with the `bool` function. <br/>\nAlso check to make sure that for each example a, there is not another example b such that a is b returns True.\n\n#### Part b:\nTest each of their examples against each other."}
︠f11e14ab-a6dc-4cd5-baf9-d4f9154ec4ee︠
# Example for part a
(5 is 7) is False # No points for one of them
0 is 0.0 # Points for both
︡6dd174a6-4922-480b-b2c8-eefc0b871ecc︡︡{"stdout":"True\n"}︡{"stdout":"False\n"}︡{"done":true}
︠487792e6-c453-4734-af90-78cc1a5f9e1a︠
# Example for part b
[0 == 0.0, 0 is 0.0] # Full points, No points if anything other than True, False.
︡8bbc5a68-5c9e-4fcb-bd52-7df8584207cc︡︡{"stdout":"[True, False]\n"}︡{"done":true}
︠855d00c5-7918-407c-b33f-cdbd18445e7ei︠
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
︡e01611c3-96a3-4979-898b-760dd10ad486︡︡{"done":true,"md":"\n### Problem 2: Control Flow\n\nWrite a function named fizz_buzz that accepts an integer N and for each integer m from 1 to N, prints 'Fizz' if m is divisible by 2, prints 'Buzz' if m is divisible by 3, prints 'FizzBuzz' if m is divisible by 2 and 3, and prints 'Moot' if none of the above.\n\neg.\nCalling fizz_buzz(7)\n\nPrints\n```\nMoot\nFizz\nBuzz\nFizz\nMoot\nFizzBuzz\nMoot\n```"}
︠9ddbe774-78aa-4509-a29b-0760efb2e175︠
%html

<font color="red"><h2>10 Points Total</h2>
<p>Test the function on a variety of integer inputs; the output should match the function fizz_buzz given here. Their function need not be coded the same way this one is. Only output needs to match.
</p>

<p>This question has 4 parts to correctness.
    <ul>
        <li>+ 3 points if "FizzBuzz" is printed for all even numbers divisible by 3</li>
        <li>+ 3 points if "Fizz" is printed for all even numbers not divisible by 3</li>
        <li>+ 3 points if "Buzz" is printed for all the odd numbers divisible by 3</li>
        <li>+ 1 point if "Moot" is printed for all the odd numbers not divisible by 3</li>
    </ul>
</p>
<p>
    For example, if their function prints "Fizz" for all outputs, they would get 3 points since at least the 2nd bullet is satisfied
</p>
</font>
︡476be482-93f5-463a-a212-3074a030023e︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<p>Test the function on a variety of integer inputs; the output should match the function fizz_buzz given here. Their function need not be coded the same way this one is. Only output needs to match.\n</p>\n\n<p>This question has 4 parts to correctness.\n    <ul>\n        <li>+ 3 points if \"FizzBuzz\" is printed for all even numbers divisible by 3</li>\n        <li>+ 3 points if \"Fizz\" is printed for all even numbers not divisible by 3</li>\n        <li>+ 3 points if \"Buzz\" is printed for all the odd numbers divisible by 3</li>\n        <li>+ 1 point if \"Moot\" is printed for all the odd numbers not divisible by 3</li>\n    </ul>\n</p>\n<p>\n    For example, if their function prints \"Fizz\" for all outputs, they would get 3 points since at least the 2nd bullet is satisfied\n</p>\n</font>"}
︠2d7aa003-d98c-46f5-85ab-d530df915785︠
# Example Solutions #2

# 10 points
def fizz_buzz(n):
    for i in range(1,n+1):
        if i % 2 == 0 and i % 3 == 0:
            print "FizzBuzz"
        elif i % 2 == 0:
            print "Fizz"
        elif i % 3 == 0:
            print "Buzz"
        else:
            print "Moot"

# 9 points
def fizz_buzz_wrong(n):
    for i in range(1,n+1):
        if i % 2 == 0 and i % 3 == 0:
            print "FizzBuzz"
        elif i % 2 == 0:
            print "Fizz"
        elif i % 3 == 0:
            print "Buzz"

︡cb60e776-1442-42e6-8d9b-17792dd5e34b︡
︠d7b1659f-a285-4d2a-a776-9449a05ed903i︠
%md

### Problem 3: Set comprehensions

Convert the following sets written in English into sets (not lists!) in Python using set comprehensions.

- 3a. $X = \{a : 0 < a < 100 \text{ and }a \text{ is even}\}$
- 3b. The set of primes less than 100 that are congruent to 1 modulo 4
- 3c. The set of positive integers $n<1000$ such that $n^3 + 1 \equiv 3 \pmod{1}$
- 3d. The set of prime number years during this century (i.e., between 2000 and 2100).

︡a7a809c3-a169-4e1a-b1b0-44100553d109︡︡{"done":true,"md":"\n### Problem 3: Set comprehensions\n\nConvert the following sets written in English into sets (not lists!) in Python using set comprehensions.\n\n- 3a. $X = \\{a : 0 < a < 100 \\text{ and }a \\text{ is even}\\}$\n- 3b. The set of primes less than 100 that are congruent to 1 modulo 4\n- 3c. The set of positive integers $n<1000$ such that $n^3 + 1 \\equiv 3 \\pmod{1}$\n- 3d. The set of prime number years during this century (i.e., between 2000 and 2100)."}
︠2d09388a-c31c-4cd9-91e0-06595df3ca7a︠
%html

<font color="red"><h2>10 Points Total</h2>
<p>
    The output set for each part should be equal to each set in these solutions. Comprehensions do not need to be identical.
    </p>
<h4>Part A (1 point)</h4>
<p>Award:
    <ul>
        <li>1 point if they used a comprehension and had the right set</li>
        <li>0.5 points if they used a comprehension but their set is missing an element or 2 due to slightly incorrect bounds</li>
        <li>0 points for anything else</li>
    </ul>
</p>
<h4>Part B, C, D (3 points each)</h4>
<p>Award:
    <ul>
        <li>3 points if they used a comprehension and had the right set</li>
        <li>2 points if they used a comprehension but their set is missing an element or 2 due to slightly incorrect bounds</li>
        <li>1 point if they used a comprehension resulting in the wrong set or they didn't use a comprehension but had the right set.</li>
        <li>0 points for anything else</li>
    </ul>
</p>
</font>
︡dc1d7b90-66aa-46b5-b304-a647dcebbdbb︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<p>\n    The output set for each part should be equal to each set in these solutions. Comprehensions do not need to be identical.\n    </p>\n<h4>Part A (1 point)</h4>\n<p>Award:\n    <ul>\n        <li>1 point if they used a comprehension and had the right set</li>\n        <li>0.5 points if they used a comprehension but their set is missing an element or 2 due to slightly incorrect bounds</li>\n        <li>0 points for anything else</li>\n    </ul>\n</p>\n<h4>Part B, C, D (3 points each)</h4>\n<p>Award:\n    <ul>\n        <li>3 points if they used a comprehension and had the right set</li>\n        <li>2 points if they used a comprehension but their set is missing an element or 2 due to slightly incorrect bounds</li>\n        <li>1 point if they used a comprehension resulting in the wrong set or they didn't use a comprehension but had the right set.</li>\n        <li>0 points for anything else</li>\n    </ul>\n</p>\n</font>"}
︠afa2c08a-0a4c-4143-a0f1-01b52b472b18︠
# Example Solutions 3a:
{i for i in range(1, 100) if i % 2 == 0} # 1 point

{i for i in range(1, 101) if i % 2 == 0} # 0.5 points (100 is not less than 100)



︡2358b625-c22c-4067-9403-3907120c8365︡
︠fc4b84fe-e009-43c4-a1ba-f0abbbee73bb︠
# Example Solutions 3b:
{i for i in range(0,100) if is_prime(i) and i % 4 == 1} # 3 points

{i for i in range(0,100) if is_prime(i) and i % 1 == 4} # 1 point
︡da38f555-0ee1-4c98-8be0-52d395b52e62︡︡{"stdout":"set([97, 37, 41, 13, 61, 17, 53, 73, 89, 29, 5])\n"}︡{"stdout":"set([])\n"}︡{"done":true}
︠b5ca33a8-2f0a-46ba-a16c-0fd8a36bd05es︠
# Example Solution 3c: n (mod 1) is 0 for all n so it's just the integers 1-999

{i for i in range(1,1000)} # 3 points
{i for i in range(1,1000) if (i**3 + 1) % 1 == 3 % 1} # 3 points

{i for i in range(0,1000) if (i**3 + 1) % 1 == 3 % 1} # 2 points
︡f6000475-72b4-4244-a71d-06519c7e72b2︡{"stdout":"set([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999])"}︡{"stdout":"\n"}︡{"stdout":"set([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999])"}︡{"stdout":"\n"}︡{"stdout":"set([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999])"}︡{"stdout":"\n"}︡︡{"stdout":"\n"}{"done":true}︡︡{"done":true}
︠49b79266-aaac-41e8-b339-fe4e2e5a0e1e︠
# Example Solution 3d:
{i for i in range(2000, 2101) if is_prime(i)} # 3 points
︡d2bd73cb-cb9b-454a-ada8-6aedcc028ffa︡︡{"stdout":"set([2017, 2083, 2053, 2081, 2099, 2089, 2027, 2029, 2063, 2003, 2069, 2039, 2087, 2011])\n"}︡{"done":true}
︠c2b85917-2918-426b-9532-69a479ae460bi︠
%md
### Problem 4: Better and Worse
- 4a. Implement a "good" function that returns the Nth Fibonacci number.
- 4b. What makes your choice better than others? (Hint: read about how recursion in Python sucks.)
︡2e78ca2d-d70d-443f-8f2c-9fd3f582547b︡︡{"done":true,"md":"### Problem 4: Better and Worse\n- 4a. Implement a \"good\" function that returns the Nth Fibonacci number.\n- 4b. What makes your choice better than others? (Hint: read about how recursion in Python sucks.)"}
︠b8e6b310-92a9-4073-8a70-98c80a6a6dfei︠
%html

<font color="red"><h2>10 Points Total (5 per part)</h2>
<p>Sage has its own fibonacci function.
    Check for various integer inputs that their fibonacci function returns the same number. ie. fibonacci(n) == fib(n)
</p>
<p>
    fibonacci(n) == fib(n+1) is okay due to starting at 0 vs starting at 1.<br/>
    </p>
<h4> Part A: </h4>
<p>Award:
    <ul>
        <li>5 points if their function correctly returns the fibonacci numbers and is better than a naive recursive solution</li>
        <li>3 points if their function is not a naive recursive solution</li>
        <li>1 point if they have a function but it does not correctly return the nth fibonacci number</li>
    </ul>
</p>
<h4> Part B: </h4>
<p>Award:
    <ul>
        <li>5 points if they say what makes their function "good" and why that is.</li>
        <li>3 points if they say what makes their function "good" and compare it to a bad thing.</li>
        <li>1 points if they only say what makes their function "good"</li>
        <li>0 points if they only say "recursion sucks" or leave it empty</li>
    </ul>
</p>
</font>
︡f448edbf-5bc8-420d-a1a4-ce53fabff197︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total (5 per part)</h2>\n<p>Sage has its own fibonacci function.\n    Check for various integer inputs that their fibonacci function returns the same number. ie. fibonacci(n) == fib(n)\n</p>\n<p>\n    fibonacci(n) == fib(n+1) is okay due to starting at 0 vs starting at 1.<br/>\n    </p>\n<h4> Part A: </h4>\n<p>Award:\n    <ul>\n        <li>5 points if their function correctly returns the fibonacci numbers and is better than a naive recursive solution</li>\n        <li>3 points if their function is not a naive recursive solution</li>\n        <li>1 point if they have a function but it does not correctly return the nth fibonacci number</li>\n    </ul>\n</p>\n<h4> Part B: </h4>\n<p>Award:\n    <ul>\n        <li>5 points if they say what makes their function \"good\" and why that is.</li>\n        <li>3 points if they say what makes their function \"good\" and compare it to a bad thing.</li>\n        <li>1 points if they only say what makes their function \"good\"</li>\n        <li>0 points if they only say \"recursion sucks\" or leave it empty</li>\n    </ul>\n</p>\n</font>"}
︠2221037b-d287-43fa-a945-c336d8f4d2a2︠
# Solution 4a:
fibonacci

︡7be8e993-9fcd-4fca-8b65-ac16477295e9︡︡{"stdout":"<function fibonacci at 0x7ff57a42f848>\n"}︡{"done":true}
︠12406aa6-c5f9-4006-b0c9-042d9812b392i︠
%md
#### Example Solutions 4b:
(0 points)<br/>
I didn't use recursion, which is awful in Python.

(2 points)<br/>
I used a for loop.

(3 points)<br/>
My function does not use recursion, which is bad. Instead I use a for loop.

(5 points)<br/>
Python keeps track of a whole bunch of things for each function call so if I used a recursive strategy, the function could easily stack overflow (link to source). <br/>
Instead, I used the close form of the recurrence relation which is fast to compute.

︡7e84c06b-a0d4-4883-99b0-639024e40a0a︡︡{"done":true,"md":"#### Example Solutions 4b:\n(0 points)<br/>\nI didn't use recursion, which is awful in Python.\n\n(2 points)<br/>\nI used a for loop.\n\n(3 points)<br/>\nMy function does not use recursion, which is bad. Instead I use a for loop.\n\n(5 points)<br/>\nPython keeps track of a whole bunch of things for each function call so if I used a recursive strategy, the function could easily stack overflow (link to source). <br/>\nInstead, I used the close form of the recurrence relation which is fast to compute."}
︠8e94eb12-8333-47ea-b415-5d04efa82b5ci︠
%md
### Problem 5: Fibonacci numbers

5a. Using your function above, generate a list of the first 100 Fibonacci numbers.

5b. Write code that computes how many of these Fibonacci numbers are prime.

5c. Do you think there are infinitely many prime Fibonacci numbers?  (Back up your claim with data and/or internet searches.)
︡510fcba3-6dea-4cdf-bd4f-3e25c13541e1︡︡{"done":true,"md":"### Problem 5: Fibonacci numbers\n\n5a. Using your function above, generate a list of the first 100 Fibonacci numbers.\n\n5b. Write code that computes how many of these Fibonacci numbers are prime.\n\n5c. Do you think there are infinitely many prime Fibonacci numbers?  (Back up your claim with data and/or internet searches.)"}
︠014c324d-3ac8-4417-9960-0a77736741e2i︠
%html

<font color="red"><h2>10 Points Total</h2>
<p>If their function from problem 4 is broken, use Sage's `fibonacci` function in place of theirs.
</p>
<p>
    Their list of Fibonacci numbers may start at 0 or at 1.
    </p>
<h4> Part A: (3 Points)</h4>
<p>Award:
    <ul>
        <li>3 points if they correctly generated the first 100 Fibonacci numbers with their function</li>
        <li>2 points if their list is missing the 100th Fibonacci number and correct otherwise.</li>
        <li>1 points if they only generate the 100th Fibonacci number.</li>
    </ul>
</p>
<h4> Part B: (4 Points)</h4>
<p>Award:
    <ul>
        <li>4 points if they have the correct number of primes.</li>
        <li>2 points if their code is just slightly broken</li>
    </ul>
</p>
<h4> Part C: (3 Points)</h4>
<p>
    Award:
    <ul>
        <li>3 points if their argument is substantiated by some intuition, reasoning, and a link to at least one article</li>
        <li>2 points if they are missing one of the above</li>
        <li>1 points if they are missing 2 of the above</li>
    </ul>
</p>
</font>
︡32c810f7-11c6-460a-b0ad-4b19f63d6d0d︡︡{"done":true,"html":"\n<font color=\"red\"><h2>10 Points Total</h2>\n<p>If their function from problem 4 is broken, use Sage's `fibonacci` function in place of theirs.\n</p>\n<p>\n    Their list of Fibonacci numbers may start at 0 or at 1.\n    </p>\n<h4> Part A: (3 Points)</h4>\n<p>Award:\n    <ul>\n        <li>3 points if they correctly generated the first 100 Fibonacci numbers with their function</li>\n        <li>2 points if their list is missing the 100th Fibonacci number and correct otherwise.</li>\n        <li>1 points if they only generate the 100th Fibonacci number.</li>\n    </ul>\n</p>\n<h4> Part B: (4 Points)</h4>\n<p>Award:\n    <ul>\n        <li>4 points if they have the correct number of primes.</li>\n        <li>2 points if their code is just slightly broken</li>\n    </ul>\n</p>\n<h4> Part C: (3 Points)</h4>\n<p>\n    Award:\n    <ul>\n        <li>3 points if their argument is substantiated by some intuition, reasoning, and a link to at least one article</li>\n        <li>2 points if they are missing one of the above</li>\n        <li>1 points if they are missing 2 of the above</li>\n    </ul>\n</p>\n</font>"}
︠fdd4a254-cc04-4994-84b6-4c58ad130aa3︠
# Example Solution 5a:

# 3 points
first_100_fib = []
for i in xrange(100):
    first_100_fib.append(fibonacci(i))
first_100_fib

# 3 points
first_100_fib = []
for i in range(1, 101):
    first_100_fib.append(fibonacci(i))
first_100_fib

︡d6a1ea84-008b-4b46-8556-cc449f1b113e︡{"stdout":"[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, 2971215073, 4807526976, 7778742049, 12586269025, 20365011074, 32951280099, 53316291173, 86267571272, 139583862445, 225851433717, 365435296162, 591286729879, 956722026041, 1548008755920, 2504730781961, 4052739537881, 6557470319842, 10610209857723, 17167680177565, 27777890035288, 44945570212853, 72723460248141, 117669030460994, 190392490709135, 308061521170129, 498454011879264, 806515533049393, 1304969544928657, 2111485077978050, 3416454622906707, 5527939700884757, 8944394323791464, 14472334024676221, 23416728348467685, 37889062373143906, 61305790721611591, 99194853094755497, 160500643816367088, 259695496911122585, 420196140727489673, 679891637638612258, 1100087778366101931, 1779979416004714189, 2880067194370816120, 4660046610375530309, 7540113804746346429, 12200160415121876738, 19740274219868223167, 31940434634990099905, 51680708854858323072, 83621143489848422977, 135301852344706746049, 218922995834555169026]\n"}︡{"stdout":"[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, 2971215073, 4807526976, 7778742049, 12586269025, 20365011074, 32951280099, 53316291173, 86267571272, 139583862445, 225851433717, 365435296162, 591286729879, 956722026041, 1548008755920, 2504730781961, 4052739537881, 6557470319842, 10610209857723, 17167680177565, 27777890035288, 44945570212853, 72723460248141, 117669030460994, 190392490709135, 308061521170129, 498454011879264, 806515533049393, 1304969544928657, 2111485077978050, 3416454622906707, 5527939700884757, 8944394323791464, 14472334024676221, 23416728348467685, 37889062373143906, 61305790721611591, 99194853094755497, 160500643816367088, 259695496911122585, 420196140727489673, 679891637638612258, 1100087778366101931, 1779979416004714189, 2880067194370816120, 4660046610375530309, 7540113804746346429, 12200160415121876738, 19740274219868223167, 31940434634990099905, 51680708854858323072, 83621143489848422977, 135301852344706746049, 218922995834555169026, 354224848179261915075]\n"}︡{"done":true}︡{"done":true}︡
︠1d9b8f04-0aed-42a3-b069-ad072bc403de︠
# Example Solution 5b:

# 4 points
count = 0
for fib in first_100_fib:
    if is_prime(fib):
        count += 1

# 4 points
reduce(lambda x, y: int(x) + int(y), map(is_prime, first_100_fib))

# 2 points
count = 0
for fib in first_100_fib:
    if is_prime(fib):
        count = 1
︡60aa4728-1396-4d8a-82a1-a1435f86f797︡︡{"stdout":"12\n"}︡{"done":true}
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
︠501dfaf6-b038-4f0f-9890-4a553e943a07i︠
%html
<font color="red"><h2>10 Points Total</h2>
<h4> Part A: (5 Points)</h4>
<p>Award:
    <ul>
        <li>5 points if they gave at least 3 other names for a "dictionary" and at least 5 other languages.</li>
        <li>3 points if their list gives at least 3 other langauges and only 2 other names.</li>
        <li>1 points if only gave language names but not the names for a "dictionary"</li>
        <li>0 points otherwise</li>
    </ul>
</p>
<h4> Part B: (5 Points total, 0.5 points per example)</h4>
<p>Objects that can't be keys must be mutable and objects that can be keys must be immutable.
</p>
︡2b9b6526-81ce-4c6e-a1c4-50c4aab4bc68︡︡{"done":true,"html":"<font color=\"red\"><h2>10 Points Total</h2>\n<h4> Part A: (5 Points)</h4>\n<p>Award:\n    <ul>\n        <li>5 points if they gave at least 3 other names for a \"dictionary\" and at least 5 other languages.</li>\n        <li>3 points if their list gives at least 3 other langauges and only 2 other names.</li>\n        <li>1 points if only gave language names but not the names for a \"dictionary\"</li>\n        <li>0 points otherwise</li>\n    </ul>\n</p>\n<h4> Part B: (5 Points total, 0.5 points per example)</h4>\n<p>Objects that can't be keys must be mutable and objects that can be keys must be immutable.\n</p>"}
︠22e2be30-fd8b-4483-a61c-014ae8811bca︠
%md
#### Solution 6a:



︡ce89530a-5597-4003-9664-b79576192c20︡
︠e1f980c1-57d1-40de-a761-ebdfdad48a28i︠
%md
#### Example Solutions 6b: (Neither list is comprehensive)
##### Illegal
- Lists
- Sets
- Dictionaries
- Tuples with mutable components
- `bytearray()`

##### Legal
- Strings
- Numbers (int, float, etc)
- Tubles with immutable components
- Pointers to defined functions


︡5de2155b-6f74-4e91-befa-23a1803f0bbf︡︡{"done":true,"md":"#### Example Solutions 6b: (Neither list is comprehensive)\n##### Illegal\n- Lists\n- Sets\n- Dictionaries\n- Tuples with mutable components\n- `bytearray()`\n\n##### Legal\n- Strings\n- Numbers (int, float, etc)\n- Tubles with immutable components\n- Pointers to defined functions"}
︠106c1fa9-73fc-416c-b183-afd1b7ef75b9︠











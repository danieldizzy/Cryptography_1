︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-05-06
### William Stein

## **Lectures 18: Linear algebra (part 3 of 3)**

︡70e03e40-9a05-428f-83b3-b56d801d9744︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-05-06\n### William Stein\n\n## **Lectures 18: Linear algebra (part 3 of 3)**"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md
Today:

1. Reminder: homework and peer grading is due at 6pm tonight.
1. Start screencast (crossing fingers that projector works this time... if not, maybe I'll switch to this windows machine in front of me)
1. (20 minutes) How multimodular echelon form works
1. (5 minutes) Sync stress test
︡0a5e90f1-c65f-4bf9-a989-3487883e54a8︡{"done":true,"md":"Today:\n\n1. Reminder: homework and peer grading is due at 6pm tonight.\n1. Start screencast (crossing fingers that projector works this time... if not, maybe I'll switch to this windows machine in front of me)\n1. (20 minutes) How multimodular echelon form works\n1. (5 minutes) Sync stress test"}
︠394806a8-9482-4ae9-b854-0a193ca048f3i︠
%md
## Multimodular echelon form

I told you before about one way Sage computes the determinant of a large integer (or rational) matrix $A$ by solving $Ax = v$ for a random $v$, and considering the denominator of $x$.  Cramer's rule, turned on its head, is a powerful approach to computing determinants.



︡700c5115-46e4-4716-b88c-41d6d5c3bd7c︡{"done":true,"md":"## Multimodular echelon form\n\nI told you before about one way Sage computes the determinant of a large integer (or rational) matrix $A$ by solving $Ax = v$ for a random $v$, and considering the denominator of $x$.  Cramer's rule, turned on its head, is a powerful approach to computing determinants."}
︠715f3148-7444-4f2c-80c4-b71cbb9f98b3︠
A = random_matrix(ZZ, 1000, x=-10, y=10);  # random 1000x1000 matrix over ZZ with entries in [-10..10]
%time A.det()   # should take around 10 seconds!
︡d52605f1-1f85-4f69-b65a-724b1c15096b︡{"stdout":"1172096739030457809484099809502450364959655827024062189836728991855081750183075132423763529970516305158219215057496322717866013897829659141110783185872685146901793137119436823833587443678879746455318765807744265187263154690090912038172062035136970301326918259969523822266327573151362777552237306308797036666750581394159902980823251030339946051932903064869487968076712315657784156871364172939435485130388152865428844389843511949932516070314520579871647668754587138646049990790944043279187533812936232782437207620334897651238112723330232144256829680385352397461431002563952039373816367581209085787553298612265130712275732953594321399282753304684043698154992748832454622952999709446991333036448882252727451630334303992724914733432462456658827221777323719282099557870138304304988441229342517993913279084042288736357404682621321427433296150940855089500568452577202145662206330167887388000714559897950468501205879183830015061573922621334469665969239280864858311331656691749763696838003264443026984447674018359318373150159588374658574776076655195737140789265023144502459259251270936405987220136660467081830634242132702460652309450554412906189355111764600003629569436933524145361731811702537132699432453580329282298390762182139697975416273206031858316868288104163366061249710206875294489545101546565632384546478810644467711780122714810077843268772030853876612194881047036348031533609925135367920346883455973883422041580493464604070708394698606687924376110596952755819604668331774129375293056327775787369021947337179627051633773257654825785529152854917529806095393388345690956383164132660331519253121438759756252569186450388803398756314613881053811357567704004264554377624338021382842252309621822581002556038003999425916582718274582715227463057729774319255377260680548549874205974436247058016750237332042830216729807727116667393612034098522994896486361628154001240939240355504132228451453649410052479719873962794867885335572831342826182058145954755196377759051347407675833810406211199958243488267437986515514406856389658577363899327317782477424169573356"}︡{"stdout":"\n"}︡{"stdout":"CPU time: 8.87 s, Wall time: 9.01 s\n"}︡{"done":true}︡
︠cab01833-8f63-4ce1-ac75-359e7d42b12ai︠
%md

Here's another central idea in exact linear algebra: **multimodular echelon form.**

︡389954ff-20c4-4863-888f-8eb24ff280f6︡{"done":true,"md":"\nHere's another central idea in exact linear algebra: **multimodular echelon form.**"}
︠95d439b8-0b38-433a-aa3d-d133f0ca9516s︠
set_random_seed(42)
A = random_matrix(QQ, 4, 5, num_bound=10, den_bound=1)
show(A)
︡5da17d4b-82c2-4498-9baf-94901f40052d︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrr}\n-9 &amp; -7 &amp; -9 &amp; -2 &amp; -4 \\\\\n-3 &amp; 6 &amp; -10 &amp; -4 &amp; -3 \\\\\n-8 &amp; -8 &amp; 2 &amp; -10 &amp; -7 \\\\\n6 &amp; -2 &amp; 3 &amp; 3 &amp; -7\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠4f0b3c85-76da-4f81-85af-a9511e7b9215i︠
%md
Imagine with me what it would be like to do Gaussian elimination to put the following matrix $$
into reduced row Echelon form:
︡c9afd228-684a-4998-81ad-ee2f3eb00681︡{"done":true,"md":"Imagine with me what it would be like to do Gaussian elimination to put the following matrix $$\ninto reduced row Echelon form:"}
︠c76e3c78-aec9-4ad7-bf97-5f176db095b6s︠
A[0]*(-3/9) + A[1]
︡e596a6dd-47d3-43e5-9bff-a447cc8d767c︡
︠8f3e5507-bfaa-4eab-b109-255764d82974s︠
A.add_multiple_of_row(1, 0, -3/9)
show(A)
︡1ba3cc5e-774c-4e98-a6e4-3152eea46bc1︡
︠917fd720-f094-42b3-8603-ba4699bee8ees︠
A.add_multiple_of_row(2, 0, -8/9)
show(A)
︡d2d257bd-261a-4f9f-b16d-4dbcdb16cf58︡
︠4e65868e-f617-4e4a-8f6d-30e2d2e7bba9s︠
A.add_multiple_of_row(3, 0, 6/9)
show(A)
︡df6e5261-5dcd-44b0-9261-15ecc4ecfc56︡
︠0506e4e4-1313-452c-b350-774d13736b19s︠
A.rescale_row(0, -1/9)
show(A)
︡49924878-acfa-46ae-838b-90ed51fa078e︡
︠fd252510-3788-4858-bbb3-efe77de78cb8i︠
%md
Then clear the second column:
︡2e5ec938-4cff-43af-8ade-07ede8e782d5︡{"done":true,"md":"Then clear the second column:"}
︠c2903baa-14e4-442a-a8c4-a66f1ee47af0s︠
A.rescale_row(1, 3/25)
show(A)
︡5b2f44d9-000f-4c7d-a6b3-87fda220f9a0︡
︠8c0449aa-4739-4509-8815-069736e45854s︠
A.add_multiple_of_row(0, 1, -7/9)
show(A)
︡718ae459-8996-461a-90b2-fc6c4118e4cc︡
︠ccf46066-3632-4894-a0a3-d5c47938599cs︠
A.add_multiple_of_row(2, 1, 16/9)
show(A)
︡b919ae00-9e14-4d17-85bc-5a2109b947a9︡
︠06dc8066-1983-4d57-ae44-8d3e9597b5ads︠
A.add_multiple_of_row(3, 1, 20/3)
show(A)
︡8416039d-8bc9-4eb1-a68a-ee3fc4e50007︡
︠da2089b1-d65d-493b-90bb-30590c6c2a0fi︠
%md
And it gets bad...
︡f0d08bc4-9167-4002-b6b7-f1d97f8dead6︡{"done":true,"md":"And it gets bad..."}
︠747bab0c-7840-4e3b-854c-b6392985980es︠
show(A.rref())
︡a12f7c1d-9e35-4c0e-bcdf-c589419a2310︡
︠08c21da6-a76f-4895-b404-de634419fd9ai︠
%md
There is a better way, which seems way more complicated but:

- avoids "coefficient explosion"
- enables many other nice optimizations: parallelization, working mod p, asymptotically fast matrix multiplication, etc.
︡8a6e54a0-8c58-4df9-aaf5-7ab1f503cdf5︡{"done":true,"md":"There is a better way, which seems way more complicated but:\n\n- avoids \"coefficient explosion\"\n- enables many other nice optimizations: parallelization, working mod p, asymptotically fast matrix multiplication, etc."}
︠9c083941-5fca-4c9a-bf7c-f3b2f4bb01cdi︠
%md
The **basic idea**:

1. Choose some random prime $p$.
1. Reduce our matrix modulo a prime number $p$ to get $A\pmod{p}$.
1. Compute the reduced row echelon form of $A \pmod{p}$.
1. (*) Lift the result back to the rational numbers to get the right answer.

---

This is potentially better, since the numbers all stay small, instead of getting massive/painful.
︡220e523e-ac11-4242-a73d-db859151fe1a︡{"done":true,"md":"The **basic idea**:\n\n1. Choose some random prime $p$.\n1. Reduce our matrix modulo a prime number $p$ to get $A\\pmod{p}$.\n1. Compute the reduced row echelon form of $A \\pmod{p}$.\n1. (*) Lift the result back to the rational numbers to get the right answer.\n\n---\n\nThis is potentially better, since the numbers all stay small, instead of getting massive/painful."}
︠2665f688-bc8d-4ec1-af7a-376c5ffe0aa4s︠
set_random_seed(42)
A = random_matrix(QQ, 4, 5, num_bound=10, den_bound=1)
show(A)
B = A.change_ring(ZZ).mod(389)
show(B)
︡9c3078ff-c7e5-493f-844a-0d064d250df1︡
︠9f22cdd6-36b4-43e6-a65b-7d9116d0e325s︠
B.rescale_row(0, 1/380)
show(B)
︡aeba5538-01b8-42ad-a940-5486fa5232da︡
︠e5cab6b7-88da-4ca4-a513-792562ed4538s︠
B.add_multiple_of_row(1, 0, -386)
show(B)
︡4f1e139e-3a2a-4885-8d9e-dd820cf22d77︡
︠ab2e9247-0545-43ed-806d-33447b84143cs︠
B.add_multiple_of_row(2, 0, -381)
B.add_multiple_of_row(3, 0, -6)
show(B)
︡de63bdf1-c23a-453f-bb71-13fe5ef078a9︡
︠a6d18291-2870-4bfc-bff1-5d90070142f5s︠
B.rescale_row(1, 1/138)
show(B)
︡7c68cd2a-c67a-4baf-826d-f1734ccd488c︡
︠4b5f2199-31f6-490f-a7a2-46d9a161eafes︠
B.add_multiple_of_row(0,1, -44)
B.add_multiple_of_row(2,1,-344)
B.add_multiple_of_row(3,1,-123)
show(B)
︡5a651739-7b96-4230-89ef-1f976edcc72c︡
︠1ce818a2-5f2b-4f4d-a310-fee7374bf94di︠
%md
Notice -- the numbers aren't **exploding**.  (Please imagine doing all this with a 200x201 matrix, say!)
︡2c5af60b-f990-4162-bd66-65cc0af62b94︡{"done":true,"md":"Notice -- the numbers aren't **exploding**.  (Please imagine doing all this with a 200x201 matrix, say!)"}
︠eaca5579-2b07-4c64-a8f8-f5fd807fcaa4s︠
show(B.rref())
︡a53a60f6-194e-4d4a-80b8-315810b27e71︡
︠ec248aee-340a-4528-8aa2-aac16d0ac94di︠
%md
But... how do you get from B.rref() to A.rref()???
︡7dba4c48-0c72-42b1-ae87-1634b0cd55eb︡{"done":true,"md":"But... how do you get from B.rref() to A.rref()???"}
︠38172da2-4ea5-4848-91d4-ae0e3c5ca041︠
show(A.rref())
︡ec2cdef0-960c-4ecc-b483-2db684a824ee︡
︠3d9928b4-3c5c-4826-af23-658145a76970i︠
%md
Obviously, there isn't enough information:
$$
-\frac{3231}{1600} \mapsto 236 \pmod{389}
$$
but 236 mod 389 doesn't tell you $-\frac{3231}{1600}$...
︡daf025de-07ac-4cf5-8180-56a82cfb86dd︡{"done":true,"md":"Obviously, there isn't enough information:\n$$\n-\\frac{3231}{1600} \\mapsto 236 \\pmod{389}\n$$\nbut 236 mod 389 doesn't tell you $-\\frac{3231}{1600}$..."}
︠637263fa-301d-4303-a852-b8732734bb22s︠
(-3231/1600) % 389
︡18017f3d-8252-436e-96f2-89e2759f640e︡
︠91ef6675-36d5-4d7f-9e98-8bd324cca7c0s︠
Mod(236, 389).lift()
︡8efa24c3-bc3d-4d87-8ca8-a43dbc0079f6︡
︠a5e8a4c6-a676-4f28-9191-95d4cf2c3629i︠
%md
There is an algorithm called rational reconstruction, which is based on Euclidean GCD:

```
rational_reconstruction: compute x/y, where x/y is a rational number
in lowest terms such that the reduction of x/y modulo m is equal to
a and the absolute values of x and y are both <= sqrt{m/2}. If
such x/y exists, that pair is unique and this function returns it.
If no such pair exists, this function raises ZeroDivisionError.
```
︡a03c1a10-8034-4c88-92e4-804568b9c6e0︡{"done":true,"md":"There is an algorithm called rational reconstruction, which is based on Euclidean GCD:\n\n```\nrational_reconstruction: compute x/y, where x/y is a rational number\nin lowest terms such that the reduction of x/y modulo m is equal to\na and the absolute values of x and y are both <= sqrt{m/2}. If\nsuch x/y exists, that pair is unique and this function returns it.\nIf no such pair exists, this function raises ZeroDivisionError.\n```"}
︠cc227253-77e2-47b4-8356-a6e4abed350as︠
Mod(236, 389).rational_reconstruction()
︡836861e5-0e76-47c4-ba5c-c603fc85e4ac︡
︠7a470993-1bac-449d-af95-e17274320347i︠
%md
Still doesn't work.  But if we replace 389 by a bigger prime, it works:
︡389dc0eb-6281-4150-af2a-77b9e8ad2fa2︡{"done":true,"md":"Still doesn't work.  But if we replace 389 by a bigger prime, it works:"}
︠3f465a1e-335a-4172-9a37-b70c1295645es︠
set_random_seed(42)
A = random_matrix(QQ, 4, 5, num_bound=10, den_bound=1)
show(A)
p = next_prime(10^10)
C = A.change_ring(ZZ).mod(p)
show(C)
︡7b7cc3e5-2b6c-4208-bc3f-1a02744e85f9︡
︠1eb18afa-58d8-44f1-9417-f168c5f7d3bbs︠
C = C.rref()
show(C)
︡6be29e0b-7c52-45fa-bdf2-7cbde5bd4f9e︡
︠819ea66a-3330-4a14-90e7-ff7c9fec4273s︠
show(A.rref())
︡e4a53b76-e1d5-47ae-9fde-3f39c48fbc84︡
︠7251a7d0-141c-4c51-bfb2-cfbab40fac29s︠
for i in range(4):
    print C[i,4].rational_reconstruction()

︡7fd5399e-9805-4882-a574-a2ab3190880e︡
︠c8925d67-d1e1-43e8-9317-fdbf0b00a749︠
%md
It worked!

- how do we know for sure?: see Chapter 7 of http://wstein.org/books/modform/stein-modform.pdf
︡17189785-7a4c-4c9e-814b-b297c85eb353︡
︠bff640fc-d390-41b4-bf18-adf0056fc907i︠
%md
Multimodular!

But this sucks -- if the matrix is large, the entries are large, and we have to work modulo an enormous prime with thousands of digits.  NO.

- Instead, work modulo several small primes (possibly at once, in parallel).  Small primes are easier and faster -- they fit in an int or long.
- Use the Chinese Remainder Theorem to combine the rref modulo a bunch of small primes $p_i$ to get a matrix with entries modulo $M = p_1 p_2 \cdots p_n$.
- Use rational reconstruction on that (it works modulo $M$ for any integer $M$).
- And... realize that echelon modulo $p$ can be done via several matrix multiplications!  (Permute the matrix and work with blocks...)
- And... that matrix multiplication is way faster that $O(n^3)$... https://en.wikipedia.org/wiki/Strassen_algorithm
︡1ca9155a-3cea-4391-9733-2ca5e8a3fe74︡{"done":true,"md":"Multimodular!\n\nBut this sucks -- if the matrix is large, the entries are large, and we have to work modulo an enormous prime with thousands of digits.  NO.\n\n- Instead, work modulo several small primes (possibly at once, in parallel).  Small primes are easier and faster -- they fit in an int or long.\n- Use the Chinese Remainder Theorem to combine the rref modulo a bunch of small primes $p_i$ to get a matrix with entries modulo $M = p_1 p_2 \\cdots p_n$.\n- Use rational reconstruction on that (it works modulo $M$ for any integer $M$).\n- And... realize that echelon modulo $p$ can be done via several matrix multiplications!  (Permute the matrix and work with blocks...)\n- And... that matrix multiplication is way faster that $O(n^3)$... https://en.wikipedia.org/wiki/Strassen_algorithm"}
︠ffadd5fb-8681-4a56-9c3b-8bbbb19ba0e0s︠
A = random_matrix(QQ, 500, 501, num_bound=10, den_bound=1)
%time R = A.rref()
︡894b40f0-c9ac-48d0-bef2-33c9f2d1ee04︡
︠e76250ad-8dba-4b57-a3b2-7ca6f245b03es︠
show(R[0,500])
︡4da1d419-884f-4295-8c11-b6b24eb999e1︡
︠02c3b76b-2b0a-44ab-9068-83c5d2707140︠

︡fc73382b-d112-47a3-8942-f18b49c9014e︡
︠a691ea9e-9e7f-4431-8020-bfce5f44ad26i︠
%md
## Sync stress test

Everybody do something here and see what happens (`tmp/2016-05-06-stress.sagews` in the shared project):

https://cloud.sagemath.com/projects/b303c6cf-3159-479b-8aa5-c8d2abaed2bd/files/tmp/2016-05-06-stress.sagews
︡bb7b0d9b-46a7-4e28-ae31-677eada0dfb9︡{"done":true,"md":"## Sync stress test\n\nEverybody do something here and see what happens (`tmp/2016-05-06-stress.sagews` in the shared project):\n\nhttps://cloud.sagemath.com/projects/b303c6cf-3159-479b-8aa5-c8d2abaed2bd/files/tmp/2016-05-06-stress.sagews"}
︠07acce56-0f5c-4990-8621-c603abaa9026︠










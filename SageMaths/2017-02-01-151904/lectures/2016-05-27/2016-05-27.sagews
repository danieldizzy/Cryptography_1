︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-05-27
### William Stein

## **Lectures 27: Number Theoretic Public key crypto (part 3/3) **

Notes:

- 1: Today is the last day of this class.
 - Your peer grading and final assignment are **due at 6pm tonight**.
 - We will tell you what we think your grade should be and why soon, and you can double check that this agrees with what you think (or not respond).

- 2: 20 min -- Elliptic curve Diffie-Hellman, which is perhaps the best possible system for agreeing on a shared secret.

- 3: Finish homework, etc.

︡70e03e40-9a05-428f-83b3-b56d801d9744︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-05-27\n### William Stein\n\n## **Lectures 27: Number Theoretic Public key crypto (part 3/3) **\n\nNotes:\n\n- 1: Today is the last day of this class.\n - Your peer grading and final assignment are **due at 6pm tonight**.\n - We will tell you what we think your grade should be and why soon, and you can double check that this agrees with what you think (or not respond).\n\n- 2: 20 min -- Elliptic curve Diffie-Hellman, which is perhaps the best possible system for agreeing on a shared secret.\n\n- 3: Finish homework, etc."}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md
<img src="koblitz.png" width=450 class="pull-right">

## Elliptic Curve Diffie-Hellman

Neal Koblitz, a UW professor, co-introduced something called **elliptic curve cryptography**, which is possibly the best possible way to do public-key cryptography.  (It's used heavily in bitcoin and web browsers!)

---

Recall, DH in the group $H=(\ZZ/p\ZZ)^*$, where $p$ is a prime number.

- 1: Chose element $g \in H$.
- 2: A and B generate random $a$ and $b$, and send each other $g^a$ and $g^b$.
- 3: The shared secret is $g^{ab}$.
︡44ff8d3a-7094-444f-ac5f-64c157cc376d︡{"done":true,"md":"<img src=\"koblitz.png\" width=450 class=\"pull-right\">\n\n## Elliptic Curve Diffie-Hellman\n\nNeal Koblitz, a UW professor, co-introduced something called **elliptic curve cryptography**, which is possibly the best possible way to do public-key cryptography.  (It's used heavily in bitcoin and web browsers!)\n\n---\n\nRecall, DH in the group $H=(\\ZZ/p\\ZZ)^*$, where $p$ is a prime number.\n\n- 1: Chose element $g \\in H$.\n- 2: A and B generate random $a$ and $b$, and send each other $g^a$ and $g^b$.\n- 3: The shared secret is $g^{ab}$."}
︠3f3df770-ecf7-41f3-9efc-f1194bb9e34ai︠
%md
DH in any multiplicative group $H$.

- 1: Chose element $g \in H$.
- 2: A and B generate random $a$ and $b$, and send each other $g^a$ and $g^b$.
- 3: The shared secret is $g^{ab}$.
︡16799945-2f68-4523-904a-b189be645b89︡{"done":true,"md":"DH in any multiplicative group $H$.\n\n- 1: Chose element $g \\in H$.\n- 2: A and B generate random $a$ and $b$, and send each other $g^a$ and $g^b$.\n- 3: The shared secret is $g^{ab}$."}
︠4b456330-12a3-411c-a50e-9ce2041752f2i︠
%md
DH in an additive group $E$.

- 1: Chose element $P \in E$.
- 2: A and B generate random $a$ and $b$, and send each other $aP = P + \cdots + P$  ($a$ times), and $bP$.
- 3: The shared secret is $abP$.
︡c6886da6-a4a0-42cb-836a-7724b6fa3bc5︡{"done":true,"md":"DH in an additive group $E$.\n\n- 1: Chose element $P \\in E$.\n- 2: A and B generate random $a$ and $b$, and send each other $aP = P + \\cdots + P$  ($a$ times), and $bP$.\n- 3: The shared secret is $abP$."}
︠ef2f1964-fdc2-49c8-8825-ed699d42d328i︠
%md
A bad example of an additive group: $E=\ZZ/p\ZZ$.
︡4293643b-ead2-49d7-a777-5951ac5a777c︡{"done":true,"md":"A bad example of an additive group: $E=\\ZZ/p\\ZZ$."}
︠c78b014e-553b-4e76-b9f8-7063a9200f8es︠
p = next_prime(10^50)
a = ZZ.random_element(p)
b = ZZ.random_element(p)
P = Mod(1, p)
aP = a*P; aP
bP = b*P; bP
a*b*P
︡f5af3e5b-e464-4a29-b41d-814f6cebf737︡{"stdout":"16310698904644024209690286239093230059318574650977\n"}︡{"stdout":"779363879454453275349383521507611751712464450006\n"}︡{"stdout":"93270582869945164299836578988914495124050707151780\n"}︡{"done":true}︡
︠3207f87a-c81c-4237-90a0-a307e0b52834i︠
%md
But easy to crack, since given $aP$ and $P$, can instantly compute $a$!
︡f1f34502-3c25-40b4-8659-f4f6e339dd25︡{"done":true,"md":"But easy to crack, since given $aP$ and $P$, can instantly compute $a$!"}
︠2905c9a1-a3dc-43d9-8bb0-bbc86ba9f610s︠
aP / P
a
%timeit aP / P
︡4752b6d7-b38d-4d80-be93-0ffde23f12e2︡{"stdout":"16310698904644024209690286239093230059318574650977\n"}︡{"stdout":"16310698904644024209690286239093230059318574650977\n"}︡{"stdout":"625 loops, best of 3: 683 ns per loop\n"}︡{"done":true}︡
︠9e46b081-2491-4d51-8176-56fc7ddcf54ai︠
%md
A much better additive abelian group -- the set of points over $\ZZ/p\ZZ$ on an elliptic curve.  E.g.,
$$
  E = \{(x,y) : y^2 \equiv x^3 - 3x + b \pmod{p} \} \cup \{\infty\},
$$
where $p=6277101735386680763835789423207666416083908700390324961279$ and
$b=2455155546008943817740293915197451784769108058161191238065$.
(This is [NIST curve Curve](http://csrc.nist.gov/groups/ST/toolkit/documents/dss/NISTReCur.pdf) [P-192](http://web.mit.edu/Ghudson/dev/third/mozilla/security/nss/lib/freebl/ecl/ecl-curve.h).)

That $E$ can be given the structure of (interesting) additive abelian group is fairly deep, and I won't
explain it to you.
︡6eb944ec-cb3e-459b-877a-344ce10ce239︡{"done":true,"md":"A much better additive abelian group -- the set of points over $\\ZZ/p\\ZZ$ on an elliptic curve.  E.g.,\n$$\n  E = \\{(x,y) : y^2 \\equiv x^3 - 3x + b \\pmod{p} \\} \\cup \\{\\infty\\},\n$$\nwhere $p=6277101735386680763835789423207666416083908700390324961279$ and\n$b=2455155546008943817740293915197451784769108058161191238065$.\n(This is [NIST curve Curve](http://csrc.nist.gov/groups/ST/toolkit/documents/dss/NISTReCur.pdf) [P-192](http://web.mit.edu/Ghudson/dev/third/mozilla/security/nss/lib/freebl/ecl/ecl-curve.h).)\n\nThat $E$ can be given the structure of (interesting) additive abelian group is fairly deep, and I won't\nexplain it to you."}
︠d6618f6c-b6ba-4a2e-aa17-ed180e7262dbs︠
p = 6277101735386680763835789423207666416083908700390324961279
b = int("64210519E59C80E70FA7E9AB72243049FEB8DEECC146B9B1", base=16)
b
E = EllipticCurve(GF(p), [-3, b])
show(E)
︡ca7789cc-62d0-45c0-8e9d-64e33e54e385︡{"stdout":"2455155546008943817740293915197451784769108058161191238065L\n"}︡{"html":"<div align='center'>$\\displaystyle y^2 = x^{3} + 6277101735386680763835789423207666416083908700390324961276 x + 2455155546008943817740293915197451784769108058161191238065 $</div>"}︡{"done":true}︡
︠1fe67af3-87b3-45cd-b913-28a4eb467bd3i︠
%md
<img src="schoof.jpeg" height=300 class="pull-right" style="margin-left:50px;margin-right:50px">

That the cardinality $\#E$ can be computed so quickly is **AMAZING** and deep, and critical
to elliptic curve crypto being practical.  I won't explain this either. The algorithm was
discovered by the guy (Rene Schoof) in the middle in the picture on the right.
︡9fced55d-2349-4a50-86ac-bd4d3bfef103︡{"done":true,"md":"<img src=\"schoof.jpeg\" height=300 class=\"pull-right\" style=\"margin-left:50px;margin-right:50px\">\n\nThat the cardinality $\\#E$ can be computed so quickly is **AMAZING** and deep, and critical\nto elliptic curve crypto being practical.  I won't explain this either. The algorithm was\ndiscovered by the guy (Rene Schoof) in the middle in the picture on the right."}
︠ed582495-5907-481b-9082-22f43c8b27c7s︠
%time r = E.cardinality()
print(r)
is_prime(r)
︡b2fca2cd-3964-460e-a875-1aa1255d2de6︡{"stdout":"CPU time: 0.00 s, Wall time: 0.00 s\n"}︡{"stdout":"6277101735386680763835789423176059013767194773182842284081\n"}︡{"stdout":"True\n"}︡{"done":true}︡
︠d750686c-126b-4aa3-bc32-ed0c03471937s︠
P = E.lift_x(int("188DA80EB03090F67CBF20EB43A18800F4FF0AFD82FF1012",base=16))
P
︡7cb3efee-ba59-4421-94a3-1c65d36dac6a︡{"stdout":"(602046282375688656758213480587526111916698976636884684818 : 174050332293622031404857552280219410364023488927386650641 : 1)\n"}︡{"done":true}︡
︠615db3bf-876b-462b-bb69-a54e5c97ac0as︠
P.order()
︡8b26b7c2-ee5e-473c-9d26-077e75c8e34a︡{"stdout":"6277101735386680763835789423176059013767194773182842284081"}︡{"stdout":"\n"}︡{"done":true}︡
︠0c033cba-97c1-4951-917b-55175803397es︠
Q = P + P; Q
︡b88d9f62-9226-4cfd-8b86-bff049bcb3b6︡{"stdout":"(5369744403678710563432458361254544170966096384586764429448 : 5429234379789071039750654906915254128254326554272718558123 : 1)\n"}︡{"done":true}︡
︠f6c4124e-4227-4e05-a89c-dc4ea019a936s︠
Q + P
︡378ad483-2f91-4b40-a58c-ff349608cff5︡{"stdout":"(2915109630280678890720206779706963455590627465886103135194 : 2946626711558792003980654088990112021985937607003425539581 : 1)\n"}︡{"done":true}︡
︠c4abc897-d407-4e6c-89b2-9719af964d4bs︠
Q[0] + P[0]
︡163b5f09-6aef-4fbf-9b54-15feaeb92458︡{"stdout":"5971790686054399220190671841842070282882795361223649114266\n"}︡{"done":true}︡
︠4a570a53-86df-4490-bbbf-618b88e3ab71s︠
a = ZZ.random_element(r)
aP = a*P; aP
b = ZZ.random_element(r)
bP = b*P; bP
︡0b04da1f-03c7-4d6c-b898-8b4f3ac79471︡{"stdout":"(1010112466383532588414336248664916157523291276178422843136 : 90439193584477906557216196686946163581516859214286736817 : 1)\n"}︡{"stdout":"(3658450568571674634730726759471282568571143029108933055159 : 5045525967726998051020071617599851419165873752343087175548 : 1)\n"}︡{"done":true}︡
︠dcfd544b-74e8-4c9e-a9d7-cf606dec994as︠
secret = a*bP
secret
︡044fe318-fc26-4188-a0ff-7ce1a8155391︡{"stdout":"(96241905756100882823771114885612712126104299717649570085 : 968127913256723831389111723898882476183306459135854559781 : 1)\n"}︡{"done":true}︡
︠3e3de6dc-0b46-493f-8f07-f722321a6b4cs︠
b*aP
︡2bb32711-7ec2-4935-bbcf-cff61e6271c3︡{"stdout":"(96241905756100882823771114885612712126104299717649570085 : 968127913256723831389111723898882476183306459135854559781 : 1)\n"}︡{"done":true}︡
︠836c48ef-c37a-49a5-8fee-8426f004a58es︠
(a*b)*P
︡f69511d8-cbbf-47ed-a5c6-09cc090931b3︡{"stdout":"(96241905756100882823771114885612712126104299717649570085 : 968127913256723831389111723898882476183306459135854559781 : 1)\n"}︡{"done":true}︡
︠f0674bf6-b2e0-480c-86ae-efb5f072783a︠










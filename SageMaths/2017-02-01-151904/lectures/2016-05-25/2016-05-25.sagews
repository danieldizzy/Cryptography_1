︠9a1fbca9-1939-426f-a656-e3c908e742afi︠
%md
# Math 480: Open Source Mathematical Software
### 2016-05-25
### William Stein

## **Lectures 26: Public key cryptography (part 2 of 3): RSA**

Plan:

1. Homework/grading reminder.
2. Next week -- discussion
3. Today: explain RSA
4. Work on homework

︡70e03e40-9a05-428f-83b3-b56d801d9744︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-05-25\n### William Stein\n\n## **Lectures 26: Public key cryptography (part 2 of 3): RSA**\n\nPlan:\n\n1. Homework/grading reminder.\n2. Next week -- discussion\n3. Today: explain RSA\n4. Work on homework"}
︠65840d56-946d-4846-b59a-f77a0d6d7cc3s︠
n = 17*13
n
︡aac09fce-c6dc-40f0-8901-dcbe232587a1︡{"stdout":"221\n"}︡{"done":true}︡
︠34abafbb-c404-4696-ac45-40899cff9ea5s︠
m = n/13
m
︡72a97d65-15eb-4049-8f3e-6dbfd573ef25︡{"stdout":"17\n"}︡{"done":true}︡
︠5be82f71-98aa-4b9f-b530-cd183659be69s︠
is_prime(m)
︡46ff0483-a66c-41bc-ab0a-045979b7bab9︡{"stdout":"False\n"}︡{"done":true}︡
︠7790f3de-d2c5-4d6b-9aab-32f7a4d66bfd︠
# WTF?!
︡81b7b02a-0978-4e2e-ad03-47a67170c631︡
︠8eb78079-54d5-46b8-a188-0305ea592210s︠
parent(m)
︡cb5a2ab7-e1db-4b03-968f-d478ec21a52c︡{"stdout":"Rational Field\n"}︡{"done":true}︡
︠c6ad7bf6-69ca-47de-8429-cfdb98b0b1des︠
type(m)
︡7979bcf7-289e-4c60-a6bd-9f9c72fadc66︡{"stdout":"<type 'sage.rings.rational.Rational'>\n"}︡{"done":true}︡
︠cd8998c6-8a71-47ef-8857-955985d69de1s︠
is_prime(ZZ(m))
︡5f449596-3189-4358-88fb-00b8184d9491︡{"stdout":"True\n"}︡{"done":true}︡
︠d857cae4-f9e0-430e-b528-db6973d3ea2ds︠
m = n//17  # floor division
is_prime(m)
︡91cb3f6f-7fed-494f-a114-31ba5134fd7a︡{"stdout":"True\n"}︡{"done":true}︡
︠07c45ca8-a4eb-41d7-89d4-a150448a0eff︠
%md

WE will not meet next week.  There are 9 assignments.
You will be completely done with everything related to this
class on Friday May 27 at 6pm.
︡3573149a-f9f2-4220-831b-60d82491e688︡{"done":true,"md":"\nWE will not meet next week.  There are 9 assignments.\nYou will be completely done with everything related to this\nclass on Friday May 27 at 6pm."}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md

## Recall... the Diffie-Hellman key exchange:

- A and B agree on $g \in \ZZ/p\ZZ$.
- A and B choose random $a,b$ and send $g^a$ and $g^b$.
- The shared secret is $s = (g^a)^b = g^{ab} = (g^b)^a$, which both A and B can easily compute, but an eavesdropper (presumably) can't.

DH is simple, beautifully symmetric, and is useful for setting up an active secure channel for
temporary communication:

- login to a website, ssh to a remote computer, etc.

---

DH does **not** solve a lot of interesting problems though.  For example:

- B publishes some information -- a "public key"  -- on their website.
- Anybody at any time, and without B having to do anything, can encrypt a message that only B can decrypt.

There is a solution to this problem, which also uses modular arithmetic.   It's completely different than Diffie-Hellman!

︡e3bada25-34b9-4873-8bd9-19ccde6a6931︡{"done":true,"md":"\n## Recall... the Diffie-Hellman key exchange:\n\n- A and B agree on $g \\in \\ZZ/p\\ZZ$.\n- A and B choose random $a,b$ and send $g^a$ and $g^b$.\n- The shared secret is $s = (g^a)^b = g^{ab} = (g^b)^a$, which both A and B can easily compute, but an eavesdropper (presumably) can't.\n\nDH is simple, beautifully symmetric, and is useful for setting up an active secure channel for\ntemporary communication:\n\n- login to a website, ssh to a remote computer, etc.\n\n---\n\nDH does **not** solve a lot of interesting problems though.  For example:\n\n- B publishes some information -- a \"public key\"  -- on their website.\n- Anybody at any time, and without B having to do anything, can encrypt a message that only B can decrypt.\n\nThere is a solution to this problem, which also uses modular arithmetic.   It's completely different than Diffie-Hellman!"}
︠8d687820-dc82-447f-af1f-17df187631c5i︠
%md
<img src="rsa.png" width=500 class="pull-right">
## The RSA Cryptosystem

RSA = Rivest-Shamir-Adleman

(Errata: In the lecture yesterday I said GCHQ secretly also discovered DH, but actually they also discovered RSA.)

---

How RSA works.  There's one basic idea from number theory that you have to know about to understand RSA.

Let $p$ be a prime.  Fermat's Little Theorem says that for every integer $a$ coprime to $p$, we have
$$
a^{p-1} \equiv 1 \pmod{p}?
$$

Try it out:

︡96837725-e29b-451b-b219-551804267252︡{"done":true,"md":"<img src=\"rsa.png\" width=500 class=\"pull-right\">\n## The RSA Cryptosystem\n\nRSA = Rivest-Shamir-Adleman\n\n(Errata: In the lecture yesterday I said GCHQ secretly also discovered DH, but actually they also discovered RSA.)\n\n---\n\nHow RSA works.  There's one basic idea from number theory that you have to know about to understand RSA.\n\nLet $p$ be a prime.  Fermat's Little Theorem says that for every integer $a$ coprime to $p$, we have\n$$\na^{p-1} \\equiv 1 \\pmod{p}?\n$$\n\nTry it out:"}
︠1de8c1a7-3047-4b17-b5ec-529c01273566s︠
p = 23
for a in [1..p]:
    print a, Mod(a, p)^(p-1)
︡a70fb381-cfd9-4ad1-bb3a-a35b3dcde390︡{"stdout":"1 1\n2 1\n3 1\n4 1\n5 1\n6 1\n7 1\n8 1\n9 1\n10 1\n11 1\n12 1\n13 1\n14 1\n15 1\n16 1\n17 1\n18 1\n19 1\n20 1\n21 1\n22 1\n23 0\n"}︡{"done":true}︡
︠27d2fece-7091-4469-85ff-5fb97eee3a32i︠
%md
Proof:  The cardinality of the finite group $(\ZZ/p\ZZ)^*$ is $p-1$ and it's a basic result in group theory
that the order of any element of a group divides the cardinality of the group.

---

Similarly for component $n$, we have that if $\gcd(a,n)=1$, then
$$a^{\varphi(n)} \equiv 1\pmod{n}$$
since  $(\ZZ/n\ZZ)^*$ is a group of order $\varphi(n)$.
︡ad08c531-a3df-44bc-b0f7-d77d2a7913be︡{"done":true,"md":"Proof:  The cardinality of the finite group $(\\ZZ/p\\ZZ)^*$ is $p-1$ and it's a basic result in group theory\nthat the order of any element of a group divides the cardinality of the group.\n\n---\n\nSimilarly for component $n$, we have that if $\\gcd(a,n)=1$, then\n$$a^{\\varphi(n)} \\equiv 1\\pmod{n}$$\nsince  $(\\ZZ/n\\ZZ)^*$ is a group of order $\\varphi(n)$."}
︠cf30abfd-989f-441e-916b-efdb6297ebe6i︠
%md
$\varphi(pq) = (p-1)\cdot (q-1)$
︡dd0c081b-4b1f-4e5b-bfe8-31dc8b2a5670︡{"done":true,"md":"$\\varphi(pq) = (p-1)\\cdot (q-1)$"}
︠0badd0e4-aefb-4157-8417-f210f4859945s︠
n = 20
r = euler_phi(n)
print "phi(n) =",r
for a in range(n ):
    if gcd(a,n) == 1:
        print a, Mod(a, n)^r
︡8336fc2e-10e2-4eb5-bf71-e7908bf2d8b3︡{"stdout":"phi(n) = 8\n"}︡{"stdout":"1 1\n3 1\n7 1\n9 1\n11 1\n13 1\n17 1\n19 1\n"}︡{"done":true}︡
︠468c087a-690b-41ac-aa43-4fad5afa1ab3i︠
%md

So A wants to send a secret message to B.... here's how.

- Step 1. **Setup:**
  - B secretly chooses two large prime numbers $p$ and $q$ at random and an integer $e$, and publishes $n=pq$ and $e$.
  - B knows $p$ and $q$, so B can compute $\varphi(n) = (p-1)(q-1)$, and also an integer $d$ such that $ed \equiv 1\pmod{\varphi(n)}$.  Thus $ed = 1 + k \varphi(n)$ for some $k$.

- Step 2. **Encryption:**
  - A *encodes* the message as an integer $m$ modulo $n$.
  - Then A *encrypts* the message as $t = m^e\pmod{n}$.

- Step 3. **Decryption:**
  - B decrypts the message by using that $t^d = (m^e)^d = m^{ed} \equiv m^{1 + k \varphi(n)} \equiv m \pmod{n}$.

This last step uses that $m^{\varphi(n)} \equiv 1 \pmod{n}$.

︡c4fdea93-4c41-4b70-89be-d9a33b354869︡{"done":true,"md":"\nSo A wants to send a secret message to B.... here's how.\n\n- Step 1. **Setup:**\n  - B secretly chooses two large prime numbers $p$ and $q$ at random and an integer $e$, and publishes $n=pq$ and $e$.\n  - B knows $p$ and $q$, so B can compute $\\varphi(n) = (p-1)(q-1)$, and also an integer $d$ such that $ed \\equiv 1\\pmod{\\varphi(n)}$.  Thus $ed = 1 + k \\varphi(n)$ for some $k$.\n\n- Step 2. **Encryption:**\n  - A *encodes* the message as an integer $m$ modulo $n$.\n  - Then A *encrypts* the message as $t = m^e\\pmod{n}$.\n\n- Step 3. **Decryption:**\n  - B decrypts the message by using that $t^d = (m^e)^d = m^{ed} \\equiv m^{1 + k \\varphi(n)} \\equiv m \\pmod{n}$.\n\nThis last step uses that $m^{\\varphi(n)} \\equiv 1 \\pmod{n}$."}
︠dff05a26-002f-418b-98b9-6b9e14724fc6i︠
%md
Let's try it out!
︡ed788a1c-991f-47f5-b526-54bf13142cb1︡{"done":true,"md":"Let's try it out!"}
︠8b308b5c-5fdf-43ff-8aaa-8b9d8f76d60bs︠
# Step 1: Setup

p = next_prime(ZZ.random_element(2^512))
q = next_prime(ZZ.random_element(2^512))
n = p*q
phi_n = (p-1)*(q-1)
e = 3
while gcd(e,phi_n) != 1:
    e += 1
d = lift(Mod(e, phi_n)^(-1))

print "The public key is"
print "n = ", n
print "e = ", e
︡6a47a690-068c-4fdf-8dfc-1411f8f00fe3︡{"stdout":"The public key is\n"}︡{"stdout":"n =  127717216655786214407091437662444535749240552276188026026427394576414330429686365856608957838339533186272346532099546180841055184529875110136739492764846143081619571729358853474181117437999752291983686706308467169947599687577490140584859209847850830815390728760381909678660035069619669698275354542903092012863\n"}︡{"stdout":"e =  5\n"}︡{"done":true}︡
︠63e5499c-6fce-4ef0-be14-54cf3548b8ecs︠
p
q
︡49780a3a-6a6b-4ccd-bf67-600b1b10494c︡{"stdout":"11463368583518816195787609756897898284888539745888965156407126837019661148148807294536195138721126453036527341500687788272583142912271920887347296047713787\n"}︡{"stdout":"11141333869296376436073235965344735632605597694471878317528404059237811366014809628047379815780769901731658405686156650902790055262464327433289086651767949\n"}︡{"done":true}︡
︠930ae1d0-f1fe-4c3f-a1a5-189c74412884s︠
e*d % phi_n
︡e1a6e227-2fb4-4b9b-a7f1-21df3df1653a︡{"stdout":"1\n"}︡{"done":true}︡
︠da4bda37-098f-4961-918f-44726dd91b78s︠
parent(lift(Mod(7,15)))
︡77908086-b7f5-4672-a7a7-2bba92c869f2︡{"stdout":"Integer Ring\n"}︡{"done":true}︡
︠ba326c21-d748-45b0-9d1b-3a8d0b4b7955s︠
# Step 2: Encryption

## Encode our message as a number in base 26:

mesg = "tectonicxxandxxsharkxxtankxxarexxundercover"
m = 0
for i, a in enumerate(mesg):
    m += 26^i * (ord(a) - ord('a'))
print "m = ", m

## Then encrypt it!

t = Mod(m, n)^e
print "encrypted message = ", t
︡8620bf04-d9c9-4b96-a456-68e9d5023442︡{"stdout":"m =  4613687604820056968581129277215495307270152505781622265499707\n"}︡{"stdout":"encrypted message =  2090455487101886385630288527493944868161255825812498262608543045261122043038713760594614274905819576983374630438491620026262028329203562995688652685487539330950833374308981223237077748047967907563093111920869083873677573237976419884774298362346381558097543809500667583082778777187834544360943888902615307\n"}︡{"done":true}︡
︠c4f8ce0a-8cf6-4405-b300-522090bc94dbs︠
# Step 3: Decryption

r = lift(t^d)
print "decrypted message = ", r

## And decode
z = ''
while r:
    z += chr((r % 26) + ord('a'))
    r = r//26

print "message = ", z
︡e22c9392-9e68-4bc4-a555-aca4554dc6ad︡{"stdout":"decrypted message =  4613687604820056968581129277215495307270152505781622265499707\n"}︡{"stdout":"message =  tectonicxxandxxsharkxxtankxxarexxundercover\n"}︡{"done":true}︡
︠61af17e6-f780-4a1b-bc6e-afb3c07d523ci︠
%md
## Attacking RSA

To attack RSA the observer has to compute $m\pmod{n}$ given $m^e\pmod{n}$.

That is **NOT** the discrete log problem again!   (Why?)

In theory, the attacker has all the information they need.  They know $n$, so they
can "just" factor $n$ to find $p,q$, then compute $\varphi(n)=(p-1)(q-1)$, and $d$ as above.

However... factoring large numbers seems to be really frickin' hard.
︡e18f8547-1301-45a6-9f0b-03d62144ad5e︡{"done":true,"md":"## Attacking RSA\n\nTo attack RSA the observer has to compute $m\\pmod{n}$ given $m^e\\pmod{n}$.\n\nThat is **NOT** the discrete log problem again!   (Why?)\n\nIn theory, the attacker has all the information they need.  They know $n$, so they\ncan \"just\" factor $n$ to find $p,q$, then compute $\\varphi(n)=(p-1)(q-1)$, and $d$ as above.\n\nHowever... factoring large numbers seems to be really frickin' hard."}
︠70fd4be0-c35d-433e-a8a0-669a394db04as︠
n
︡2609020b-1d50-4cdf-8055-caf0a654bd0f︡{"stdout":"127717216655786214407091437662444535749240552276188026026427394576414330429686365856608957838339533186272346532099546180841055184529875110136739492764846143081619571729358853474181117437999752291983686706308467169947599687577490140584859209847850830815390728760381909678660035069619669698275354542903092012863\n"}︡{"done":true}︡
︠cae82d5b-8aca-45b3-8717-3a0abb539cc5s︠
e
︡87a420cf-c1ab-42b4-8dc4-3c1adf25b8b5︡{"stdout":"5\n"}︡{"done":true}︡
︠0cfc154e-41da-41e6-8b96-208065f430das︠
Mod(389, n)^e
︡489409b7-1f75-4af7-bce6-099a95087165︡{"stdout":"8907339520949\n"}︡{"done":true}︡
︠eba384e9-c484-4e3d-867a-fe913aaf74f9s︠
Mod(8907339520949, n)^d
︡26351a37-5492-4d4f-b1a2-a12926013a72︡{"stdout":"389\n"}︡{"done":true}︡
︠8d3cf10a-3e54-4bea-96db-9211dfc49321s︠
is_prime(n)
︡4821e89a-0f12-45c0-8e54-e03af484d586︡{"stdout":"False\n"}︡{"done":true}︡
︠c494300b-d591-4c2b-baa7-e5f21eb91a1es︠
factor(n) # will just waste cpu forever
︡880da15f-e2ca-4adb-8663-65fbfd4f6d21︡{"stderr":"Error in lines 1-1\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 905, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/sage/rings/arith.py\", line 2459, in factor\n    int_ = int_, verbose=verbose)\n  File \"sage/rings/integer.pyx\", line 3511, in sage.rings.integer.Integer.factor (/projects/sage/sage-6.10/src/build/cythonized/sage/rings/integer.c:22694)\n    F = factor_using_pari(n, int_=int_, debug_level=verbose, proof=proof)\n  File \"sage/rings/factorint.pyx\", line 352, in sage.rings.factorint.factor_using_pari (/projects/sage/sage-6.10/src/build/cythonized/sage/rings/factorint.c:6295)\n    p, e = n._pari_().factor(proof=proof)\n  File \"sage/libs/pari/gen.pyx\", line 8977, in sage.libs.pari.gen.gen.factor (/projects/sage/sage-6.10/src/build/cythonized/sage/libs/pari/gen.c:140617)\n    pari_catch_sig_on()\n  File \"sage/ext/interrupt/interrupt.pyx\", line 88, in sage.ext.interrupt.interrupt.sig_raise_exception (/projects/sage/sage-6.10/src/build/cythonized/sage/ext/interrupt/interrupt.c:924)\n    raise KeyboardInterrupt\nKeyboardInterrupt\n"}︡{"done":true}︡
︠09d4329f-6b18-4801-89b6-2a1f9c5046c6i︠
%md
OK, now work on your homework...
︡cd4ccbce-43c2-42aa-a3d9-1ad9e14ae2c3︡{"done":true,"md":"OK, now work on your homework..."}
︠d9265546-2137-4f2b-8d97-c911595fe057︠
︡f3e2fab6-5afc-4983-89f9-b5e225bdc1ca︡
︠d1eb5f71-329f-42f2-9899-4fbe90ff0d32︠

︡9d8f3c0e-ca70-4c47-a0dc-0e2948917ae1︡
︠2c6825ea-a4fb-4b70-b57d-5c1cc9266c73︠

︡efc92fcf-0b25-43a3-b91d-d67d7623b38f︡










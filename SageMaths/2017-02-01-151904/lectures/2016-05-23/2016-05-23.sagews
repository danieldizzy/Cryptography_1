︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-05-23
### William Stein

## **Lectures 25: Public-key crypto (part 1 of 3) **

This week we will talk about public key crypto, as a way to learn some **computational number theory**.

- Modular exponentation
- Diffie-Hellman
- RSA
- Prime Numbers

Today:

1. Homework was collected, peer grading available (no guidelines available yet).
2. New homework that is due Friday at 6pm is now available.
3. Modular exponentation, Diffie-Hellman
︡70e03e40-9a05-428f-83b3-b56d801d9744︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-05-23\n### William Stein\n\n## **Lectures 25: Public-key crypto (part 1 of 3) **\n\nThis week we will talk about public key crypto, as a way to learn some **computational number theory**.\n\n- Modular exponentation\n- Diffie-Hellman\n- RSA\n- Prime Numbers\n\nToday:\n\n1. Homework was collected, peer grading available (no guidelines available yet).\n2. New homework that is due Friday at 6pm is now available.\n3. Modular exponentation, Diffie-Hellman"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md
**TODAY:** Some background so you can start working on your homework.
︡ceeb3f1d-b34d-4e6f-8056-01834d70e4e7︡{"done":true,"md":"**TODAY:** Some background so you can start working on your homework."}
︠58fb3923-eb05-4c1a-8386-59cbe9ea9ec4i︠
%md
## 1. Modular Arithmetic

Let $n$ be a positive integer.  Then
$$
\ZZ/n\ZZ = \{0,1,2,\ldots,n-1\}
$$
is a ring with addition and multiplication modulo $n$.
︡ac4414aa-9bc2-41df-bdc6-d0ed07e762f5︡{"done":true,"md":"## 1. Modular Arithmetic\n\nLet $n$ be a positive integer.  Then\n$$\n\\ZZ/n\\ZZ = \\{0,1,2,\\ldots,n-1\\}\n$$\nis a ring with addition and multiplication modulo $n$."}
︠516120bd-6816-4843-b03d-c73e7862f88as︠
R = IntegerModRing(12)
R
︡a155e9fe-14a4-483f-bcce-e0ce83a45caf︡{"stdout":"Ring of integers modulo 12\n"}︡{"done":true}︡
︠f3b0740a-932e-4c92-bf62-8300c2795622s︠
list(R)
︡7fad4b17-2050-439a-b0c1-97c0ca5dd8d9︡{"stdout":"[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]\n"}︡{"done":true}︡
︠dd1b1573-63ee-4457-afec-de68039a7d02ss︠
R(7) + R(9)
︡b1cf4850-4eb1-4d8d-b5a9-8d54efaaeefd︡{"stdout":"4\n"}︡{"done":true}︡
︠9c977ef0-32cd-47e4-894c-57a1e007a398s︠
R(7) * R(9)
︡cc1ac6ab-82a7-4c55-8835-305842c2a88d︡{"stdout":"3\n"}︡{"done":true}︡
︠d6374c0f-df68-422a-b973-00ff68e52bf6s︠
7 + 9
︡eecfbd48-9c65-4838-b145-99b530013a9a︡{"stdout":"16\n"}︡{"done":true}︡
︠00ebe866-f04b-43c4-b9da-e6a9475b81c0s︠
16 % 12
︡5c195632-fd98-4b70-994b-0a4661b158b1︡{"stdout":"4\n"}︡{"done":true}︡
︠c7dff0e6-127c-46a5-ac94-778ae916e92cs︠
R(16)
︡f126eb67-8211-458e-88b9-b561360cc19b︡{"stdout":"4\n"}︡{"done":true}︡
︠7bc7a2c2-bd43-4b47-a0d3-b7315a486d84s︠
# shorthand way to make a "number modulo 12"
a = Mod(7, 12)
a
︡63affbfb-95b3-44ec-956f-b722b97c7212︡{"stdout":"7\n"}︡{"done":true}︡
︠a7224f57-15bd-45ec-8e08-8d8f26ad096bs︠
parent(a)
︡b6c7eed1-3fa2-4b09-823b-201aa0162320︡{"stdout":"Ring of integers modulo 12\n"}︡{"done":true}︡
︠e6c27a1a-2fce-4d3d-a744-22aae8be08cbs︠
type(a)
︡c8716586-4fd8-4d0e-86d8-040e8fb6f1fb︡{"stdout":"<type 'sage.rings.finite_rings.integer_mod.IntegerMod_int'>\n"}︡{"done":true}︡
︠6898bada-37a6-4502-a5eb-cc9030150824i︠
%md
Application: What are the last 3 digits of $n = 123456789^{123456789}$?

Solution: compute $n$ modulo 1000:

︡09a2bdbf-2d3a-46d0-8df4-8e3a25e75d69︡{"done":true,"md":"Application: What are the last 3 digits of $n = 123456789^{123456789}$?\n\nSolution: compute $n$ modulo 1000:"}
︠5591f194-1d15-46b3-af53-3c4dfc11e76es︠
93824509834095838450 % 1000
︡56615a3e-0a72-4fcb-8aa2-dac8053e393f︡{"stdout":"450\n"}︡{"done":true}︡
︠19b4bce9-ec4d-46cf-9423-4a48b6e99294s︠
a = Mod(7, 12);
a
︡4b1979ee-2279-4c0d-8329-bb73d00180b3︡{"stdout":"7\n"}︡{"done":true}︡
︠993c50c9-dbdd-456b-80be-07fc1059ca8as︠
parent(a)
︡ca458d7a-5dbf-407d-b928-b745afa4d061︡{"stdout":"Ring of integers modulo 12\n"}︡{"done":true}︡
︠b89eb38c-e96b-46b6-a875-569e2b7bc861s︠
type(a)
︡6b1ae0a2-c478-42d0-a72d-04eaa04e2c18︡{"stdout":"<type 'sage.rings.finite_rings.integer_mod.IntegerMod_int'>\n"}︡{"done":true}︡
︠b41e3344-c0e1-4c1e-b5d5-541a73aea6fds︠
a = Mod(123456789, 1000)
a
︡38a6f094-c7a5-4a9e-81c9-decc5c3be32e︡{"stdout":"789\n"}︡{"done":true}︡
︠6d5f5961-4964-4113-a8be-9fb229b86be3︠
a * a * a * .... * a    # 123456789 times
︠7759006c-4949-4945-9065-c85fb901f8a8s︠
789 * 789
︡9a5bcdf1-47be-42dc-90c3-1616ef652330︡{"stdout":"622521\n"}︡{"done":true}︡
︠7c3e09fc-1fcb-46f7-bb55-9519b2945263s︠
a*a
︡67524393-c827-44b1-889a-dfc42677506b︡{"stdout":"521\n"}︡{"done":true}︡
︠477bc400-a85f-4296-969b-f61a07093b32s︠
%timeit Mod(123456789, 1000)^123456789
︡ef830c3d-8fb8-4ef3-9f21-fa0637500ad0︡{"stdout":"625 loops, best of 3: 5.89 µs per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠aad21986-22e9-49f6-b571-45cdb38677ces︠
%timeit Mod(123456789, 92384082340982034802834092840982093480238402834)^123456789
︡bfa5a8e8-017f-48a1-b7cc-253a6d4a25a6︡{"stdout":"625 loops, best of 3: 9.7 µs per loop\n"}︡{"done":true}︡
︠ee6258d2-0679-4a47-9668-c4839e03e33ai︠
%md
How does this work.

1. Write $a = 123456789$ in binary.
2. View $a^{123456789}$ as multiplying together a bunch of numbers of the form $a^{2^i}$, which we get by repeating squaring, using that $a^{2^i} = ((a^2)^2\ldots)^2$.
︡739e947e-cd27-4f7f-81fb-ab280965427c︡{"done":true,"md":"How does this work.\n\n1. Write $a = 123456789$ in binary.\n2. View $a^{123456789}$ as multiplying together a bunch of numbers of the form $a^{2^i}$, which we get by repeating squaring, using that $a^{2^i} = ((a^2)^2\\ldots)^2$."}
︠9b32796d-dfaf-460c-80fb-ca21e966fb40s︠
123456789.bits()
︡0ad4e0a5-bc0f-4519-9ef4-3241d741de1b︡{"stdout":"[1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1]\n"}︡{"done":true}︡
︠6fc4492e-088f-4ca4-8f95-4153370d98cfi︠

%md
<img src="http://www.datensicherheit.de/wp-content/uploads/2010-06-luxemburg-kahn-diffie.jpg" width=400 class="pull-right">

## 2. Diffie-Hellman

This is a very widely used algorithm that allows two programs  A and B that communicate over an unsecured channel
to agree on a shared secret.  Here's how it works.

- Step 1. A and B agree on a prime number $p$ and a number $g$ modulo $p$.
- Step 2. A generates a random number $a<p$ and sends $g^a\pmod{p}$.
- Step 3. B generates a random number $b<p$ and sends $g^b\pmod{p}$.
- Step 4. A computes the shared secret $s = (g^a)^b\pmod{p}$.
- Step 5. B computes the shared secret $s = (g^b)^a\pmod{p}$.

A and B agree on the same secret because $(g^a)^b = g^{ab} = (g^b)^a$.

︡cd78bc41-fc87-448b-bb5e-ca39a7e8934e︡{"done":true,"md":"<img src=\"http://www.datensicherheit.de/wp-content/uploads/2010-06-luxemburg-kahn-diffie.jpg\" width=400 class=\"pull-right\">\n\n## 2. Diffie-Hellman\n\nThis is a very widely used algorithm that allows two programs  A and B that communicate over an unsecured channel\nto agree on a shared secret.  Here's how it works.\n\n- Step 1. A and B agree on a prime number $p$ and a number $g$ modulo $p$.\n- Step 2. A generates a random number $a<p$ and sends $g^a\\pmod{p}$.\n- Step 3. B generates a random number $b<p$ and sends $g^b\\pmod{p}$.\n- Step 4. A computes the shared secret $s = (g^a)^b\\pmod{p}$.\n- Step 5. B computes the shared secret $s = (g^b)^a\\pmod{p}$.\n\nA and B agree on the same secret because $(g^a)^b = g^{ab} = (g^b)^a$."}
︠f70bd2fa-5f63-457f-9d37-d83d44f51089i︠
%md
### Security

The only information transmitted publicly is $g$, $p$, $g^a\pmod{p}$, and $g^b\pmod{p}$.

An adversary (say C) can do a few things:

- 1. Since C knows $g$, $p$, $g^a\pmod{p}$, it can -- **in theory** compute $a$!  Just try powers of $g$ until $g^t\pmod{p} = g^a\pmod{p}$.   Also, there are many much more sophisticated algorithms to solve this **discrete logarithm problem** $a = \log_g(g^a\pmod{p})$.

- 2. Maybe C can trick A and B into thinking they are talking to each other, but they are really talking to C.  (Major government agencies are well positioned to do this.)

- 3. Trick people into thinking $p$ is prime when it isn't, and use this to create a backdoor.  See homework problem 5.
︡53575c04-f6d0-4db0-a031-ab1a4b6881dd︡{"done":true,"md":"### Security\n\nThe only information transmitted publicly is $g$, $p$, $g^a\\pmod{p}$, and $g^b\\pmod{p}$.\n\nAn adversary (say C) can do a few things:\n\n- 1. Since C knows $g$, $p$, $g^a\\pmod{p}$, it can -- **in theory** compute $a$!  Just try powers of $g$ until $g^t\\pmod{p} = g^a\\pmod{p}$.   Also, there are many much more sophisticated algorithms to solve this **discrete logarithm problem** $a = \\log_g(g^a\\pmod{p})$.\n\n- 2. Maybe C can trick A and B into thinking they are talking to each other, but they are really talking to C.  (Major government agencies are well positioned to do this.)\n\n- 3. Trick people into thinking $p$ is prime when it isn't, and use this to create a backdoor.  See homework problem 5."}
︠fbf2f267-6664-47ae-adc3-cdab57cc6f62i︠
%md
Let's try it out!
︡daccce94-ff95-4cff-aabf-f1577a3b6cff︡{"done":true,"md":"Let's try it out!"}
︠e119480e-749d-4c47-8bbc-c26f191ab7bes︠
set_random_seed(0)
# - Step 1. A and B agree on a prime number $p$ and a number $g$ modulo $p$.
p = next_prime(10^100); g = Mod(2,p)
print "p=",p," g=",g
︡55544c33-8bf4-42dc-b0ca-5c819b08db72︡{"stdout":"p= 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000267  g= 2\n"}︡{"done":true}︡
︠15d2f1d0-6dda-4282-9b96-4caa262b57b1s︠
#  - Step 2. A generates a random number $a<p$ and sends $g^a\pmod{p}$.
a = ZZ.random_element(p)
A_sends = g^a
A_sends
︡142d6ec2-d79a-44ee-9acd-f64826cf1eb2︡{"stdout":"8961546464985269483822041230404389831420657654799728216338186719614899911445736678190040845169987389\n"}︡{"done":true}︡
︠7449828b-7c09-4271-8034-f3b9048bb5c9s︠
# - Step 3. B generates a random number $b<p$ and sends $g^b\pmod{p}$.
b = ZZ.random_element(p)
B_sends = g^b
B_sends
︡39365a2c-bd74-4e01-8c45-b18a37516508︡{"stdout":"7053072479286247027201564776945727348200942808430656454420058391762871054812738854863369154408818466\n"}︡{"done":true}︡
︠575fb15a-87c1-4481-8a88-26de8e92b44fs︠
# - Step 4. A computes the shared secret $s = (g^a)^b\pmod{p}$.
A_computes = B_sends^a
A_computes
︡5e17eeb1-0caf-4329-b60d-f61e7d6fccdb︡{"stdout":"2518846831889549883379731685666706951656662994225272047639545644667304086899633914709004318923164641\n"}︡{"done":true}︡
︠7c053c94-b2e9-4f2e-a758-e7e247ffaa74s︠
# - Step 5. B computes the shared secret $s = (g^b)^a\pmod{p}$.
B_computes = A_sends^b
B_computes
︡72b75fe4-f487-48c2-82ab-9031813df162︡{"stdout":"2518846831889549883379731685666706951656662994225272047639545644667304086899633914709004318923164641\n"}︡{"done":true}︡
︠6285e6f8-f765-4e1d-a80e-77346cb169f1︠











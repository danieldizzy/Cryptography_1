︠4189f872-59c9-4402-b7ef-7e1cfb5e84b6i︠
%md
# Math 480 - Homework DUE 2016-05-27: Number Theoretic Public-Key Cryptography

## Due 6pm on May 27, 2016

### (Authors of this homework: John Jeng, Jonathon Lee, William Stein)
︡f8a01199-1fe9-4723-8641-9d5fc14ef4c9︡{"done":true,"md":"# Math 480 - Homework DUE 2016-05-27: Number Theoretic Public-Key Cryptography\n\n## Due 6pm on May 27, 2016\n\n### (Authors of this homework: John Jeng, Jonathon Lee, William Stein)"}
︠c84c1444-debf-4362-9cce-d138ec1c8f8di︠
%md
## There are **five** problems. All problems have equal weight.

︡ad858b8b-554c-4289-93ef-b8113b20b933︡{"done":true,"md":"## There are **five** problems. All problems have equal weight."}
︠12cda97f-5673-4128-a82e-feeb1ee607d2i︠
%md
### Problem 1 -- Large Exponents
**Part A:** Let $p$ be the next prime after $10^3$ and $q$ the next prime after $p$.
- A.1. What are the last 5 digits of $p^q$?
- A.2. What is $p^{q}\pmod{10^5}$?
- A.3. How many decimal digits does $p^q$ have?
- A.4. What is $\log_{10}(p^q)$?

**Part B:** Let $p$ be the next prime after $10^{100}$ and $q$ the next prime after $p$.
- B.1. What are the last 5 digits of $p^q$?
- B.2. How many decimal digits does $p^q$ have?
- B.3. How does the number of decimal digits of $p^q$ compare to typical estimates for the number of atoms in the universe?



︡054854a7-05d6-4adc-8997-af96a48a917f︡{"done":true,"md":"### Problem 1 -- Large Exponents\n**Part A:** Let $p$ be the next prime after $10^3$ and $q$ the next prime after $p$.\n- A.1. What are the last 5 digits of $p^q$?\n- A.2. What is $p^{q}\\pmod{10^5}$?\n- A.3. How many decimal digits does $p^q$ have?\n- A.4. What is $\\log_{10}(p^q)$?\n\n**Part B:** Let $p$ be the next prime after $10^{100}$ and $q$ the next prime after $p$.\n- B.1. What are the last 5 digits of $p^q$?\n- B.2. How many decimal digits does $p^q$ have?\n- B.3. How does the number of decimal digits of $p^q$ compare to typical estimates for the number of atoms in the universe?"}
︠f536bf11-c085-4af3-b435-79efd62bb80e︠
# Part A:
p =
q =
# A.1


# A.2


# A.3


# A.4

︠850adec3-e931-4b07-aab7-1881ffea4fb7︠
# Part B:
p =
q =
# B.1


# B.2


# B.3



︠4a0872de-7a85-4f2a-9c9e-3ad5fcc04cf1i︠
%md
### Problem 2 -- (Un)Friendly Primes
The following integer $n=pq$ is a product of two primes that are very close to each other.  Find $p$ and $q$.

Hint: Look up the [Fermat factorization method](https://en.wikipedia.org/wiki/Fermat%27s_factorization_method) or (really slow but it will work) compute $k = \lceil \sqrt{n}\rceil $ and use a for loop to search for a prime of $n$ that is close to $k$.

︡b071ee19-5b8a-4b49-a39f-2be84cc0c17b︡{"done":true,"md":"### Problem 2 -- (Un)Friendly Primes\nThe following integer $n=pq$ is a product of two primes that are very close to each other.  Find $p$ and $q$.\n\nHint: Look up the [Fermat factorization method](https://en.wikipedia.org/wiki/Fermat%27s_factorization_method) or (really slow but it will work) compute $k = \\lceil \\sqrt{n}\\rceil $ and use a for loop to search for a prime of $n$ that is close to $k$."}
︠4bd741f2-9e2e-4052-b859-31bf5a37be72︠
# GIVEN:
n = 1589778526515925949592554996185602616583051281527497329806389286938676175550849931602819490640533993421299436233863010785836220708627819896428802655705196368985741169061589392187723374511476815445516292269023831265631925174400849066851






︠fac6f630-0734-418a-b101-29aad891ca60i︠
%md
### Problem 3 -- Good Ol' Quadratic Formula
The following integer $n=pq$ is a product of two primes:

$n = 2260138526203405784941654048610197513508038915719776718321197768109445641817966676608593121306582577250631562886676970448070001811149711863002112487928199487482066070131066586646083327982803560379205391980139946496955261$

Also, $\varphi(n) = 2260138526203405784941654048610197513508038915719776718321197768109445641817966676608593121306582577250631562785111331930530840946832981377988381567455225122328078099291756141737769220473508429103166881380981562676242972$

Find $p$ and $q$.

Hint: Use the quadratic formula!  You know that $(x-p)(x-q) = x^2 - (p+q)x + pq$, you know $pq$, and you also know $\varphi(pq)=(p-1)(q-1) = pq - p - q + 1$.

︡fd5b3f6a-eeb1-405c-9bcc-8580dd75de8a︡{"done":true,"md":"### Problem 3 -- Good Ol' Quadratic Formula\nThe following integer $n=pq$ is a product of two primes:\n\n$n = 2260138526203405784941654048610197513508038915719776718321197768109445641817966676608593121306582577250631562886676970448070001811149711863002112487928199487482066070131066586646083327982803560379205391980139946496955261$\n\nAlso, $\\varphi(n) = 2260138526203405784941654048610197513508038915719776718321197768109445641817966676608593121306582577250631562785111331930530840946832981377988381567455225122328078099291756141737769220473508429103166881380981562676242972$\n\nFind $p$ and $q$.\n\nHint: Use the quadratic formula!  You know that $(x-p)(x-q) = x^2 - (p+q)x + pq$, you know $pq$, and you also know $\\varphi(pq)=(p-1)(q-1) = pq - p - q + 1$."}
︠b2339bea-14bb-4115-918f-516265d8139e︠
# GIVEN:
n = 2260138526203405784941654048610197513508038915719776718321197768109445641817966676608593121306582577250631562886676970448070001811149711863002112487928199487482066070131066586646083327982803560379205391980139946496955261

phi_n = 2260138526203405784941654048610197513508038915719776718321197768109445641817966676608593121306582577250631562785111331930530840946832981377988381567455225122328078099291756141737769220473508429103166881380981562676242972


︠e5158144-bfe0-4221-a938-99bc999ac8c4︠

︠74f223d7-be1a-4c85-af5d-acdaeb4e4bcb︠



︠f1abac05-9788-4bfe-9e9d-3145ce00f779i︠
%md
### Problem 4 -- Not so Random

> "We performed a large-scale study of RSA and DSA cryptographic keys in use on the Internet and discovered that significant numbers of keys are insecure due to insufficient randomness.  **We found that 5.57% of TLS hosts and 9.60% of SSH hosts share public keys in an apparently vulnerable manner...**" -- see https://factorable.net/

---

The following two integers $n_1$ and $n_2$ are RSA moduli that were randomly generated by Obama and Hillary.  It turnes out they weren't random enough in choosing $p$ and $q$, so both $n_1$ and $n_2$ ended up with the same prime $p$ (ie. $n_1 = p\cdot q_1$ and $n_2 = p\cdot q_2$). Factor both $n_1$ and $n_2$.

$n1 = 659481018095533082202091938200108415755014729057676791347712890248315591033900561408617722880031918351642894659648847446299804878752991957454382452262126117247899544055830787469355702640917$<br/>
$n2 = 223986669883088680371243199849357901244618017803455583407479556994195127176620839487674896299802613306139834600384565144314609009904613010988914195091967322701239166323910725912324556645705719757$

︡2fb0b94c-1297-4bfa-b1b1-73c6a6c2567d︡{"done":true,"md":"### Problem 4 -- Not so Random\n\n> \"We performed a large-scale study of RSA and DSA cryptographic keys in use on the Internet and discovered that significant numbers of keys are insecure due to insufficient randomness.  **We found that 5.57% of TLS hosts and 9.60% of SSH hosts share public keys in an apparently vulnerable manner...**\" -- see https://factorable.net/\n\n---\n\nThe following two integers $n_1$ and $n_2$ are RSA moduli that were randomly generated by Obama and Hillary.  It turnes out they weren't random enough in choosing $p$ and $q$, so both $n_1$ and $n_2$ ended up with the same prime $p$ (ie. $n_1 = p\\cdot q_1$ and $n_2 = p\\cdot q_2$). Factor both $n_1$ and $n_2$.\n\n$n1 = 659481018095533082202091938200108415755014729057676791347712890248315591033900561408617722880031918351642894659648847446299804878752991957454382452262126117247899544055830787469355702640917$<br/>\n$n2 = 223986669883088680371243199849357901244618017803455583407479556994195127176620839487674896299802613306139834600384565144314609009904613010988914195091967322701239166323910725912324556645705719757$"}
︠2384ed32-032f-4695-9be6-d7471064afd0s︠
# GIVEN:
n1 = 659481018095533082202091938200108415755014729057676791347712890248315591033900561408617722880031918351642894659648847446299804878752991957454382452262126117247899544055830787469355702640917
n2 = 223986669883088680371243199849357901244618017803455583407479556994195127176620839487674896299802613306139834600384565144314609009904613010988914195091967322701239166323910725912324556645705719757

# sage will *NOT* factor these...
# len(n1.bits()) = 628
# len(n2.bits()) = 648

# You code goes here ...



︡33126ca4-a4c0-4236-a436-62e4531b1bb8︡{"done":true}︡
︠87c605a8-adce-45be-9cbb-0a798e19fd5ai︠

%md
### Problem 5 -- "Year-old bug ruined crypto!"

The article "[Socat slams backdoor, sparks thrilling whodunit -- Year-old bug ruined crypto](http://www.theregister.co.uk/2016/02/03/socat_backdoor_fix/)" is about a potential backdoor in some networking software [called Socat](http://www.dest-unreach.org/socat/), in which "the SSL implementation uses a non-prime number as its Diffie-Hellman $p$-parameter".  See also [Socat? What? (timeline of events)](https://github.com/mimoo/Diffie-Hellman_Backdoor/blob/master/socat_reverse/README.md).

Let $p=143319364394905942617148968085785991039146683740268996579566827015580969124702493833109074343879894586653465192222251909074832038151585448034731101690454685781999248641772509287801359980318348021809541131200479989220793925941518568143721972993251823166164933334796625008174851430377966394594186901123322297453$
be the Diffie-Hellman parameter actually used in socat.

- 5.a Use the `is_prime` function to show that $p$ is not prime.
- 5.b Use the `trial_division` function to find a divisor $d$ of $p$, and let $p_2=p/d$ (in Sage, type `p2=p//d` or `p2=ZZ(p/d)` to get an integer rather than a rational number).  Verify that $p_2$ is not prime.
- 5.c Use the `trial_division` function to find a divisor $d$ of $p_2$, and let $p_3=p_2/d$.  Verify that $p_3$ is not prime.
- 5.d As far as I can tell searching online (e.g., [here](http://www.mersenneforum.org/showthread.php?t=20968&page=3)), further factoring of $p_3$ is an unsolved problem.   How many binary bits does the number $p_3$ have?    How does this compare to the number of bits of the current world record RSA factorization (which you can [find here](https://en.wikipedia.org/wiki/RSA_Factoring_Challenge), by Sage developer Paul Zimmerman)?
- 5.e Let $X$ be the set of prime numbers $q$ that are obtained from $p$ by changing exactly one decimal digit.  How many elements are in $X$?  (Exclude changing the first digit to 0.)
︡75b3bf41-bf09-458f-9cba-dce8a7c5e4ba︡{"done":true,"md":"### Problem 5 -- \"Year-old bug ruined crypto!\"\n\nThe article \"[Socat slams backdoor, sparks thrilling whodunit -- Year-old bug ruined crypto](http://www.theregister.co.uk/2016/02/03/socat_backdoor_fix/)\" is about a potential backdoor in some networking software [called Socat](http://www.dest-unreach.org/socat/), in which \"the SSL implementation uses a non-prime number as its Diffie-Hellman $p$-parameter\".  See also [Socat? What? (timeline of events)](https://github.com/mimoo/Diffie-Hellman_Backdoor/blob/master/socat_reverse/README.md).\n\nLet $p=143319364394905942617148968085785991039146683740268996579566827015580969124702493833109074343879894586653465192222251909074832038151585448034731101690454685781999248641772509287801359980318348021809541131200479989220793925941518568143721972993251823166164933334796625008174851430377966394594186901123322297453$\nbe the Diffie-Hellman parameter actually used in socat.\n\n- 5.a Use the `is_prime` function to show that $p$ is not prime.\n- 5.b Use the `trial_division` function to find a divisor $d$ of $p$, and let $p_2=p/d$ (in Sage, type `p2=p//d` or `p2=ZZ(p/d)` to get an integer rather than a rational number).  Verify that $p_2$ is not prime.\n- 5.c Use the `trial_division` function to find a divisor $d$ of $p_2$, and let $p_3=p_2/d$.  Verify that $p_3$ is not prime.\n- 5.d As far as I can tell searching online (e.g., [here](http://www.mersenneforum.org/showthread.php?t=20968&page=3)), further factoring of $p_3$ is an unsolved problem.   How many binary bits does the number $p_3$ have?    How does this compare to the number of bits of the current world record RSA factorization (which you can [find here](https://en.wikipedia.org/wiki/RSA_Factoring_Challenge), by Sage developer Paul Zimmerman)?\n- 5.e Let $X$ be the set of prime numbers $q$ that are obtained from $p$ by changing exactly one decimal digit.  How many elements are in $X$?  (Exclude changing the first digit to 0.)"}
︠ea71b618-e77d-486d-b60d-439fb3e13bb4︠
# The "prime" p:
p =143319364394905942617148968085785991039146683740268996579566827015580969124702493833109074343879894586653465192222251909074832038151585448034731101690454685781999248641772509287801359980318348021809541131200479989220793925941518568143721972993251823166164933334796625008174851430377966394594186901123322297453












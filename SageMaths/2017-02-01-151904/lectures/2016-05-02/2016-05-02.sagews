︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-05-02
### William Stein

## **Lectures 16: Linear Algebra**

︡70e03e40-9a05-428f-83b3-b56d801d9744︡︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-05-02\n### William Stein\n\n## **Lectures 16: Linear Algebra**"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠

%md
Today:

- New homework assignment available
- Start screencast
- References:
  - Linear algebra quickref: https://wiki.sagemath.org/quickref?action=AttachFile&do=get&target=quickref-linalg.pdf
  - Linear algebra reference manual: http://doc.sagemath.org/html/en/reference/index.html#linear-algebra
  - 1.5, 4.4, 4.16, of *Sage For Undergraduates*: http://www.gregorybard.com/Sage.html
- How to make matrices and vectors
- Sage has: Enormous amount of very fast functionality written by researchers, and some VERY slow functionality mixed in made by teachers, with no cleer warning either way.  Also functionality that was written by researchers that used to be fast, but was "accidentally" made slow by somebody later.
︡05fde307-c938-4b55-b65c-3f4d0e3f9145︡︡{"done":true,"md":"Today:\n\n- New homework assignment available\n- Start screencast\n- References:\n  - Linear algebra quickref: https://wiki.sagemath.org/quickref?action=AttachFile&do=get&target=quickref-linalg.pdf\n  - Linear algebra reference manual: http://doc.sagemath.org/html/en/reference/index.html#linear-algebra\n  - 1.5, 4.4, 4.16, of *Sage For Undergraduates*: http://www.gregorybard.com/Sage.html\n- How to make matrices and vectors\n- Sage has: Enormous amount of very fast functionality written by researchers, and some VERY slow functionality mixed in made by teachers, with no cleer warning either way.  Also functionality that was written by researchers that used to be fast, but was \"accidentally\" made slow by somebody later."}
︠51d944d4-5522-4feb-859f-816c57bd4d86︠
# You should read this
matrix?
# and this
vector?
︡828d1a9f-1a8b-43df-a718-843b30bab7f3︡
︠eb774a32-0ab1-4a2e-9bf4-20d0f51f5aa7s︠
#A = matrix(2, 3, [[1,2,3], [sqrt(2),5,pi]])
A = matrix(2, 3, [1,2,3,  sqrt(2),5,pi])
A
︡a0967cb0-51ac-4522-9dad-4d46be35dfef︡︡{"stdout":"[      1       2       3]\n[sqrt(2)       5      pi]\n"}︡{"done":true}
︠b7d861ae-2575-48cf-bb52-4611fe8aa55f︠
show(A)
︡c340e7c8-dc45-4b2e-819f-ef4ddeb99224︡︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 2 &amp; 3 \\\\\n\\sqrt{2} &amp; 5 &amp; \\pi\n\\end{array}\\right)$</div>"}︡{"done":true}
︠8172e329-2082-4973-acef-450e5a565c3as︠
v = vector([1, sqrt(2), pi^2]); v
︡b9c86c78-ed4d-4695-9dbe-9c1b4e807201︡︡{"stdout":"(1, sqrt(2), pi^2)"}︡{"stdout":"\n"}︡{"done":true}
︠afec1e0b-f753-448b-8d19-be35ce0c4006︠
show(v)
︡a22b8da8-d5ab-416d-b2c3-7b66c40c1e3a︡︡{"html":"<div align='center'>$\\displaystyle \\left(1,\\,\\sqrt{2},\\,\\pi^{2}\\right)$</div>"}︡{"done":true}
︠2cf12d59-b141-4ac2-9bcc-7f16228bfbee︠
A*v
︡fee8bd13-7ce2-4314-bdb7-86337e575ea9︡︡{"stdout":"(3*pi^2 + 2*sqrt(2) + 1, pi^3 + 6*sqrt(2))\n"}︡{"done":true}
︠39144bcd-f6ae-48f6-83f7-fdfc9c959174s︠
v * A.transpose()
︡3325d4c4-a0a8-4062-b46e-f6d21b164f96︡︡{"stdout":"(3*pi^2 + 2*sqrt(2) + 1, pi^3 + 6*sqrt(2))\n"}︡{"done":true}
︠905740e4-e552-4f47-a755-166cdd37b6b8s︠
show(A.echelon_form())
︡82e366f1-29c2-4f32-b90b-6346a2daba7f︡︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 0 &amp; \\frac{2 \\, {\\left(\\pi - 3 \\, \\sqrt{2}\\right)}}{2 \\, \\sqrt{2} - 5} + 3 \\\\\n0 &amp; 1 &amp; -\\frac{\\pi - 3 \\, \\sqrt{2}}{2 \\, \\sqrt{2} - 5}\n\\end{array}\\right)$</div>"}︡{"done":true}
︠729dc838-ac0e-4224-a3a3-37ad284a113fi︠
%md
## 2. Standard functions:

- determinant
- characteristic polynomial
- echelon form
- row space
- column space
- rows, columns
- matrix_from_rows, matrix_from_columns
- solve
︡06b03a50-490d-4a61-a709-486ef1d57104︡︡{"done":true,"md":"## 2. Standard functions:\n\n- determinant\n- characteristic polynomial\n- echelon form\n- row space\n- column space\n- rows, columns\n- matrix_from_rows, matrix_from_columns\n- solve"}
︠d3e12327-9ba1-4e50-abe1-e9801d959ab9s︠
set_random_seed(42)  # put your age here
A = random_matrix(QQ, 5)
show(A)
︡e7d089ed-e0c8-4db1-9187-9f8ed87fc851︡︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrr}\n-1 &amp; -1 &amp; -\\frac{1}{2} &amp; 2 &amp; -\\frac{1}{2} \\\\\n\\frac{1}{2} &amp; -2 &amp; 0 &amp; 0 &amp; 0 \\\\\n1 &amp; -1 &amp; -1 &amp; 2 &amp; -\\frac{1}{2} \\\\\n-1 &amp; 1 &amp; -1 &amp; 1 &amp; 1 \\\\\n0 &amp; 2 &amp; -2 &amp; -1 &amp; 0\n\\end{array}\\right)$</div>"}︡{"done":true}
︠b3f4b016-95f1-4364-bf58-4560888fccc4s︠
f = A.charpoly()
parent(f)
︡ff8c45de-ec18-48de-bcc0-437baa8836ef︡︡{"stdout":"Univariate Polynomial Ring in x over Rational Field\n"}︡{"done":true}
︠6ff9ab09-febe-4c14-9461-6f85d84aa09ds︠
f.base_ring()
︡a5be36b0-6cd4-4fe3-ad1a-c2ef5949be04︡︡{"stdout":"Rational Field\n"}︡{"done":true}
︠b9157daf-a798-4699-8ce7-ae00536db24ds︠
f.factor()
︡4846740a-882f-4c43-b327-2dac700211bb︡︡{"stdout":"x^5 + 3*x^4 + 6*x^3 + 63/4*x^2 + 29*x + 195/8\n"}︡{"done":true}
︠3233ad58-84dc-4f42-80f4-fd264f03e2d5s︠
show(f.change_ring(CC).factor())
︡c39d3b92-5858-485f-880a-8ca884b1d9ed︡︡{"html":"<div align='center'>$\\displaystyle (x - 0.714003959174589 - 2.07933489614716i) \\cdot (x - 0.714003959174589 + 2.07933489614716i) \\cdot (x + 1.28534665449870 - 1.03106393820580i) \\cdot (x + 1.28534665449870 + 1.03106393820580i) \\cdot (x + 1.85731460935178)$</div>"}︡{"done":true}
︠deb9cd0b-2180-4862-88c3-a1c750c49850s︠
E= A.eigenspaces_right()
︡cee71350-d717-4336-badf-e64c9a617870︡︡{"done":true}
︠1f4a5c1b-ed0e-48e5-9991-aa2d12d984a7s︠
E[0]
︡035ad8b5-f91f-46c0-bb5f-14fdea16708b︡︡{"stdout":"(-1.857314609351780?, Vector space of degree 5 and dimension 1 over Algebraic Field\nUser basis matrix:\n[                    1    3.504212994256084? -0.10512329983419517?   0.3761439167989345?   -3.684097802778675?])\n"}︡{"done":true}
︠433b1f8e-afea-4814-8489-d54b32fc679as︠
len(E)
︡f7bb8159-694d-4106-bb2a-55f7a8bd889e︡︡{"stdout":"5\n"}︡{"done":true}
︠4f4ca27f-ada3-46c9-af8b-8504830759b3s︠
A.determinant()
︡d532f7d3-d732-4937-8762-d98cdee0dfd5︡︡{"stdout":"-195/8\n"}︡{"done":true}
︠35e09f44-c723-4490-9ce2-c00e51c7ce0fs︠
A.row_space()
︡c3c05a29-776e-4d60-ac60-df22746c29e3︡︡{"stdout":"Vector space of degree 5 and dimension 5 over Rational Field\nBasis matrix:\n[1 0 0 0 0]\n[0 1 0 0 0]\n[0 0 1 0 0]\n[0 0 0 1 0]\n[0 0 0 0 1]\n"}︡{"done":true}
︠61c691d2-c2c2-428b-a722-f12307343378s︠
QQ^3
︡96739da6-e9f0-4546-9bed-9524b1e70317︡︡{"stdout":"Vector space of dimension 3 over Rational Field\n"}︡{"done":true}
︠abe4036a-8ec0-4c89-a845-917a7f74f5afs︠
span(QQ, [vector([1,2,3]), vector([4,5,6]), vector([7,8,9])])
︡78e220a4-3659-4734-a269-f036ed14e029︡︡{"stdout":"Vector space of degree 3 and dimension 2 over Rational Field\nBasis matrix:\n[ 1  0 -1]\n[ 0  1  2]\n"}︡{"done":true}
︠e73fa718-65a0-4601-b60d-1601c10c8702︠










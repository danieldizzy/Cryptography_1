︠f9595c4f-3b57-4fb0-a8bd-4cd032949ae8s︠
g = plot(sin(1/x), (x, 0, 10))
g.save('a.pdf')
︡fe6e7931-0271-4b19-b2fd-a768c7c19515︡︡{"done":true}
︠8fbb6d3c-4fa2-40c5-b1e7-89fc27e24c97s︠
latex(-2/3)
︡246285bc-36fd-45af-bc20-50a5da70eab7︡︡{"stdout":"-\\frac{2}{3}\n"}︡{"done":true}
︠04db5e24-77d3-48a2-8c7e-ca62893ca04fs︠
latex( sin(tan(x)).series(x, 8) )
︡65735403-b2d4-4245-92c5-e6fe4a0ceb6b︡︡{"stdout":"1 x + \\frac{1}{6} x^{3} + {(-\\frac{1}{40})} x^{5} + {(-\\frac{55}{1008})} x^{7} + \\mathcal{O}\\left(x^{8}\\right)\n"}︡{"done":true}
︠9e440600-55ee-4c3a-ac56-4bdc4a439b73s︠
a = random_matrix(QQ, 3)
︡b51589f3-c47d-4db1-8533-1e431434371f︡︡{"done":true}
︠fb18c711-f396-4e18-8667-9a6072b44ac0s︠
a
︡f2e8f21c-2581-4a6f-a4d9-6be36ad37643︡︡{"stdout":"[  1  -2 1/2]\n[  1   0   0]\n[ -2   0   1]\n"}︡{"done":true}
︠5e162397-d2eb-43c5-a8c6-30e488eda1d9s︠
latex(a)
︡cdba2ccf-4759-4c19-8713-0976a0e2aa60︡︡{"stdout":"\\left(\\begin{array}{rrr}\n1 & -2 & \\frac{1}{2} \\\\\n1 & 0 & 0 \\\\\n-2 & 0 & 1\n\\end{array}\\right)\n"}︡{"done":true}
︠cd3e4caf-f778-4e9e-84b0-d799dcf3c024︠

︠6c420f57-9dd9-49fe-b867-cb5f2a494930s︠
show(a)
︡d09f4311-589b-4e75-92ec-3c3cb680fc56︡︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; -2 &amp; \\frac{1}{2} \\\\\n1 &amp; 0 &amp; 0 \\\\\n-2 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠b4fdc98f-ae8a-4eb1-aab8-3d43d634e8c7︠










︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-04-27
### William Stein

## **Lectures 14: Symbolic Calculus (part 2/3)**


︡70e03e40-9a05-428f-83b3-b56d801d9744︡︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-04-27\n### William Stein\n\n## **Lectures 14: Symbolic Calculus (part 2/3)**"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md
## Topics

(reminder: screencast)
1. finding roots: symbolic, numerical
1. numerical approximation of a symbolic expression
1. more about 2d plotting
1. more about 3d plots
︡aba1d71d-0bb1-43d5-be6a-15918143c179︡︡{"done":true,"md":"## Topics\n\n(reminder: screencast)\n1. finding roots: symbolic, numerical\n1. numerical approximation of a symbolic expression\n1. more about 2d plotting\n1. more about 3d plots"}
︠61d59a1f-8174-45db-a9fe-bdbf080a9aa8i︠
%md
## Finding Roots: symbolic
You can use the solve command to solve for zeroes of a function.
︡f9bf6b09-119e-4223-b771-058b1d0bcd88︡︡{"done":true,"md":"## Finding Roots: symbolic\nYou can use the solve command to solve for zeroes of a function."}
︠0ff1da9d-e93f-4f03-9b99-98a1c0b04d9cs︠
x^2 + 3 == 5
︡34286530-2189-4376-8c72-e61fb97e4192︡︡{"stdout":"x^2 + 3 == 5\n"}︡{"done":true}
︠3d2d75ac-f2f7-4bd5-9b50-859c4739ef7es︠
eqn = x^2 + 3 == 5
show(eqn)
︡ce7385ab-22cb-4dfb-8a4a-55a119a98fb8︡︡{"html":"<div align='center'>$\\displaystyle x^{2} + 3 = 5$</div>"}︡{"done":true}
︠2d09430d-9807-4aba-a017-72d5457ed9a1s︠
eqn.add_to_both_sides(-3)
︡21cdbccb-bc48-43af-9f34-6dc9cb7ee92a︡︡{"stdout":"x^2 == 2\n"}︡{"done":true}
︠863c0c52-da68-4281-b66d-a4a7d603b502s︠
pi == pi
︡ca45f03f-069a-4a81-977e-2ffb17597a58︡︡{"stdout":"pi == pi\n"}︡{"done":true}
︠a84f1e47-c9d3-4102-9f0e-38f5491df481s︠
bool(pi == pi)
︡1fb95830-4258-4866-9308-a69b3657b7a0︡︡{"stdout":"True\n"}︡{"done":true}
︠ee5c0fd2-0640-4930-9b02-7fc23bf4269cs︠
solve(x^4 + 2*x + 3 == 0, x)
︡a43c4115-34c0-4812-abde-080da9b19224︡︡{"stdout":"[x == -1/2*sqrt(((2*I*sqrt(15) + 2)^(2/3) + 4)/(2*I*sqrt(15) + 2)^(1/3)) - 1/2*sqrt(-(2*I*sqrt(15) + 2)^(1/3) - 4/(2*I*sqrt(15) + 2)^(1/3) + 4/sqrt(((2*I*sqrt(15) + 2)^(2/3) + 4)/(2*I*sqrt(15) + 2)^(1/3))), x == -1/2*sqrt(((2*I*sqrt(15) + 2)^(2/3) + 4)/(2*I*sqrt(15) + 2)^(1/3)) + 1/2*sqrt(-(2*I*sqrt(15) + 2)^(1/3) - 4/(2*I*sqrt(15) + 2)^(1/3) + 4/sqrt(((2*I*sqrt(15) + 2)^(2/3) + 4)/(2*I*sqrt(15) + 2)^(1/3))), x == 1/2*sqrt(((2*I*sqrt(15) + 2)^(2/3) + 4)/(2*I*sqrt(15) + 2)^(1/3)) - 1/2*sqrt(-(2*I*sqrt(15) + 2)^(1/3) - 4/(2*I*sqrt(15) + 2)^(1/3) - 4/sqrt(((2*I*sqrt(15) + 2)^(2/3) + 4)/(2*I*sqrt(15) + 2)^(1/3))), x == 1/2*sqrt(((2*I*sqrt(15) + 2)^(2/3) + 4)/(2*I*sqrt(15) + 2)^(1/3)) + 1/2*sqrt(-(2*I*sqrt(15) + 2)^(1/3) - 4/(2*I*sqrt(15) + 2)^(1/3) - 4/sqrt(((2*I*sqrt(15) + 2)^(2/3) + 4)/(2*I*sqrt(15) + 2)^(1/3)))]\n"}︡{"done":true}
︠fd47b84f-a4a1-4b6c-931b-750fd62ab320s︠
show(solve(x^4 + 2*x + 3 == 0, x)[0])
︡c667cbb9-3200-4ab9-9250-4486e04e9438︡︡{"html":"<div align='center'>$\\displaystyle x = -\\frac{1}{2} \\, \\sqrt{\\frac{{\\left(2 i \\, \\sqrt{15} + 2\\right)}^{\\frac{2}{3}} + 4}{{\\left(2 i \\, \\sqrt{15} + 2\\right)}^{\\frac{1}{3}}}} - \\frac{1}{2} \\, \\sqrt{-{\\left(2 i \\, \\sqrt{15} + 2\\right)}^{\\frac{1}{3}} - \\frac{4}{{\\left(2 i \\, \\sqrt{15} + 2\\right)}^{\\frac{1}{3}}} + \\frac{4}{\\sqrt{\\frac{{\\left(2 i \\, \\sqrt{15} + 2\\right)}^{\\frac{2}{3}} + 4}{{\\left(2 i \\, \\sqrt{15} + 2\\right)}^{\\frac{1}{3}}}}}}$</div>"}︡{"done":true}
︠0d4491ac-f2e4-485b-a1e9-bb6a7825421bs︠
solve(sqrt(x) == 2, x)
︡2ddc16af-cfcf-4c2f-8f11-47e7e3c0c007︡︡{"stdout":"[x == 4]\n"}︡{"done":true}
︠ed639305-b4fa-4882-b3f7-d04770cc6f64s︠
solve(sin(x) == 0, x)
︡2ab55b6b-9546-4635-b083-ceec085f17ba︡︡{"stdout":"[x == 0]\n"}︡{"done":true}
︠ac0c0c2c-c0af-48e1-abe9-6f84a2040693s︠
solve(e^(3*x) == 5, x)
︡e2d39bb4-7007-40ed-84b6-41f3d46a62e8︡︡{"stdout":"[x == log(1/2*I*5^(1/3)*sqrt(3) - 1/2*5^(1/3)), x == log(-1/2*I*5^(1/3)*sqrt(3) - 1/2*5^(1/3)), x == 1/3*log(5)]\n"}︡{"done":true}
︠566acd97-9b19-4a47-8a7c-380d1553d00as︠
v = solve(e^(3*x) == 5, x, solution_dict=True); v
︡4463a669-7775-4995-87b8-8c69c73e92b2︡︡{"stdout":"[{x: log(1/2*I*5^(1/3)*sqrt(3) - 1/2*5^(1/3))}, {x: log(-1/2*I*5^(1/3)*sqrt(3) - 1/2*5^(1/3))}, {x: 1/3*log(5)}]\n"}︡{"done":true}
︠ccd2c9ce-7956-43ad-b785-48afecdc72e0s︠
%var x, y
solve([x^2 == y^2, x^3 == y^3 + 5], [x,y])
︡01000405-724b-419b-b265-1208a7d051f9︡︡{"stdout":"[[x == 1.35720887245841, y == -1.35720887245841], [x == (-0.6786044041487247 + 1.175377306225595*I), y == (0.6786044041487285 - 1.175377306225602*I)], [x == (-0.6786044041487247 - 1.175377306225595*I), y == (0.6786044041487285 + 1.175377306225602*I)]]\n"}︡{"done":true}
︠107ad040-4dd3-4d78-b173-cda4a50bc522s︠
g = implicit_plot(x^3 == y^3 + 5, (x, -3, 3), (y,-3,3))
g += implicit_plot(x^2 == y^2, (x, -3, 3), (y,-3,3),color='red')
g
︡ea7e15c1-99c4-4a28-8c9f-f4fc1276d4cb︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/11676/tmp_QbG0v9.svg","show":true,"text":null,"uuid":"7fb2821d-846c-447d-9b52-b6659c9f6d2f"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠847167c4-199c-4d72-95d8-b0b32d19abfas︠
show(v[0][x])
︡856c07bf-6caa-4053-8b1e-30983717e9dc︡︡{"html":"<div align='center'>$\\displaystyle \\log\\left(\\frac{1}{2} i \\cdot 5^{\\frac{1}{3}} \\sqrt{3} - \\frac{1}{2} \\cdot 5^{\\frac{1}{3}}\\right)$</div>"}︡{"done":true}
︠937b8020-6542-415d-bb97-ed385d334162s︠
(e^(v[0][x]*3)).simplify_full()
︡2a596c51-b697-48cb-8695-12bf2be02e2f︡︡{"stdout":"5"}︡{"stdout":"\n"}︡{"done":true}
︠1d5f930d-6c0f-4705-8841-9e687b041031s︠
# or use roots:
v = (e^(3*x) - 5).roots()
v
︡e45f6796-2c4f-4263-921c-ba0de40cfbfe︡︡{"stdout":"[(log(1/2*I*5^(1/3)*sqrt(3) - 1/2*5^(1/3)), 1), (log(-1/2*I*5^(1/3)*sqrt(3) - 1/2*5^(1/3)), 1), (1/3*log(5), 1)]\n"}︡{"done":true}
︠5b11555e-4f5f-4898-a12b-a312ccd882bds︠
show(v[0][0])
︡9f194b4a-83ee-43c9-811e-71ae5df0a7f6︡︡{"html":"<div align='center'>$\\displaystyle \\log\\left(\\frac{1}{2} i \\cdot 5^{\\frac{1}{3}} \\sqrt{3} - \\frac{1}{2} \\cdot 5^{\\frac{1}{3}}\\right)$</div>"}︡{"done":true}
︠7c568269-5f6e-4fd9-bd80-d36a83c2a717i︠
%md
## Finding A SINGLE Root in an interval: numerical
︡776339df-0d88-4b34-9c55-bd5bffb3bc1c︡︡{"done":true,"md":"## Finding A SINGLE Root in an interval: numerical"}
︠cb3e426d-1a18-4c0e-a262-5c6e0330330es︠
f(x) = e^(3*x) - 5
plot(f, -2, 2, ymax=1)
︡7374fc94-2761-49ba-ae23-fe8d67383de1︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/11676/tmp_mWW4tr.svg","show":true,"text":null,"uuid":"2891b108-5d52-4cad-982e-53a7b10a5f4e"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠ff1ef3e9-7e7e-4b47-8233-c0ec9806ed50s︠
f.find_root(1, 2)
︡92a230a5-cf29-4a00-9cf8-5546e32e3bc6︡︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 905, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"sage/symbolic/expression.pyx\", line 10840, in sage.symbolic.expression.Expression.find_root (/projects/sage/sage-6.10/src/build/cythonized/sage/symbolic/expression.cpp:57550)\n    return find_root(f, a=a, b=b, xtol=xtol,\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/sage/numerical/optimize.py\", line 94, in find_root\n    raise RuntimeError(\"f appears to have no zero on the interval\")\nRuntimeError: f appears to have no zero on the interval\n"}︡{"done":true}
︠9eb37c75-ea83-4eac-8dcb-617eace4ec96i︠
%md
## Numerical approximation of a symbolic expression
︡55833fa7-0587-45f5-88dc-e5d310e52489︡︡{"done":true,"md":"## Numerical approximation of a symbolic expression"}
︠6ab689da-c58e-41ea-afb2-ebb706174dd0s︠
alpha = log(1/2*I*5^(1/3)*sqrt(3) - 1/2*5^(1/3))
show(alpha)
︡b1e5eb87-a925-47d2-897f-3b36c8271363︡︡{"html":"<div align='center'>$\\displaystyle \\log\\left(\\frac{1}{2} i \\cdot 5^{\\frac{1}{3}} \\sqrt{3} - \\frac{1}{2} \\cdot 5^{\\frac{1}{3}}\\right)$</div>"}︡{"done":true}
︠b57103af-3905-4222-8275-be14b455c469s︠
f = pi/10^30 + pi - e/10^30 - acos(0)
f
︡7dcc2ed8-9fe2-4b22-b69d-eaa9cc5cbfc0︡︡{"stdout":"500000000000000000000000000001/1000000000000000000000000000000*pi - 1/1000000000000000000000000000000*e\n"}︡{"done":true}
︠11b064ce-4aa3-4f6e-8929-e77dad50575fs︠
numerical_approx(f)
︡01eaeb37-6ffe-4201-9981-c2c514f3e215︡︡{"stdout":"1.57079632679490\n"}︡{"done":true}
︠4b5ee434-3aef-4a21-987a-5ae107ef100e︠

︠97a9ba9c-a22d-4afa-a0d0-14389db00f75s︠
numerical_approx(alpha)
︡df784eca-7290-45c8-a2a3-d83d9537ee8f︡︡{"stdout":"0.536479304144700 + 2.09439510239320*I"}︡{"stdout":"\n"}︡{"done":true}
︠7346035a-e461-455f-90f4-34d4ef6d4e29s︠
numerical_approx(alpha, prec=200)
︡1e5b3353-2b81-45af-8bbc-97f288ef127e︡︡{"stdout":"0.53647930414470012486691977774206254650853378475617257397088 + 2.0943951023931954923084289221863352561314462662500705473166*I\n"}︡{"done":true}
︠f82edb79-1ab3-494a-8c4c-fb757c355fdes︠
numerical_approx(alpha, digits=20)
︡2db95bc0-b471-48a8-8454-f5e1f58d8f10︡︡{"stdout":"0.53647930414470012487 + 2.0943951023931954923*I\n"}︡{"done":true}
︠1183bd03-27ce-4a17-b685-8bf33875e989s︠
# This is the number of digits used in computing the result, NOT the number of correct digits in output!
numerical_approx(alpha, digits=3)
︡b3003668-611e-4781-9ecd-c1c13db774bc︡︡{"stdout":"0.536 + 2.09*I\n"}︡{"done":true}
︠824a36f1-a21c-4224-ba3e-fce4f87163b8s︠
# Interval arithmetic --
# Every displayed digit except last in the output is definitely right:
ComplexIntervalField(20)(alpha)
︡520c7039-4919-4f15-8591-f1512f28ea48︡︡{"stdout":"0.53648? + 2.09440?*I\n"}︡{"done":true}
︠53f8ebde-ff67-4940-a412-5520c7711b76s︠
N is numerical_approx
︡7a74d9d9-e91f-4988-b3b7-e386169adf4b︡︡{"stdout":"True\n"}︡{"done":true}
︠3c7cac2a-296b-4bdd-9820-534611e8a40fs︠
alpha.N()
︡d6c619f5-e71a-4f7f-b8c5-1e5191398d18︡︡{"stdout":"0.536479304144700 + 2.09439510239320*I\n"}︡{"done":true}
︠679c4d01-ddd2-413f-8191-bb49371910f1s︠
alpha.n()
︡2c405f70-3b38-436e-8f3b-f4c1188b9111︡︡{"stdout":"0.536479304144700 + 2.09439510239320*I\n"}︡{"done":true}
︠04c0ed0b-c8b9-49bf-9438-1cb6f6148bd3s︠
alpha.numerical_approx()
︡6e91029c-1025-45cd-92eb-b1967f3b29ca︡︡{"stdout":"0.536479304144700 + 2.09439510239320*I\n"}︡{"done":true}
︠b8ad0be4-5067-437b-95e1-3ca17c6048c3︠

︠992ae9b0-e96b-4db1-b068-41b627e4fd1c︠

︡eec06a8b-a556-4f8f-88d6-b0535990f5c9︡
︠adf93f1c-c048-46e8-992e-741f296f86d2i︠
%md
## More about 2d plots

You can do much more than just `plot(function...)`.  E.g.,

- a point
- a bunch of points
- text
- "line" through a bunch of points
- polygon
- ellipse
- implicit plot
- contour plot
- vector field

︡09e3974b-c68e-45ce-bc7b-580279b53664︡︡{"done":true,"md":"## More about 2d plots\n\nYou can do much more than just `plot(function...)`.  E.g.,\n\n- a point\n- a bunch of points\n- text\n- \"line\" through a bunch of points\n- polygon\n- ellipse\n- implicit plot\n- contour plot\n- vector field"}
︠a5234126-c3c4-4542-a039-184ef22d9de0︠
point((1,2))
︡1ea53067-46d8-4e1f-acb1-6f1516d26d6f︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/11676/tmp_IWRA4i.svg","show":true,"text":null,"uuid":"42e76564-e6b8-4f83-9beb-84d61136b6b0"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠f9b71164-0b78-46ca-bccb-5937ef07c135s︠
point2d((1,2), pointsize=150, color='red')
︡dfba11de-5efe-4a38-96dc-b6effa6cba60︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/11676/tmp_sfo2z0.svg","show":true,"text":null,"uuid":"7dd3395d-7286-4932-8588-a10e310a95bd"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠6fdcac34-5957-453f-81cf-232d0df759c6s︠
point([(random(), random()) for i in range(100)])
︡a4857202-86dc-4bd0-8f68-c12e8e270004︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/11676/tmp_Q7VW0n.svg","show":true,"text":null,"uuid":"9e2435c6-6ce9-4ff8-93d8-03e176dbd33b"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠e06288eb-7504-4e89-8047-94d57120b1c9s︠
print r"adlkjf\nlksjdfljs"
︡f01885d0-d969-4c2b-9472-51956f205dbb︡︡{"stdout":"adlkjf\\nlksjdfljs\n"}︡{"done":true}
︠2fe04fba-62b1-4e04-8d27-bea3b46f4a32s︠
print "adlkjf\\lksjdfljs"
︡d37a8ea4-38bb-4e6e-be34-8fef1c3219d2︡︡{"stdout":"adlkjf\\lksjdfljs\n"}︡{"done":true}
︠854509bb-2c2c-4203-ba6d-e0c150f92a5es︠
g =  point((1,2), pointsize=300, color='red')
g += text(r"Get $\int_0^{\pi} \sin(x) dx$ points!", (1,2), alpha=0.5, fontsize=30, fontweight='bold', color='black', rotation=20, zorder=1)
g.show(frame=True, axes=False)
︡c2fd1104-7c07-4c8b-97dc-c3dad5621938︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/11676/tmp_Tm6Z6S.svg","show":true,"text":null,"uuid":"bf0ff559-aa75-49ab-9be9-d8c97b34b1bd"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠4f372195-1137-462e-8e5c-219e4439dbd0s︠
line([(0,0), (1,1), (1,2), (2,0), (3,1)], thickness=3, color='blue')
︡0c3de461-3738-4139-98db-9564ecc513db︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/11676/tmp_gn8akT.svg","show":true,"text":null,"uuid":"4d3c1f80-36f2-4789-99a6-ae5abf3d2d4e"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠527ef1c6-c311-43aa-8f14-e4db8f14895as︠
v = [(0,0), (1,1), (1,2), (2,0), (3,1)]
line(v, thickness=3, color='blue', zorder=-1) + points(v, pointsize=200, color='grey', zorder=1)
︡a12ea7e8-e1ff-4bc6-8dda-3fb7171e7dac︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/11676/tmp_LKwKwd.svg","show":true,"text":null,"uuid":"60569aaf-1ecd-4431-94aa-19df926930ed"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠f5025679-9e72-4dbf-a513-515585e18043s︠
%var x, y
implicit_plot(y^2 + cos(y*e^x) == x^3 - 2*x + 3, (x,-2,2), (y,-3,3))
︡5dbdc245-3af1-4312-91f4-d8cd0e200e38︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/11676/tmp_7aQ7bj.svg","show":true,"text":null,"uuid":"ad4dafa5-4360-405c-b2a8-9ad2993988de"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠f201954a-0d17-4082-afcc-d6d6bc80f3f6s︠

oo
︡c01e1d4e-7a28-4920-88dc-badc0e9b9398︡︡{"stdout":"+Infinity\n"}︡{"done":true}
︠ebb56b40-f451-4f9e-91b4-a1d02c579302s︠
-oo
︡d2a3177b-8885-4d91-a1a9-15dd1b512383︡{"stdout":"-Infinity\n"}︡{"done":true}︡︡{"done":true}
︠96a54830-c886-4ed4-84b6-1f37f98b7ef2s︠



show(plot(x^2, -100, 100), ymax=3, ymin=2)
︡4d6374b7-2e09-4a4e-ae40-b395df6c6c45︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/11676/tmp_nHu28p.svg","show":true,"text":null,"uuid":"89cc9c6a-82ff-433c-9c99-81114d485d30"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠3f598ffd-0384-4ba0-827a-112fdd0c6815︠










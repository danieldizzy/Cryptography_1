︠bdbb3646-99e4-48ca-9ba8-8f2fed0f86fci︠
%md
# Math 480: Open Source Mathematical Software
### 2016-04-25
### William Stein

## **Lectures 13: Symbolic Calculus (part 1 of 3)**

︡70e03e40-9a05-428f-83b3-b56d801d9744︡︡{"done":true,"md":"# Math 480: Open Source Mathematical Software\n### 2016-04-25\n### William Stein\n\n## **Lectures 13: Symbolic Calculus (part 1 of 3)**"}
︠d1c71866-fbba-486f-bb07-3a6a3714abd8i︠
%md

**Today:**

1. (John Jeng) Update on peer grading (due Friday at 6pm)
2. Turn on screen cast
3. New homework assignment (due Friday at 6pm)
4. Today: symbolic calculus (part 1 of 3)
︡92feb9c9-327a-4853-ac0f-adaf68758823︡︡{"done":true,"md":"\n**Today:**\n\n1. (John Jeng) Update on peer grading (due Friday at 6pm)\n2. Turn on screen cast\n3. New homework assignment (due Friday at 6pm)\n4. Today: symbolic calculus (part 1 of 3)"}
︠f5cd73aa-1fe8-499a-b7e5-ff60e8236703i︠
%md
## Some Resources for Symbolic Calculus in Sage

- Basic Sage Calculus Tutorial (written by a UW undergrad): http://www.sagemath.org/calctut/
- Sage for Undergraduates has a TON: http://www.gregorybard.com/Sage.html
- Sage reference manual: http://doc.sagemath.org/html/en/reference/calculus/index.html
- Sage Calculus "thematic tutorial": http://doc.sagemath.org/html/en/prep/Calculus.html

︡0f89a429-144c-48e6-8adc-bcaa890f8ded︡︡{"done":true,"md":"## Some Resources for Symbolic Calculus in Sage\n\n- Basic Sage Calculus Tutorial (written by a UW undergrad): http://www.sagemath.org/calctut/\n- Sage for Undergraduates has a TON: http://www.gregorybard.com/Sage.html\n- Sage reference manual: http://doc.sagemath.org/html/en/reference/calculus/index.html\n- Sage Calculus \"thematic tutorial\": http://doc.sagemath.org/html/en/prep/Calculus.html"}
︠765bec67-3405-425b-bedd-8c16be6835c3i︠
%md
## Short crash course

- defining symbolic variables
- defining symbolic functions
- plot
- differente
- integrate
- finding zeros
︡be0733fe-3423-4f86-8228-6e64bf075c31︡︡{"done":true,"md":"## Short crash course\n\n- defining symbolic variables\n- defining symbolic functions\n- plot\n- differente\n- integrate\n- finding zeros"}
︠8acc432e-0c4d-4b93-987a-a6e09419463es︠
reset()
︡c6c15202-8963-4535-b724-111d5820c0bf︡︡{"done":true}
︠8837ffee-a357-4f6e-93ad-2a02fda501bfs︠
y + theta
︡e1242845-a78b-44d8-8998-1ce24cb30d23︡︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-6.10/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 905, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nNameError: name 'y' is not defined\n"}︡{"done":true}
︠e6652737-7736-4840-9f3a-b59384777060s︠
# x is predefined; can define other variables...

%var y, theta, aleph
︡1a7131bc-3705-4354-b37d-5a1b9f37d1a6︡︡{"done":true}
︠b889592c-d9ed-4690-9327-79e1d21c3096s︠
show(x+y+theta +aleph)
︡e08c1677-41fd-4fcc-9dc9-6797b3b0dcd9︡︡{"html":"<div align='center'>$\\displaystyle \\mathit{aleph} + \\theta + x + y$</div>"}︡{"done":true}
︠2af3df84-728f-4c66-be6f-9ccbd7efe36bs︠
var('y, theta')
︡b4e0ad7b-ff2c-40de-b3fd-ba0cfff996fd︡︡{"stdout":"(y, theta)\n"}︡{"done":true}
︠212e19c9-8402-420c-aa96-1a934684007cs︠
f(z, william) = z*(z+1)*william
f(10)
︡ed55045a-603d-45be-ad7d-b619f46e5e81︡︡{"stdout":"110*william\n"}︡{"done":true}
︠c7514abd-f947-42de-8e2e-d9e419a0101cs︠
z + william
︡c9ec773e-ef5a-4472-ad62-694bb7a02bf6︡︡{"stdout":"william + z\n"}︡{"done":true}
︠122b17f9-bfe5-45e9-843e-8fbf8a984283s︠
type(f)
︡63cbed96-aa4c-4c5b-88e9-e09c7abc6d32︡︡{"stdout":"<type 'sage.symbolic.expression.Expression'>\n"}︡{"done":true}
︠e125ff60-8c67-4611-958b-46c3d38a4744s︠
f.parent()
︡1d9e89dd-451c-48ec-8fa1-248a9b787566︡︡{"stdout":"Callable function ring with argument z\n"}︡{"done":true}
︠da01ee9a-458b-400b-8fe1-5e92b82f89aes︠
f * f
︡80c2c860-c06c-4cd7-a680-2c98d19236a3︡︡{"stdout":"z |--> (z + 1)^2*z^2\n"}︡{"done":true}
︠ea8ac024-7107-4d6b-a366-55b09e42e94ds︠
show(f)
︡790284b6-3193-4791-91fe-cc8d41fef01e︡︡{"html":"<div align='center'>$\\displaystyle z \\ {\\mapsto}\\ {\\left(z + 1\\right)} z$</div>"}︡{"done":true}
︠ad6c059e-3b48-4a16-96c5-c8e95bb0038e︠
# GOTCHA!
z = .5
f(z) = z*(z+1)  # this line whacks the previous defn of z!!
print z
︡48dfca4c-9ce8-47e5-835b-ca35d285eac3︡{"stdout":"z\n"}︡{"done":true}︡
︠146e6b36-80a2-436a-b7cb-9fba42c96b43s︠
z = .5
def f(z):
    print z
print z
︡4f5bdacc-8196-4bba-811f-0d7029ce9eea︡︡{"stdout":"0.500000000000000\n"}︡{"done":true}
︠50ed26db-9a72-40b5-883b-4063d63c8df1s︠

f(z) = z*(z+1)
g = plot(f, (0, 3), color='chartreuse', thickness=10, zorder=10)  # has a bazillion options
show(g + text('hi there class!', (2,6), zorder=11))
︡856d0375-e340-4688-95ee-f80575244050︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/2046/tmp_3t3hGk.svg","show":true,"text":null,"uuid":"b7318c8a-0fb5-4080-9aa5-0f1af24f03a3"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠731fa8b6-9635-4d4b-8643-68193fe79321s︠

diff(x^5 + 2*x + pi, x)
︡db1cb330-cf06-4370-b10e-5969a761b3a8︡︡{"stdout":"5*x^4 + 2\n"}︡{"done":true}
︠ca29ea3d-e82d-4726-b4bb-4317d74b7568s︠
f = sin(x)*cos(x)*tan(x)
g = integrate(f, x)
show(g)
︡5d2172b1-3e36-46d9-988f-df8337dc32d4︡︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{2} \\, x - \\frac{1}{4} \\, \\sin\\left(2 \\, x\\right)$</div>"}︡{"done":true}
︠fde52d90-a817-4f8b-8431-9c88fa4adeeds︠
h = g.differentiate(x)
show(h)
︡eea66cbd-77fe-4f4f-9f3e-0b71812c14fb︡︡{"html":"<div align='center'>$\\displaystyle -\\frac{1}{2} \\, \\cos\\left(2 \\, x\\right) + \\frac{1}{2}$</div>"}︡{"done":true}
︠687c511a-3164-4a4d-9edd-3bcf69c4a935s︠
k = h - f
show(k)
︡bc7c73ab-41a1-42bf-9d93-c2dbd5781cc6︡︡{"html":"<div align='center'>$\\displaystyle -\\cos\\left(x\\right) \\sin\\left(x\\right) \\tan\\left(x\\right) - \\frac{1}{2} \\, \\cos\\left(2 \\, x\\right) + \\frac{1}{2}$</div>"}︡{"done":true}
︠b0d11e3d-ab62-47aa-b290-46fb8a869244s︠
k
︡d9ff3283-6b77-48f9-b2ff-cf9af29e1058︡︡{"stdout":"-cos(x)*sin(x)*tan(x) - 1/2*cos(2*x) + 1/2\n"}︡{"done":true}
︠b26bb415-d323-40ac-b867-d514de5427a7s︠
plot(k, 0, 1)
︡4cf4f59a-8ced-4e01-8db4-26899dcc7955︡︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/2046/tmp_x_7brs.svg","show":true,"text":null,"uuid":"f77404ee-6f18-4827-a463-e03cf4a5c715"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠0f857537-4ffb-4170-96dd-184683bc831f︠
k.si
︠228efa99-f7b6-47c7-9774-eb894d2acffes︠
k.simplify_full()
︡25c55623-61b4-4a5a-a295-cfeaeadae7e2︡︡{"stdout":"0\n"}︡{"done":true}
︠3b7aa1dd-a5e5-46ab-ae78-e1fa74231ad6︠
sin(x).find_root(2,5)
︡d78a3cc0-1132-469e-beed-6b8ea57449b3︡︡{"stdout":"3.1415926535898335\n"}︡{"done":true}
︠5122e89e-7ac6-497d-9e77-b9422e317a0f︠
N(sin(1/2))
︡37410f9f-87d6-40a6-a176-a52b3658f651︡︡{"stdout":"0.479425538604203\n"}︡{"done":true}
︠0d7371fa-3768-499d-a435-10eaf7ce3705︠
complex_plot(x^2, (-1,1), (-1,1))
︡f4983182-8d88-4452-8438-3af96c9f8a00︡︡{"file":{"filename":"/projects/b303c6cf-3159-479b-8aa5-c8d2abaed2bd/.sage/temp/compute7-us/2912/tmp_AOOweh.svg","show":true,"text":null,"uuid":"3d782167-1dc1-4675-866e-528aec9ab827"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}
︠8c0ecc19-857c-4053-8584-e22819d35552︠












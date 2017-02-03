︠cc8116ab-208a-48ec-8553-a34db8390c1di︠
%md
First making the directories for lectures
︡35e81e9f-5a79-44e7-83cf-597fdc6e4345︡︡{"done":true,"md":"First making the directories for lectures"}
︠a75e1a73-4451-426a-b781-0cd66d4ccf79s︠
%sh
cal 2016
︡cfff4b05-9300-4647-8505-245f9ab69b24︡
︠d0c14b74-5aae-44b3-83f5-2f768462e791︠
s="""
03-28
03-30
04-01
04-04
04-06
04-08
04-11
04-13
04-15
04-18
04-20
04-22-NO-CLASS
04-25
04-27
04-29
05-02
05-04
05-06
05-09
05-11
05-13
05-16
05-18
05-20
05-23
05-25
05-27
05-30-HOLIDAY
06-01
06-03
"""
days = []
for x in s.split():
    if x:
        a = '2016-'+x
        print a
        days.append(a)
        os.mkdir(a)
︡0e45579c-1a79-43aa-94f8-611078462db7︡︡{"stdout":"2016-03-28\n2016-03-30\n2016-04-01\n2016-04-04\n2016-04-06\n2016-04-08\n2016-04-11\n2016-04-13\n2016-04-15\n2016-04-18\n2016-04-20\n2016-04-22-NO-CLASS\n2016-04-25\n2016-04-27\n2016-04-29\n2016-05-02\n2016-05-04\n2016-05-06\n2016-05-09\n2016-05-11\n2016-05-13\n2016-05-16\n2016-05-18\n2016-05-20\n2016-05-23\n2016-05-25\n2016-05-27\n2016-05-30-HOLIDAY\n2016-06-01\n2016-06-03\n"}︡{"done":true}
︠b7b743a5-0566-4986-a360-2ce622b4d2a5i︠
%md
Copy the daily sagews template for each day from the first day
︡1d703e60-0aaa-4ec9-971a-2b56befe01c5︡︡{"done":true,"md":"Copy the daily sagews template for each day from the first day"}
︠e0ae5337-66de-4d43-b632-baadd0f83ee8s︠
template = open(days[0] + '/' + days[0] + '.sagews').read()
i = 1
for d in days[1:]:
    i += 1
    open(d+'/'+d+'.sagews','w').write(template.replace(days[0],d).replace("Lecture 1: Introduction", "Lectures %s: TOPIC OF LECTURE"%i))
︡3e9a1556-904b-479b-8f1b-bcc9e5cd73e7︡︡{"done":true}
︠4d90935b-430b-4945-b6cb-49ad2caa7beb︠

︠cb02ee84-5935-4264-a483-25da4b7e5d48i︠
%md
Directories for assignments
︡9c82ebd7-0494-45b2-acf8-4b7ad99ba421︡︡{"done":true,"md":"Directories for assignments"}
︠406b632a-c46e-4b5b-b8ed-98badea0315as︠
i = 0
for d in days:
    if i % 3 == 2 or len(days)-1 == i:
        if 'HOLIDAY' in d:
            continue
        z = 'DUE-'+d[:10]
        print z
        os.mkdir('../assignments/'+z)
    i += 1
︡959882a9-64b4-41a9-b7e8-967a6778b7c9︡︡{"stdout":"DUE-2016-04-01\nDUE-2016-04-08\nDUE-2016-04-15\nDUE-2016-04-22\nDUE-2016-04-29\nDUE-2016-05-06\nDUE-2016-05-13\nDUE-2016-05-20\nDUE-2016-05-27\nDUE-2016-06-03\n"}︡{"done":true}
︠d08733a0-c346-4f9b-8f71-a7b286216b76s︠
%sh
cal 2016
︡2d049e43-0a7a-412f-8321-d61323549087︡︡{"stdout":"                            2016\n      January               February               March          \nSu Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  \n                1  2      1  2  3  4  5  6         1  2  3  4  5  \n 3  4  5  6  7  8  9   7  8  9 10 11 12 13   6  7  8  9 10 11 12  \n10 11 12 13 14 15 16  14 15 16 17 18 19 20  13 14 15 16 17 18 19  \n17 18 19 20 21 22 23  21 22 23 24 25 26 27  20 21 22 23 24 25 26  \n24 25 26 27 28 29 30  28 29                 27 _\b2_\b8 29 30 31        \n31                                                                \n\n       April                  May                   June          \nSu Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  \n                1  2   1  2  3  4  5  6  7            1  2  3  4  \n 3  4  5  6  7  8  9   8  9 10 11 12 13 14   5  6  7  8  9 10 11  \n10 11 12 13 14 15 16  15 16 17 18 19 20 21  12 13 14 15 16 17 18  \n17 18 19 20 21 22 23  22 23 24 25 26 27 28  19 20 21 22 23 24 25  \n24 25 26 27 28 29 30  29 30 31              26 27 28 29 30        \n                                                                  \n\n        July                 August              September        \nSu Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  \n                1  2      1  2  3  4  5  6               1  2  3  \n 3  4  5  6  7  8  9   7  8  9 10 11 12 13   4  5  6  7  8  9 10  \n10 11 12 13 14 15 16  14 15 16 17 18 19 20  11 12 13 14 15 16 17  \n17 18 19 20 21 22 23  21 22 23 24 25 26 27  18 19 20 21 22 23 24  \n24 25 26 27 28 29 30  28 29 30 31           25 26 27 28 29 30     \n31                                                                \n\n      October               November              December        \nSu Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  \n                   1         1  2  3  4  5               1  2  3  \n 2  3  4  5  6  7  8   6  7  8  9 10 11 12   4  5  6  7  8  9 10  \n 9 10 11 12 13 14 15  13 14 15 16 17 18 19  11 12 13 14 15 16 17  \n16 17 18 19 20 21 22  20 21 22 23 24 25 26  18 19 20 21 22 23 24  \n23 24 25 26 27 28 29  27 28 29 30           25 26 27 28 29 30 31  \n30 31                                                             \n"}︡{"done":true}
︠5fdcbc05-b14f-4c39-a978-5e81a000e8ed︠












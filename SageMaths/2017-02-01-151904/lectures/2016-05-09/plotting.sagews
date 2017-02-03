︠1a98bc14-47a3-47af-923b-62bf160c3502i︠
%md
See [Visualization](http://pandas.pydata.org/pandas-docs/stable/visualization.html)
︡8185e53c-ec30-4045-b532-af839218e49f︡{"done":true,"md":"See [Visualization](http://pandas.pydata.org/pandas-docs/stable/visualization.html)"}
︠6ec7915e-e270-4b92-8509-3c3f7b85add8s︠
%auto
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
%default_mode python
%typeset_mode True
import matplotlib
matplotlib.style.use('ggplot')
︡dd72fe5b-b241-48f9-9daf-42d09d77e470︡{"done":true}︡
︠5e8f79b8-bca9-4c6d-861f-c710bd26f518s︠
ts = pd.Series(np.random.randn(1000), index=pd.date_range('1/1/2000', periods=1000))
ts = ts.cumsum()
ts.plot()
︡56360fac-e77c-4840-bf62-d79a401f5650︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_PNyULV.svg","show":true,"text":null,"uuid":"a9700b52-40db-42f3-bf2a-260ff38af121"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠e03c2c43-8108-4148-aa61-18353e58b5ffs︠
df = pd.DataFrame(np.random.randn(1000, 4), index=ts.index, columns=list('ABCD'))
df = df.cumsum()
df.plot()
︡897b71f0-ba58-4ae5-8020-85c096368f06︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_Kfr45F.svg","show":true,"text":null,"uuid":"a9d72e8f-5b5a-4243-bc68-9558fe3ac0e2"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠aa168ec4-72cc-433a-ac64-8f087ed59f2es︠
df3 = pd.DataFrame(np.random.randn(1000, 2), columns=['B', 'C']).cumsum()
df3['A'] = pd.Series(list(range(len(df))))
df3.plot(x='A', y='B')
︡c2af8e50-fdf6-4d47-bb7f-f850f60248a3︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_FDBZQN.svg","show":true,"text":null,"uuid":"19e208cd-a7f5-42e8-a392-a7ba3081050b"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠5acd7857-1b5c-42e8-8c0b-7be8ce9279bes︠
df.ix[5].plot(kind='bar')
︡30926b43-ba5f-45bf-84b6-a2ec63debb62︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_oQAE2L.svg","show":true,"text":null,"uuid":"5fa4d059-28bf-4c9c-94ed-04a1d965a596"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠a42f1cb5-f891-447e-a07b-acd4af89295as︠
df2 = pd.DataFrame(np.random.rand(10, 4), columns=['a', 'b', 'c', 'd'])
df2.plot.bar()
︡dfe8df2a-bd38-417c-8a65-f202919ce444︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_Ypg4lq.svg","show":true,"text":null,"uuid":"b9633882-e0a6-4543-89e7-e00ba10a48f5"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠d8f2dd1e-01b6-4dc7-9a8e-b88093a42317s︠
df2.plot.bar(stacked=True)
︡748fdceb-e1f5-4aff-9943-1f1b31e5d409︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_LwV9HH.svg","show":true,"text":null,"uuid":"8f318c23-08ef-47ff-a806-af0a51b4e0b8"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠698868e8-bf4e-457b-91f3-89048e7817d1s︠
df2.plot.barh(stacked=True)
︡60c58adb-9b06-4096-af8a-c0da18159851︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_lxVRmb.svg","show":true,"text":null,"uuid":"ddff4630-b1fa-4f97-9756-70b818717fc4"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠016113de-9575-4ea7-ad07-d881a077daecs︠
df4 = pd.DataFrame({'a': np.random.randn(1000) + 1, 'b': np.random.randn(1000),
                    'c': np.random.randn(1000) - 1}, columns=['a', 'b', 'c'])
df4.plot.hist(alpha=0.5)
︡28f91983-48d6-424d-86f8-2d40b0185599︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_UG6HQ_.svg","show":true,"text":null,"uuid":"308df03f-1db5-432f-a727-c9910b3da4b0"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠4442af69-f323-41ba-b8d5-b3f6b247e843s︠

df4.plot.hist(stacked=True, bins=20)
︡13c679f6-3e8d-4a73-b1a1-9c2a02b05bfd︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_1HYbIL.svg","show":true,"text":null,"uuid":"5aea34cc-62c7-4279-bba1-605cb11bf564"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠8992d105-c6bd-4a8b-9b5f-45dffbe6ad03s︠
df4['a'].plot.hist(orientation='horizontal', cumulative=True)
︡ae9c9fa0-2753-44d6-9f55-b8cf72646587︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_bhnp5I.svg","show":true,"text":null,"uuid":"2496f335-a5d0-4fc2-8cba-6d924f699315"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠da2efd1d-9424-475b-b777-1396d07a9468s︠
df['A'].diff().hist()
︡dda359fc-5c4b-465d-85e3-5357cccb87cd︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_Hik1pb.svg","show":true,"text":null,"uuid":"3b663e20-f8f3-4faa-9468-4c5d8828ba26"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠d95733b2-49d4-4adf-b2cf-1ade07085724s︠
# Hmm... doesn't work yet in Sagew worksheet.
z = df.diff().hist(color='k', alpha=0.5, bins=50); z
︡b9df0aea-f25d-456f-b6e8-bf72aeb4c8ff︡{"stdout":"[[<matplotlib.axes._subplots.AxesSubplot object at 0x7f171262f050>\n  <matplotlib.axes._subplots.AxesSubplot object at 0x7f17188caf50>]\n [<matplotlib.axes._subplots.AxesSubplot object at 0x7f17187d6ed0>\n  <matplotlib.axes._subplots.AxesSubplot object at 0x7f17187e9ed0>]]"}︡{"stdout":"\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠9bc0601b-b361-46bb-a0d2-cc9fab735597s︠
# doesn't work.
data = pd.Series(np.random.randn(1000))
data.hist(by=np.random.randint(0, 4, 1000), figsize=(6, 4))
︡4338c570-c48d-4ac1-9391-937a33df326b︡{"stdout":"[[<matplotlib.axes._subplots.AxesSubplot object at 0x7f1718a9fcd0>\n  <matplotlib.axes._subplots.AxesSubplot object at 0x7f1715f88e50>]\n [<matplotlib.axes._subplots.AxesSubplot object at 0x7f171876c510>\n  <matplotlib.axes._subplots.AxesSubplot object at 0x7f17188ccb90>]]"}︡{"stdout":"\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠7990fb45-7388-4e1b-9a4f-6e690f989c8fs︠
df = pd.DataFrame(np.random.rand(10, 5), columns=['A', 'B', 'C', 'D', 'E'])
df.plot.box()
︡61241a73-2ee5-4a1b-b1f5-2d40e795732a︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_sP921i.svg","show":true,"text":null,"uuid":"1332e6b8-88d9-49f4-8eb3-f149085e5f68"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠4b74142a-8f0f-4f3f-9bbf-69dcb4a0217cs︠
color = dict(boxes='DarkGreen', whiskers='DarkOrange',
             medians='DarkBlue', caps='Gray')
df.plot.box(color=color, sym='r+')
︡e360cbe1-460c-4683-9029-c677d4df8e61︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_rPRve_.svg","show":true,"text":null,"uuid":"2e307f85-d4ba-4bc6-8057-32c0ae691dd9"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠468a501f-d585-4777-bb04-bac49a1ed443s︠
df.plot.box(vert=False, positions=[1, 4, 5, 6, 8])
︡f0b81d79-fb2a-4e17-9cae-62b152b1bebd︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_PNJuoq.svg","show":true,"text":null,"uuid":"9390842b-de9c-4b77-a370-18b00e1bdb47"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠fb8cd19a-6f1a-4a04-9315-10e052901b9b︠
df = pd.DataFrame(np.random.rand(10,2), columns=['Col1', 'Col2'] )
df['X'] = pd.Series(['A','A','A','A','A','B','B','B','B','B'])
bp = df.boxplot(by='X')
bp  # TODO: doesn't work
︡136378b9-3c08-48fb-ad76-c23a6beb7ae9︡{"stdout":"[<matplotlib.axes._subplots.AxesSubplot object at 0x7f17189ed850>\n <matplotlib.axes._subplots.AxesSubplot object at 0x7f171895d990>]\n"}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠1a534418-f335-4598-9bac-a038c73283a3s︠
df = pd.DataFrame(np.random.rand(10, 4), columns=['a', 'b', 'c', 'd'])
df.plot.area()
︡5649addf-f1d6-46dc-a54b-c447b788ff94︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_7Flzwn.svg","show":true,"text":null,"uuid":"87e78a09-fb2f-4793-9f82-470ac02120ae"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠adea76a4-1c40-4527-ba44-f90c9c51d85es︠
df.plot.area(stacked=False)
︡8573b331-35f1-4001-b733-f6ec6de7c334︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_MTs43D.svg","show":true,"text":null,"uuid":"f604961c-e554-4bd4-aa53-0567984df2e8"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠5dccdd3c-b373-4525-ab83-ede411a2810b︠
df = pd.DataFrame(np.random.rand(100, 4), columns=['a', 'b', 'c', 'd'])
df.plot.scatter(x='a', y='b')
︡64de9bdf-8a4f-4e6e-82fe-4bfc934e0212︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_SOzC5a.svg","show":true,"text":null,"uuid":"8936a865-1d7f-417d-82fa-374d6aab743c"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠6bbc9029-62eb-4e97-8248-1df1e40bdb89s︠
ax = df.plot.scatter(x='a', y='b', color='DarkBlue', label='Group 1')
df.plot.scatter(x='c', y='d', color='DarkGreen', label='Group 2', ax=ax)
︡25721025-9cf4-41e1-bb94-523c05554a5e︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_onTM6r.svg","show":true,"text":null,"uuid":"88f40eb4-97a1-4355-9f88-bacb50f788b6"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠dc9524cd-02e0-46a5-8902-1ee67669f453s︠
df.plot.scatter(x='a', y='b', c='c', s=50)
︡a10fd807-ab4a-4fc6-a7d0-be923e62b68e︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_EgUvlo.svg","show":true,"text":null,"uuid":"3ad05e63-178b-4db3-bd48-c12b0287d3e5"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠76e066ad-de9e-447d-b0c3-8602c17d52das︠
df.plot.scatter(x='a', y='b', s=df['c']*200)
︡8ca1a4e5-fecc-435a-af82-8da4abcc0ccd︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_sqaEeF.svg","show":true,"text":null,"uuid":"6bca6eb3-0cc2-4edf-942f-565172d09e11"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠a4514bd5-78fd-4c04-8778-0b26d16202f9s︠
df = pd.DataFrame(np.random.randn(1000, 2), columns=['a', 'b'])
df['b'] = df['b'] + np.arange(1000)
df.plot.hexbin(x='a', y='b', gridsize=25)
︡18062d66-a1f7-4b4f-b6d5-df0eb92d2704︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_yFhtO7.svg","show":true,"text":null,"uuid":"590dba8c-7e3e-4109-b215-f350ffc9f2a4"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠e71c559c-5566-4e2c-892c-155b35e16930s︠
df = pd.DataFrame(np.random.randn(1000, 2), columns=['a', 'b'])
df['b'] = df['b'] = df['b'] + np.arange(1000)
df['z'] = np.random.uniform(0, 3, 1000)
df.plot.hexbin(x='a', y='b', C='z', reduce_C_function=np.max, gridsize=25)
︡5a509fd3-226d-4848-a372-067dad6317de︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_2WwaMQ.svg","show":true,"text":null,"uuid":"17c2c9c6-c80a-4219-ae97-fa22044d18dc"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠4259383e-14c5-4045-9117-cf86c6e6432as︠
series = pd.Series(3 * np.random.rand(4), index=['a', 'b', 'c', 'd'], name='series')
series.plot.pie(figsize=(6, 6))
︡c61e2885-d73e-4902-b8d9-605127e180ca︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/31277/tmp_1EvHht.svg","show":true,"text":null,"uuid":"708cee7e-7a5a-41ce-969f-2a35b5af3f28"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠0b512dbf-0c4e-41eb-9f78-7fbf73f92b4e︠










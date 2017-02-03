︠36a99781-97c5-4b4c-98ca-0edf683f46fdi︠
%md
# Cython

## A Very Brief Introduction!

Cython website: http://cython.org/

And a mailing list thread from today: https://groups.google.com/forum/#!topic/cython-users/7zlP_j5Rd7w


︡6675e244-c44f-455e-9b5f-f6a373718224︡︡{"done":true,"md":"# Cython\n\n## A Very Brief Introduction!\n\nCython website: http://cython.org/\n\nAnd a mailing list thread from today: https://groups.google.com/forum/#!topic/cython-users/7zlP_j5Rd7w"}
︠73345105-f24d-4370-90df-1b1330609f0bs︠
# recall
def sin_sum(m):
    return sum(math.sin(i) for i in xrange(m))
︡40f6b164-1760-4450-891e-4b69174f8c86︡︡{"done":true}
︠3d6391f4-9d3a-485f-b068-9b2120a6fc97s︠
%timeit sin_sum(10000)
︡063f6a27-53d0-4c18-8c16-e90ce70783bd︡︡{"stdout":"125 loops, best of 3: 2.12 ms per loop"}︡{"stdout":"\n"}︡{"done":true}
︠99d1e395-f0bb-4d4a-8a7c-2643c7fcd98f︠

︡d3d28d45-c528-4440-8cb5-2342cce2addd︡
︠b029c1a7-d48b-49f3-968a-a7dd874ad720s︠
%cython
import math
def sin_sum_cython0(m):
    return sum(math.sin(i) for i in xrange(m))
︡de38b7f7-636f-4120-a14e-490693bec144︡︡{"stdout":"Defined math, sin_sum_cython0"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/22231/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_22231_dir_qM5exn_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_22231_dir_qM5exn_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/raw/.sage/temp/compute7-us/22231/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_22231_dir_qM5exn_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_22231_dir_qM5exn_a_pyx_0.html"},"once":false}︡{"done":true}
︠292df5d4-26bb-47d2-88cf-36aa9a6ff718s︠
%timeit sin_sum_cython0(10000)
︡348ed252-ea49-4ef1-aa9b-18d5296677bf︡︡{"stdout":"125 loops, best of 3: 1.5 ms per loop"}︡{"stdout":"\n"}︡{"done":true}
︠05585bcf-eb1d-4e0e-ab62-f713393cbfe9s︠
# not that impressive... but *typical*
2.12/1.5
︡3cfb56b5-3c5d-484d-b6be-abd414ff74b1︡︡{"stdout":"1.41333333333333\n"}︡{"done":true}
︠11b84cb0-214e-42bc-99d3-0a307c0e4dcfi︠
%md
Talk about type declaration and direct calling of C code...
︡ccbd7679-1d1b-4765-875c-7bf0fd6c45fe︡︡{"done":true,"md":"Talk about type declaration and direct calling of C code..."}
︠ba7a15ed-c3a6-41c6-8ef0-8d5ce5bdb8d0s︠
%cython

cdef extern from "math.h":
    cdef double sin(double)

def sin_sum_cython(int m):
    cdef double s = 0
    cdef int k
    for k in range(m):
        s += sin(k)
    return s
︡588deea6-fb95-494b-95db-8278bb9af733︡︡{"stdout":"Defined sin_sum_cython"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/.sage/temp/compute7-us/22231/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_22231_dir_Rsav4W_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_22231_dir_Rsav4W_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/4d0f1d1d-7b70-4fc7-88a4-3b4a54f77b18/raw/.sage/temp/compute7-us/22231/spyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_22231_dir_Rsav4W_a_pyx/_projects_4d0f1d1d_7b70_4fc7_88a4_3b4a54f77b18__sage_temp_compute7_us_22231_dir_Rsav4W_a_pyx_0.html"},"once":false}︡{"done":true}
︠5faff1b9-566e-4614-9e75-14822e656171s︠
%timeit sin_sum_cython(10000)
︡62166db3-216d-4578-84ff-0110815effaa︡︡{"stdout":"625 loops, best of 3: 472 µs per loop"}︡{"stdout":"\n"}︡{"done":true}
︠d1f1f78e-3db8-4153-b505-c3dc2d0bc5c9s︠
2.12/.472
︡d4248036-7d74-4c63-9aa0-8d42cda52811︡︡{"stdout":"4.49152542372881\n"}︡{"done":true}
︠10d649b1-153d-4a6b-ab1c-d793ff5785a1s︠
def sin_sum0(m):
    return float(sum(sin(i) for i in xrange(m)))
︡73d67fcd-e6fe-4f48-a1d6-17a124654b2d︡︡{"done":true}
︠270fe33d-32ad-4b72-8e64-4a681d38e90ds︠
%time sin_sum0(10000)
︡fb1ee3fc-201b-4da3-8dee-49bc36a7e1c2︡︡{"stdout":"1.9395054106807317"}︡{"stdout":"\n"}︡{"stdout":"CPU time: 3.88 s, Wall time: 3.94 s\n"}︡{"done":true}
︠94eb4b6f-1bac-4e9e-92d2-90f62bbed85d︠
# speedup over original: 10000x
3.94/.000397
︡edee8aa8-71a4-4c9e-b9bd-4dd7cbf1d93d︡︡{"stdout":"9924.43324937028\n"}︡{"done":true}
︠dc8cdd4a-31c6-47b2-80a5-dd3d0422eb68i︠
%md
You probably can't beat this by much without a new idea...
︡dff7a7c1-5b4d-4c3f-8b7f-c1a4e5c6fb3d︡︡{"done":true,"md":"You probably can't beat this by much without a new idea..."}
︠e6965473-a0c9-421d-b577-96c3c32cf27a︠










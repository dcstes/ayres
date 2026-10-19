| sketch M B BB O1 O2 O3 O4 o m b bb r s P bp bbp R S Q bs bbq pr N|
sketch _ DrGeoSketch new.

O1 _ sketch point:(-3@-3).
O1 cross. 
O2 _ sketch point:(3@-3).
O2 cross.
o _ sketch line:O1 to:O2.
O3 _ sketch point:(-2@2).
O3 cross. 
M _ sketch point:(-2@-3.5).
M cross.
m _ sketch line:O3 to:M.
M _ sketch intersectionOf:m and:o.
M name:'M'.
B _ sketch point:(0@-3.5).
B cross.
b _ sketch line:O3 to:B.
B _ sketch intersectionOf:b and:o.
B name:'B'.
BB _ sketch point:(2@-3.5).
BB cross.
bb _ sketch line:O3 to:BB.
BB _ sketch intersectionOf:bb and:o.
BB name:'B"'.
P _ sketch point:(0@-2).
P cross. P name:'P'.
r _ sketch line:M to:P.
O4 _ sketch point:(1@2).
O4 cross. 
s _ sketch line:M to:O4.
bp _ sketch line:B to:P.
bbp _ sketch line:BB to:P.
Q _ sketch intersectionOf:bp and:s.
S _ sketch intersectionOf:bbp and:s.
Q name:'Q'.
S name:'S'.
bs _ sketch line:B to:S.
bbq _ sketch line:BB to:Q.
R _ sketch intersectionOf:bs and:bbq.
R name:'R'.
pr _ sketch line:P to:R.
N _ sketch intersectionOf:o and:pr.
N name:'N'.
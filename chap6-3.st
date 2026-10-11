| sketch O o O1 O2 A AA B BB C CC f g R A1 a C1 B1 AA1 BB1 V W |
sketch _ DrGeoSketch new.
O _ sketch point:0@4.
O cross.O name:'O'.
O1 _ sketch point:(-3@-2).
O1 cross.
O2 _ sketch point:(3@-2).
O2 cross.
o _ sketch line:O1 to:O2.
o name:'o'.
A _ sketch point:(-3@-3).
A cross.
f _ sketch line:O to:A.
A _ sketch intersectionOf:o and:f.
A name:'A'.
C _ sketch point:(-1@-3).
C cross.
f _ sketch line:O to:C.
C _ sketch intersectionOf:o and:f.
C name:'C'.
B _ sketch point:(0@-3).
B cross.
f _ sketch line:O to:B.
B _ sketch intersectionOf:o and:f.
B name:'B'.
AA _ sketch point:(1@-3).
AA cross.
f _ sketch line:O to:AA.
AA _ sketch intersectionOf:o and:f.
AA name:'A"'.
BB _ sketch point:(3@-3).
BB cross.
f _ sketch line:O to:BB.
BB _ sketch intersectionOf:o and:f.
BB name:'B"'.
R _ sketch point:(-2@3).
R cross.R name:'R'.
A1 _ sketch point:(3.5@2).
A1 cross.A1 name:'a'.
a _ sketch line:A to:A1.
f _ sketch line:R to:C.
C1 _ sketch intersectionOf:f and:a.
C1 name:'C1'.
f _ sketch line:R to:B.
B1 _ sketch intersectionOf:f and:a.
B1 name:'B1'.
g _ sketch line:R to:AA.
AA1 _ sketch intersectionOf:g and:a.
AA1 name:'A"1'.
f _ sketch line:R to:BB.
BB1 _ sketch intersectionOf:f and:a.
BB1 name:'B"1'.
f _ sketch line:BB to:B1.
V _ sketch intersectionOf:g and:f.
V name:'V'.
f _ sketch line:BB to:C1.
W _ sketch intersectionOf:g and:f.
W name:'W'.
f _ sketch line:B1 to:W.
CC _ sketch intersectionOf:o and:f.
CC name:'C"'.
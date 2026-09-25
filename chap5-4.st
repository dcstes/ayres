| sketch P P1 Q R R1 S S1 p r s o A B C D D1 E t u v F F1 G q PF SF |
sketch _ DrGeoSketch new.

A _ sketch point:(-2@-1).
A name:'A'.A cross.
B _ sketch point:(1@-1).
B name:'B'.
B cross.
o _ sketch line:A to:B.
P1 _ sketch point:(-1@1).
P1 cross.P1 name:'p'.
D1 _ sketch point:(-1@-2).
D1 cross.
p _ sketch line:D1 to:P1.
D _ sketch intersectionOf:o and:p.
D name:'D'.
R1 _ sketch point:(1@1).
R1 cross.R1 name:'r'.
S1 _ sketch point:(0@2).
S1 cross.S1 name:'s'.
r _ sketch line:A to:R1.
s _ sketch line:A to:S1.
R _ sketch intersectionOf:p and:s.
R name:'R'.
P _ sketch intersectionOf:r and:p.
P name:'P'.
t _ sketch line:B to:R.
u _ sketch line:B to:P.
S _ sketch intersectionOf:s and:u.
S name:'S'.
Q _ sketch intersectionOf:r and:t.
Q name:'Q'.
v _ sketch line:S to:Q.
E _ sketch intersectionOf: o and:v.
E name:'E'.
F1 _ sketch point:(-2@-2).
F1 cross.
q _ sketch line:R to:F1.
F _ sketch intersectionOf:o and:q.
F name:'F'.
PF _ sketch intersectionOf:r and:q.
u _ sketch line:B to:PF.
SF _ sketch intersectionOf:s and:u.
v _ sketch line:SF to:Q.
G _ sketch intersectionOf: o and:v.
G name:'G'.
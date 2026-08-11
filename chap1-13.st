| sketch p1 p2 pa2 pb2 P Q a1 a2 a3 A1 A2 b1 b2 b3 B1 B2 c1 c2 c3 C1 C2 d1 d2 d3 D1 D2|
sketch _ DrGeoSketch new.
sketch text:'P(a1,b1,c1,d1,...) -^ P(a3,b3,c3,d3,...) ' at:-4@-3.
P _ sketch point:0@4.
P cross.P name:'P'.
Q _ sketch point:3@4.
Q cross.Q name:'Q'.
A1 _ sketch point:(-3@0).
A1 cross.
a1 _ sketch line:A1 to:P.
a1 name:'a1'.
A1 name:'A1'.
a2 _ sketch line:A1 to:Q.
a2 name:'a2'.
B1 _ sketch point:(-2@0).
B1 cross.
b1 _ sketch line:B1 to:P.
b1 name:'b1'.
B1 name:'B1'.
b2 _ sketch line:B1 to:Q.
b2 name:'b2'.
p1 _ sketch line:A1 to:B1.
p1 name:'p1'.
C1 _ sketch point:(0@-2).
C1 cross.
c1 _ sketch line:C1 to:P.
c1 name:'c1'.
C1 _ sketch intersectionOf:c1 and:p1.
C1 name:'C1'.
c2 _ sketch line:C1 to:Q.
c2 name:'c2'.
D1 _ sketch point:(2@-2).
D1 cross.
d1 _ sketch line:D1 to:P.
d1 name:'d1'.
D1 _ sketch intersectionOf:d1 and:p1.
D1 name:'D1'.
d2 _ sketch line:D1 to:Q.
d2 name:'d2'.
pa2 _ sketch point:(-1@2).
pa2 cross.
pb2 _ sketch point:3@2.
pb2 cross.
p2 _ sketch line:pa2 to:pb2.
A2 _ sketch intersectionOf:a2 and:p2.
B2 _ sketch intersectionOf:b2 and:p2.
C2 _ sketch intersectionOf:c2 and:p2.
D2 _ sketch intersectionOf:d2 and:p2.
A2 name:'A2'.
B2 name:'B2'.
C2 name:'C2'.
D2 name:'D2'.
a3 _ sketch line:P to:A2.
b3 _ sketch line:P to:B2.
c3 _ sketch line:P to:C2.
d3 _ sketch line:P to:D2.

| sketch p1 P1 P2 P3 p3 p4 p2 a1 a2 a3 A1 A2 A3 A4 b1 b2 b3 B1 B2 B3 B4 c1 c2 c3 C1 C2 C3 C4 d1 d2 d3 D1 D2 D3 D4 pa1 pb1 pa2 pb2 pa3 pb3 pa4 pb4 I  |
sketch _ DrGeoSketch new.
sketch text:'p1(A1,B1,C1,D1,...) -^ p4(A4,B4,C4,D4,...)' at:-4@-4.
P1 _ sketch point:0@4.
P1 cross.P1 name:'P1'.
A1 _ sketch point:(-3@0).
A1 cross.
a1 _ sketch line:A1 to:P1.
B1 _ sketch point:(-2@0).
B1 cross.
b1 _ sketch line:B1 to:P1.
C1 _ sketch point:(0@-2).
C1 cross.
c1 _ sketch line:C1 to:P1.
D1 _ sketch point:(2@-2).
D1 cross.
d1 _ sketch line:D1 to:P1.
pa1 _ sketch point:(-2@-3).
pa1 cross.
pb1 _ sketch point:(2@-3).
pb1 cross.
p1 _ sketch line:pa1 to:pb1.
p1 name:'p1'.
pa2 _ sketch point:(-2@-1).
pa2 cross.
pb2 _ sketch point:(2@1).
pb2 cross.
p2 _ sketch line:pa2 to:pb2.
p2 name:'p2'.
A1 _ sketch intersectionOf:p1 and:a1.
B1 _ sketch intersectionOf:p1 and:b1.
C1 _ sketch intersectionOf:p1 and:c1.
D1 _ sketch intersectionOf:p1 and:d1.
I _ sketch intersectionOf:p1 and:p2.
I color:Color green.
A2 _ sketch intersectionOf:p2 and:a1.
B2 _ sketch intersectionOf:p2 and:b1.
C2 _ sketch intersectionOf:p2 and:c1.
D2 _ sketch intersectionOf:p2 and:d1.
A1 name:'A1'.
B1 name:'B1'.
C1 name:'C1'.
D1 name:'D1'.
I name:'I'.
A2 name:'A2'.
B2 name:'B2'.
C2 name:'C2'.
D2 name:'D2'.
P2 _ sketch point:(-4@4).
P2 cross.P2 name:'P2'.
a2 _ sketch line:A2 to:P2.
b2 _ sketch line:B2 to:P2.
c2 _ sketch line:C2 to:P2.
d2 _ sketch line:D2 to:P2.
pa3 _ sketch point:(-4@2).
pa3 cross.
pb3 _ sketch point:(-3@2).
pb3 cross.
p3 _ sketch line:pa3 to:pb3.
p3 name:'p3'.
A3 _ sketch intersectionOf:p3 and:a2.
B3 _ sketch intersectionOf:p3 and:b2.
C3 _ sketch intersectionOf:p3 and:c2.
D3 _ sketch intersectionOf:p3 and:d2.
A3 name:'A3'.
B3 name:'B3'.
C3 name:'C3'.
D3 name:'D3'.
P3 _ sketch point:(4@4).
P3 cross.P3 name:'P3'.
a3 _ sketch line:A3 to:P3.
b3 _ sketch line:B3 to:P3.
c3 _ sketch line:C3 to:P3.
d3 _ sketch line:D3 to:P3.
pa4 _ sketch point:(1@3).
pa4 cross.
pb4 _ sketch point:(1@1).
pb4 cross.
p4 _ sketch line:pa4 to:pb4.
p4 name:'p4'.
A4 _ sketch intersectionOf:p4 and:a3.
B4 _ sketch intersectionOf:p4 and:b3.
C4 _ sketch intersectionOf:p4 and:c3.
D4 _ sketch intersectionOf:p4 and:d3.
A4 name:'A4'.
B4 name:'B4'.
C4 name:'C4'.
D4 name:'D4'.
(sketch line:A1 to:A4) dotted.
(sketch line:B1 to:B4) dotted.
(sketch line:C1 to:C4) dotted.
(sketch line:D1 to:D4) dotted.

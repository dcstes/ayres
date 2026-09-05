| sketch O P Q p1 p2 p3 O1 O2 O3 P1 P2 P3 P4 a1 b1 c1 d1 A1 A2 B1 B2 C1 C2 D1 D2 a2 b2 c2 d2 A3 B3 C3 D3 R a3 b3 c3 d3 |
sketch _ DrGeoSketch new.
P _ sketch point:(-1@2).
P cross. P name:'P'.
Q _ sketch point:(1@3).
Q cross. Q name:'Q'.
O _ sketch point:(-3@-2).
O cross.O name:'O'.
O1 _ sketch point:(3@-1).
O1 cross.
O2 _ sketch point:(3@-2).
O2 cross.
O3 _ sketch point:(3@-3).
O3 cross.
p1 _ sketch line:O to:O1.
p2 _ sketch line:O to:O2.
p3 _ sketch line:O to:O3.
P1 _ sketch point:(-2@-4).
P1 cross.
P2 _ sketch point:(-1@-4).
P2 cross.
P3 _ sketch point:(0@-4).
P3 cross.
P4 _ sketch point:(1@-4).
P4 cross.
a1 _ sketch line:P to:P1.
b1 _ sketch line:P to:P2.
c1 _ sketch line:P to:P3.
d1 _ sketch line:P to:P4.
A1 _ sketch intersectionOf:a1 and:p1.
A2 _ sketch intersectionOf:a1 and:p2.
B1 _ sketch intersectionOf:b1 and:p1.
B2 _ sketch intersectionOf:b1 and:p2.
C1 _ sketch intersectionOf:c1 and:p1.
C2 _ sketch intersectionOf:c1 and:p2.
D1 _ sketch intersectionOf:d1 and:p1.
D2 _ sketch intersectionOf:d1 and:p2.
a2 _ sketch line:Q to:A2.
b2 _ sketch line:Q to:B2.
c2 _ sketch line:Q to:C2.
d2 _ sketch line:Q to:D2.
A3 _ sketch intersectionOf:a2 and:p3.
B3 _ sketch intersectionOf:b2 and:p3.
C3 _ sketch intersectionOf:c2 and:p3.
D3 _ sketch intersectionOf:d2 and:p3.
a3 _ sketch line:A1 to:A3.
b3 _ sketch line:B1 to:B3.
c3 _ sketch line:C1 to:C3.
d3 _ sketch line:D1 to:D3.
R _ sketch intersectionOf:a3 and:b3.
R name:'R'.
(sketch line:P to:Q) color:(Color green).
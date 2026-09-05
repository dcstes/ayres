| sketch O12 O34 P Q R S T p1 p2 p3 p4 p5 O1 O2 O3 O4 P1 P2 P3 P4 a1 b1 c1 d1 A1 A2 B1 B2 C1 C2 D1 D2 a2 b2 c2 d2 A3 B3 C3 D3 a3 b3 c3 d3 A4 B4 C4 D4 A5 B5 C5 D5 PQ QR a4 |
sketch _ DrGeoSketch new.
P _ sketch point:(-3.5@1).
P cross. P name:'P'.
Q _ sketch point:(-1@2).
Q cross. Q name:'Q'.
R _ sketch point:(3@-1).
R cross. R name:'R'.
O12 _ sketch point:(-3@3).
O12 cross.O12 name:'O12'.
O1 _ sketch point:(-3@-3).
O1 cross.
O2 _ sketch point:(-1@-3).
O2 cross.
p1 _ sketch line:O1 to:O12.
p2 _ sketch line:O2 to:O12.
p1 name:'p1'.
p2 name:'p2'.
O3 _ sketch point:(1@2).
O3 cross.
O4 _ sketch point:(3@3).
O4 cross.
O34 _ sketch point:(2@-3).
O34 cross.O34 name:'O34'.
p3 _ sketch line:O3 to:O34.
p4 _ sketch line:O4 to:O34.
p3 name:'p3'.
p4 name:'p4'.
P1 _ sketch point:(-2.5@0).
P1 cross.
P2 _ sketch point:(-2.5@1).
P2 cross.
P3 _ sketch point:(-2.5@2).
P3 cross.
P4 _ sketch point:(-2.5@3).
P4 cross.
a1 _ sketch line:P1 to:P.
b1 _ sketch line:P2 to:P.
c1 _ sketch line:P3 to:P.
d1 _ sketch line:P4 to:P.
A1 _ sketch intersectionOf:p1 and:a1.
B1 _ sketch intersectionOf:p1 and:b1.
C1 _ sketch intersectionOf:p1 and:c1.
D1 _ sketch intersectionOf:p1 and:d1.
A2 _ sketch intersectionOf:p2 and:a1.
B2 _ sketch intersectionOf:p2 and:b1.
C2 _ sketch intersectionOf:p2 and:c1.
D2 _ sketch intersectionOf:p2 and:d1.
a2 _ sketch line:A2 to:Q.
b2 _ sketch line:B2 to:Q.
c2 _ sketch line:C2 to:Q.
d2 _ sketch line:D2 to:Q.
A3 _ sketch intersectionOf:p3 and:a2.
B3 _ sketch intersectionOf:p3 and:b2.
C3 _ sketch intersectionOf:p3 and:c2.
D3 _ sketch intersectionOf:p3 and:d2.
a3 _ sketch line:A3 to:R.
b3 _ sketch line:B3 to:R.
c3 _ sketch line:C3 to:R.
d3 _ sketch line:D3 to:R.
A4 _ sketch intersectionOf:p4 and:a3.
B4 _ sketch intersectionOf:p4 and:b3.
C4 _ sketch intersectionOf:p4 and:c3.
D4 _ sketch intersectionOf:p4 and:d3.
p5 _ (sketch line:O12 to:O34) color:(Color blue).
A5 _ sketch intersectionOf:p5 and:a2.
B5 _ sketch intersectionOf:p5 and:b2.
C5 _ sketch intersectionOf:p5 and:c2.
D5 _ sketch intersectionOf:p5 and:d2.
PQ _ sketch line:P to:Q.
PQ color:(Color green).
QR _ sketch line:Q to:R.
QR color:(Color green).
a4 _ sketch line:A1 to:A5. a4 hide.
S _ sketch intersectionOf:a4 and:PQ.
| sketch O s p q r S P Q R A A1 A2 a1 a2 B P1 Q1 P2 Q2 S1 S2 R1 R2 b1 b2 f1 f2 D E P1R1 P2R2 Q1R1 Q2R2 Q1S1 Q2S2 |
sketch _ DrGeoSketch new.
O _ sketch point:(1@3).
O cross.O name:'O'.
S _ sketch point:(-1@-3).
S cross.
s _ sketch line:S to:O.
s name:'s'.
P _ sketch point:(0@-3).
P cross.
p _ sketch line:P to:O.
p name:'p'.
Q _ sketch point:(1@-3).
Q cross.
q _ sketch line:Q to:O.
q name:'q'.
R _ sketch point:(2@-3).
R cross.
r _ sketch line:R to:O.
r name:'r'.
A _ sketch point:(-2@-1).
A cross.A name:'A'.
A1 _ sketch point:(3@1).
A1 cross.
A2 _ sketch point:(3@-3).
A2 cross.
a1 _ sketch line:A to:A1.
a2 _ sketch line:A to:A2.
P1 _ sketch intersectionOf:a1 and:p.
P2 _ sketch intersectionOf:a2 and:p.
Q1 _ sketch intersectionOf:a1 and:q.
Q2 _ sketch intersectionOf:a2 and:q.
B _ sketch point:(1@-1).
B cross.B name:'B'.
b1 _ sketch line:B to:P1.
b2 _ sketch line:B to:P2.
S1 _ sketch intersectionOf:b1 and:s.
S2 _ sketch intersectionOf:b2 and:s.
f1 _ sketch line:A to:S1.
f2 _ sketch line:A to:S2.
R1 _ sketch intersectionOf:f1 and:r.
R2 _ sketch intersectionOf:f2 and:r.
P1R1 _ sketch line:P1 to:R1.
P2R2 _ sketch line:P2 to:R2.
D _ sketch intersectionOf:P1R1 and:P2R2.
D name:'D'.
Q1S1 _ sketch line:Q1 to:S1.
Q2S2 _ sketch line:Q2 to:S2.
E _ sketch intersectionOf:Q1S1 and:Q2S2.
E name:'E'.
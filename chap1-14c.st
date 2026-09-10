| sketch p P Q q qb r s sa sb R S a a2 a3 A A1 A2 A3 A4 b b2 b3 b4 B B1 B2 B3 B4 c c2 c3 c4 C C1 C2 C3 C4 F G |
sketch _ DrGeoSketch new.
P _ sketch point:0@4.
P cross.P name:'P'.
A1 _ sketch point:(-4@-3).
A1 cross.
A1 name:'A1'.
a _ sketch line:A1 to:P.
A2 _ sketch point:(1@-3).
A2 cross.
A2 name:'A2'.
r _ sketch line:A1 to:A2.
B _ sketch point:(-3@-4).
B cross.
b _ sketch line:P to:B.
B1 _ sketch intersectionOf:b and:r.
B1 name:'B1'.
C _ sketch point:(-2@-4).
C cross.
c _ sketch line:P to:C.
C1 _ sketch intersectionOf:c and:r.
C1 name:'C1'.
B _ sketch point:(2@-4).
B cross.
b2 _ (sketch line:P to:B) dotted.
B2 _ sketch intersectionOf:b2 and:r.
B2 name:'B2'.
C _ sketch point:(3@-4).
C cross.
c2 _ (sketch line:P to:C) dotted.
C2 _ sketch intersectionOf:c2 and:r.
C2 name:'C2'.
sa _ sketch point:(-5@-2).
sa cross.
sb _ sketch point:(4@3).
sb cross.
s _ sketch line:sa to:sb.
A3 _ sketch intersectionOf:s and:a.
B3 _ sketch intersectionOf:s and:b.
C3 _ sketch intersectionOf:s and:c.
A3 name:'A3'.
B3 name:'B3'.
C3 name:'C3'.
qb _ sketch point:(2@0).
qb cross.
q _ sketch line:A2 to:qb.
Q _ sketch point:-4@1.4.
Q cross.
qb _ (sketch line:P to:Q) dotted.
a3 _ sketch line:A2 to:A3.
Q _ sketch intersectionOf:a3 and:qb.
Q name:'Q'.
b3 _ sketch line:Q to:B3.
c3 _ sketch line:Q to:C3.
B4 _ sketch intersectionOf:q and:b3.
C4 _ sketch intersectionOf:q and:c3.
B4 name:'B4'.
C4 name:'C4'.
b4 _ sketch line:B4 to:B2.
c4 _ sketch line:C4 to:C2.
R _ sketch intersectionOf:b4 and:c4.
R name:'R'.
sketch line:R to:A2.
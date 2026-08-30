| sketch  O r s sx sy rx ry O1 O2 O3 c1 c2 c3 A1 A2 A3 B1 B2 B3 A1B2 A2B1 C3  A2B3 A3B2 C1 A1B3 A3B1 C2 p |
sketch _ DrGeoSketch new.
O _ sketch point:(-2@3).
O cross.O name:'O'.
rx _ sketch point:(-2@1).
rx cross.
ry _ sketch point:(2@2).
ry cross.
sy _ sketch point:(-2@-2).
sy cross.
sx _ sketch point:(3@-3).
sx cross.
r _ sketch line:rx to:ry.
s _ sketch line:sx to:sy.
O1 _ sketch point:(-3@0).
O1 cross.
O2 _ sketch point:(-1@0).
O2 cross.
O3 _ sketch point:(2@0).
O3 cross.
c1 _ sketch line:O1 to:O.
c2 _ sketch line:O2 to:O.
c3 _ sketch line:O3 to:O.
A1 _ sketch intersectionOf:c1 and:r.
A2 _ sketch intersectionOf:c2 and:r.
A3 _ sketch intersectionOf:c3 and:r.
B1 _ sketch intersectionOf:c1 and:s.
B2 _ sketch intersectionOf:c2 and:s.
B3 _ sketch intersectionOf:c3 and:s.
A1 name:'A1'.
A2 name:'A2'.
A3 name:'A3'.
B1 name:'B1'.
B2 name:'B2'.
B3 name:'B3'.
A1B2 _ sketch line:A1 to:B2.
A2B1 _ sketch line:A2 to:B1.
C3 _ sketch intersectionOf:A1B2 and:A2B1.
A2B3 _ sketch line:A2 to:B3.
A3B2 _ sketch line:A3 to:B2.
C1 _ sketch intersectionOf:A2B3 and:A3B2.
A1B3 _ sketch line:A1 to:B3.
A3B1 _ sketch line:A3 to:B1.
C2 _ sketch intersectionOf:A1B3 and:A3B1.
p _ sketch line:C1 to:C3.
p color:(Color green).
| sketch R R1 S X A B C A1 B1 C1 a b c a1 b1 c1 x r1 r2 r s1 s2 s AA1 BB1 CC1 AC1 A1C BC1 B1C p p1 p2 A1X X1 X2 AX2 S1 |
sketch _ DrGeoSketch new.
R _ sketch point:0@4.
R cross.R name:'R'.
R1 _ sketch point:4@1.
R1 cross.R1 name:'R1'.
r1 _ sketch point:(-4@0).
r1 cross.
r2 _ sketch point:(4.8@3).
r2 cross.
r _ sketch line:r1 to:r2.
r name:'r'.
s1 _ sketch point:(-4.8@0).
s1 cross.
s2 _ sketch point:(4.8@-1.5).
s2 cross.
s _ sketch line:s2 to:s1.
s name:'s'.
S _ sketch intersectionOf:r and:s.
S name:'S'.
A _ sketch point:(-3.75@0).
A cross.
B _ sketch point:(-3.50@0).
B cross.
C _ sketch point:(-3.25@0).
C cross.
a _ sketch line:A to:R.
b _ sketch line:B to:R.
c _ sketch line:C to:R.
A _ sketch intersectionOf:a and:r.
A name:'A'.
B _ sketch intersectionOf:b and:r.
B name:'B'.
C _ sketch intersectionOf:c and:r.
C name:'C'.
A1 _ sketch point:(0@-2).
A1 cross.
B1 _ sketch point:(-1@-2).
B1 cross.
C1 _ sketch point:(-3.75@-3).
C1 cross.
a1 _ sketch line:A1 to:R1.
b1 _ sketch line:B1 to:R1.
c1 _ sketch line:C1 to:R1.
A1 _ sketch intersectionOf:a1 and:s.
A1 name:'A1'.
B1 _ sketch intersectionOf:b1 and:s.
B1 name:'B1'.
C1 _ sketch intersectionOf:c1 and:s.
C1 name:'C1'.
AA1 _ sketch line:A to:A1.
BB1 _ sketch line:B to:B1.
CC1 _ sketch line:C to:C1.
AA1 color:(Color red).
BB1 color:(Color red).
CC1 color:(Color red).
AC1 _ sketch line:A to:C1.
A1C _ sketch line:A1 to:C.
BC1 _ sketch line:B to:C1.
B1C _ sketch line:B1 to:C.
AC1 hide.
A1C hide.
BC1 hide.
B1C hide.
p1 _ sketch intersectionOf:AC1 and:A1C.
p1 hide.
p2 _ sketch intersectionOf:BC1 and:B1C.
p2 hide.
p _ sketch line:p1 to:p2.
p name:'p'.
-3 to: 3 by:0.25 do: [ :i |
X _ sketch point:(i@0).
X cross.
x _ sketch line:X to:R.
X _ sketch intersectionOf:r and:x.
A1X _ sketch line:A1 to:X.
A1X hide.
X2 _ sketch intersectionOf:p and:A1X.
X2 hide.
AX2 _ sketch line:A to:X2.
AX2 hide.
X1 _ sketch intersectionOf:s and:AX2.
x _ sketch line:X to:X1.
x color:(Color red).
].
S1 _ sketch intersectionOf:p and:s.
S1 color:(Color green). 
| sketch p P a A b B c C d D p1 p2 a1 b1 c1 d1 A1 B1 C1 D1 s s1 s2 q A2 B2 C2 D2 AB2 BA2 AC2 CA2 X Y Z DA2 AX PD2 |
sketch _ DrGeoSketch new.
P _ sketch point:0@4.
P cross.P name:'P'.
A _ sketch point:(-3@0).
A cross.
a _ sketch line:A to:P.
B _ sketch point:(-2@0).
B cross.
b _ sketch line:B to:P.
C _ sketch point:(0@-2).
C cross.
c _ sketch line:C to:P.
D _ sketch point:(2@-2).
D cross.
d _ sketch line:D to:P.
p1 _ sketch point:(-2@-3).
p1 cross.
p2 _ sketch point:(2@-3).
p2 cross.
p _ sketch line:p1 to:p2.
p name:'p'.
A _ sketch intersectionOf:p and:a.
B _ sketch intersectionOf:p and:b.
C _ sketch intersectionOf:p and:c.
D _ sketch intersectionOf:p and:d.
A name:'A'.
B name:'B'.
C name:'C'.
D name:'D'.
A1 _ sketch point:(-2.5@0).
A1 cross.
a1 _ sketch line:A1 to:P.
B1 _ sketch point:(-1.5@0).
B1 cross.
b1 _ sketch line:B1 to:P.
C1 _ sketch point:(0.5@-2).
C1 cross.
c1 _ sketch line:C1 to:P.
A1 _ sketch intersectionOf:p and:a1.
B1 _ sketch intersectionOf:p and:b1.
C1 _ sketch intersectionOf:p and:c1.
A1 name:'A1'.
B1 name:'B1'.
C1 name:'C1'.
s1 _ sketch point:(-3@2).
s1 cross.
s2 _ sketch point:(2@1).
s2 cross.
s _ sketch line:s1 to:s2.
s name:'s'.
A2 _ sketch intersectionOf:s and:a1.
B2 _ sketch intersectionOf:s and:b1.
C2 _ sketch intersectionOf:s and:c1.
A2 name:'A2'.
B2 name:'B2'.
C2 name:'C2'.
AB2 _ sketch line:A to:B2.
BA2 _ sketch line:B to:A2.
AC2 _ sketch line:A to:C2.
CA2 _ sketch line:C to:A2.
Y _ sketch intersectionOf:AB2 and:BA2.
Z _ sketch intersectionOf:AC2 and:CA2.
q _ sketch line:Y to:Z.
q color:(Color red).
DA2 _ sketch line:D to:A2.
X _ sketch intersectionOf:q and:DA2.
AX _ sketch line:A to:X.
D2 _ sketch intersectionOf:s and:AX.
D2 name:'D2'.
PD2 _ sketch line:P to:D2.
D1 _ sketch intersectionOf:PD2 and:p.
D1 name:'D1'.

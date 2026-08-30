| sketch P a b c A1 B1 C1 A1C1 A1B1 B1C1 A2 B2 C2 A2B2 B2C2 x1 y1 x2 y2 X Y D1 D2 D3 |
sketch _ DrGeoSketch new.
P _ sketch point:0@4.
P cross.P name:'P'.
A1 _ sketch point:(-3@-2).
A1 cross.A1 name:'A1'.
a _ sketch line:A1 to:P.
B1 _ sketch point:(0@-1).
B1 cross.B1 name:'B1'.
b _ sketch line:B1 to:P.
C1 _ sketch point:(3@-2).
C1 cross.C1 name:'C1'.
c _ sketch line:C1 to:P.
A1C1 _ sketch line:A1 to:C1.
A1B1 _ sketch line:A1 to:B1.
B1C1 _ sketch line:B1 to:C1.
x1 _ sketch point:(-3@1).
x1 cross.
x2 _ sketch point:(3@1).
x2 cross.
X _ sketch line:x1 to:x2.
A2 _ sketch intersectionOf:a and:X.
C2 _ sketch intersectionOf:c and:X.
A2 name:'A2'.C2 name:'C2'.
y1 _ sketch point:(-3@0).
y1 cross.
y2 _ sketch point:(3@0).
y2 cross.
Y _ sketch line:y1 to:y2.
B2 _ sketch intersectionOf:b and:Y.
B2 name:'B2'.
A2B2 _ sketch line:A2 to:B2.
B2C2 _ sketch line:B2 to:C2.
D1 _ sketch intersectionOf:A1B1 and:A2B2.
D2 _ sketch intersectionOf:B1C1 and:B2C2.
D3 _ sketch intersectionOf:A1C1 and:X.
(sketch line:D1 to:D2) color:(Color green).
| sketch P E1 E2 E3 c1 c2 c3 A1 A2 A3 a1 a2 a3 B1 B2 B3 b1 b2 b3 C1 C2 C3 p |
sketch _ DrGeoSketch new.
P _ sketch point:0@4.
P cross.P name:'P'.
E1 _ sketch point:(-3@-3).
E1 cross.
c1 _ sketch line:E1 to:P.
c1 name:'c1'.
E2 _ sketch point:(-2@-4).
E2 cross.
c2 _ sketch line:E2 to:P.
c2 name:'c2'.
E3 _ sketch point:(0@-4).
E3 cross.
c3 _ sketch line:E3 to:P.
c3 name:'c3'.
A1 _ sketch point:(-3@2).
A1 cross.
A2 _ sketch point:(0@0).
A2 cross.
A3 _ sketch point:(2@2).
A3 cross.
a3 _ sketch line:A1 to:A2.
A1 _ sketch intersectionOf: c1 and: a3.
A2 _ sketch intersectionOf: c2 and: a3.
a2 _ sketch line:A1 to:A3.
A3 _ sketch intersectionOf:c3 and:a2.
a1 _ sketch line:A2 to:A3.
A1 name:'A1'.
A2 name:'A2'.
A3 name:'A3'.
B1 _ sketch point:(-3@-2).
B1 cross.
B2 _ sketch point:(-0.2@-0.7).
B2 cross.
B3 _ sketch point:(2@-2).
B3 cross.
b3 _ sketch line:B1 to:B2.
B1 _ sketch intersectionOf: c1 and: b3.
B2 _ sketch intersectionOf: c2 and: b3.
b2 _ sketch line:B1 to:B3.
B3 _ sketch intersectionOf:c3 and:b2.
b1 _ sketch line:B2 to:B3.
B1 name:'B1'.
B2 name:'B2'.
B3 name:'B3'.
C1 _ sketch intersectionOf:a1 and:b1.
C2 _ sketch intersectionOf:a2 and:b2.
C3 _ sketch intersectionOf:a3 and:b3.
C1 name:'C1'.
C2 name:'C2'.
C3 name:'C3'.
p _ sketch line:C1 to:C2.
p color:Color green.
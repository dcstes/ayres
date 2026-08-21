| sketch  A B P a1 A1 b1 B1 a2 A2 b2 B2 a3 A3 b3 B3 A2B3 A3B2 A1B3 A3B1 A1B2 A2B1 u v c1 c2 c3 |
sketch _ DrGeoSketch new.
sketch text:'dual Pappos' at:2@0.
A _ sketch point:-2@4.
A cross.A name:'A'.
B _ sketch point:(3@5).
B cross.B name:'B'.
A1 _ sketch point:(-3@0).
A1 cross.
a1 _ sketch line:A1 to:A.
A2 _ sketch point:(-2@0).
A2 cross.
a2 _ sketch line:A2 to:A.
A3 _ sketch point:(0@-2).
A3 cross.
a3 _ sketch line:A3 to:A.
a1 name:'a1'.
a2 name:'a2'.
a3 name:'a3'.
B1 _ sketch point:(-3@2).
B1 cross.
b1 _ sketch line:B1 to:B.
B2 _ sketch point:(-2@2).
B2 cross.
b2 _ sketch line:B2 to:B.
B3 _ sketch point:(0@2).
B3 cross.
b3 _ sketch line:B3 to:B.
b1 name:'b1'.
b2 name:'b2'.
b3 name:'b3'.
A2B3 _ sketch intersectionOf:a2 and:b3.
A3B2 _ sketch intersectionOf:a3 and:b2.
A1B3 _ sketch intersectionOf:a1 and:b3.
A3B1 _ sketch intersectionOf:a3 and:b1.
A1B2 _ sketch intersectionOf:a1 and:b2.
A2B1 _ sketch intersectionOf:a2 and:b1.
c1 _ sketch line:A2B3 to:A3B2.
c2 _ sketch line:A1B3 to:A3B1.
c3 _ sketch line:A1B2 to:A2B1.
u _ sketch line:A1B2 to:A2B3.
v _ sketch line:A2B1 to:A1B3.
c1 color:Color green.
c2 color:Color green.
c3 color:Color green.
u color:Color blue.
v color:Color blue.
P _ sketch intersectionOf:c1 and:c2.
P name:'P'.
A2B3 color:Color blue.
A1B3 color:Color blue.
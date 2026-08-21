| sketch A1 A2 B1 B2 p q Q A1A2 B1B2 |
sketch _ DrGeoSketch new.
sketch text:'p =^ q and Q invariant then p -^R q' at:(-5@-5).
A1 _ sketch point:0@2.
A1 cross.A1 name:'A1'.
B1 _ sketch point:(3@3).
B1 cross.B1 name:'B1'.
A2 _ sketch point:(-2@0).
A2 cross.A2 name:'A2'.
B2 _ sketch point:(5@-2).
B2 cross.B2 name:'B2'.
p _ sketch line:A1 to:B1.
q _ sketch line:A2 to:B2.
A1A2 _ sketch line:A1 to:A2.
B1B2 _ sketch line:B1 to:B2.
Q _ sketch intersectionOf:p and:q.
Q color:Color green.
R _ sketch intersectionOf:A1A2 and:B1B2.
R name:'R'.Q name:'Q'.
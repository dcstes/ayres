| sketch p q P U V A B a1 A1 b1 B1 a2 A2 b2 B2 a3 A3 b3 B3 p1 p2 q1 q2 A2B3 A3B2 A1B3 A3B1 A1B2 A2B1 C1 C2 C3 L |
sketch _ DrGeoSketch new.
sketch text:'Pappos' at:3@0.
A _ sketch point:0@4.
A cross.A name:'A'.
B _ sketch point:(-2@4).
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
p1 _ sketch point:(-2@-3).
p1 cross.
p2 _ sketch point:(2@-4).
p2 cross.
p _ sketch line:p1 to:p2.
p name:'p'.
a1 dotted.a2 dotted.a3 dotted.
A1 _ sketch intersectionOf:p and:a1.
A2 _ sketch intersectionOf:p and:a2.
A3 _ sketch intersectionOf:p and:a3.
A1 name:'A1'.
A2 name:'A2'.
A3 name:'A3'.
B1 _ sketch point:(-3@2).
B1 cross.
b1 _ sketch line:B1 to:B.
B2 _ sketch point:(-2@2).
B2 cross.
b2 _ sketch line:B2 to:B.
B3 _ sketch point:(0@2).
B3 cross.
b3 _ sketch line:B3 to:B.
q1 _ sketch point:(-4@1).
q1 cross.
q2 _ sketch point:(4@2).
q2 cross.
q _ sketch line:q1 to:q2.
q name:'q'.
b1 dotted.b2 dotted.b3 dotted.
B1 _ sketch intersectionOf:q and:b1.
B2 _ sketch intersectionOf:q and:b2.
B3 _ sketch intersectionOf:q and:b3.
B1 name:'B1'.
B2 name:'B2'.
B3 name:'B3'.
A2B3 _ sketch line:A2 to:B3.
A3B2 _ sketch line:A3 to:B2.
A1B3 _ sketch line:A1 to:B3.
A3B1 _ sketch line:A3 to:B1.
A1B2 _ sketch line:A1 to:B2.
A2B1 _ sketch line:A2 to:B1.
C1 _ sketch intersectionOf:A2B3 and:A3B2.
C2 _ sketch intersectionOf:A1B3 and:A3B1.
C3 _ sketch intersectionOf:A1B2 and:A2B1.
C1 name:'C1'.
C2 name:'C2'.
C3 name:'C3'.
L _ (sketch line:C1 to:C3) color:Color green.
P _ sketch intersectionOf:p and:q.
P name:'P'.
U _ sketch intersectionOf:A1B2 and:A2B3.
U name:'U'.
V _ sketch intersectionOf:A2B1 and:A1B3.
V name:'V'.
A2B3 color:Color blue.
A1B3 color:Color blue.
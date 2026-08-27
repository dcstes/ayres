| sketch a b c d A B C D E F G H x y z|
sketch _ DrGeoSketch new.
sketch text:'complete quadrilateral' at:(-2@4).
sketch text:'6 vertices   2sides/vertex' at:(-2@3).
sketch text:' 3vertices/side    4 sides' at:(-2@2).
sketch text:'3 diagonals for 6 vertices' at:(-2@1).
A _ sketch point:(0@1).
A cross.
B _ sketch point:(-2@-3).
B cross.
C _​ sketch point:(2@-3).
C cross.
D _​ sketch point:(-1@-1).
D cross.
E _​ sketch point:(1@-1).
E cross.
a _ sketch line:B to:A.a name:'a'.
b _ sketch line:C to:A.b name:'b'.
c _ sketch line:D to:C.c name:'c'.
d _ sketch line:E to:B.d name:'d'.
D _​ sketch intersectionOf:c and:a.
E _​ sketch intersectionOf:d and:b.
F _​ sketch intersectionOf:c and:d.
(sketch line:A to:F) color:(Color green).
(sketch line:B to:C) color:(Color green).
(sketch line:E to:D) color:(Color green).

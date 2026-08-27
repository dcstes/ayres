| sketch a b c d e f A B C D E F G |
sketch _ DrGeoSketch new.
sketch text:'complete quadrangle' at:(-2@4).
sketch text:'4 vertices   3sides/vertex' at:(-2@3).
sketch text:' 2 vertices/side    6 sides' at:(-2@2).
sketch text:'3 diagonals for 6 sides' at:(-2@1).
A _ sketch point:(0@1).
A cross.A name:'A'.
B _ sketch point:(-2@-3).
B cross.B name:'B'.
C _​ sketch point:(2@-3).
C cross.C name:'C'.
D _​ sketch point:(0@-2).
D cross.D name:'D'.
a _ sketch line:A to:C.
b _ sketch line:C to:B.
c _ sketch line:C to:D.
d _ sketch line:D to:B.
e _ sketch line:A to:B.
f _ sketch line:A to:D.
E _ sketch intersectionOf:e and:c.
E color:Color green.E name:'E'.
F _​ sketch intersectionOf:a and:d.
F color:Color green.F name:'F'.
G _ sketch intersectionOf:f and:b.
G color:Color green.G name:'G'.
(sketch line:E to:F) color:Color green.
(sketch line:F to:G) color:Color green.
(sketch line:E to:G) color:Color green.

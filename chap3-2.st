| sketch a b c d e f g h i j A B C D E |
sketch _ DrGeoSketch new.
sketch text:'complete 5-point in space' at:(-4@4).
sketch text:'5 vertices   4sides/vertex   6 planes/vertex' at:(-4@3).
sketch text:' 2 vertices/side    10 sides    3 planes/side' at:(-4@2).
sketch text:'3 vertices/plane 3 sides/plane  10 planes' at:(-4@1).
A _ sketch point:(0@-2).
A cross.A name:'A'.
B _ sketch point:(-2@-3).
B cross.B name:'B'.
C _​ sketch point:(2@-3).
C cross.C name:'C'.
D _​ sketch point:(0@0).
D cross.D name:'D'.
E _​ sketch point:(-3@0).
E cross.E name:'E'.
a _ sketch line:A to:C.
b _ sketch line:C to:B.
c _ sketch line:C to:D.
d _ sketch line:D to:B.
e _ sketch line:A to:B.
f _​ sketch line:A to:D.
g _​ sketch line:E to:D.
h _​ sketch line:E to:A.
i _​ sketch line:E to:C.
j _​ sketch line:E to:B.

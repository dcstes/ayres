| sketch p P Q a a2 A b b2 B c c2 c3 C C2 d d2 D e e2 e3 e4 E E2 E3 p1 p2 |
sketch _ DrGeoSketch new.
P _ sketch point:0@4.
sketch text:'B(b,b2,c3,p) =^c2 P(b,a,d,c)' at:-3@3.
P cross.P name:'P'.
A _ sketch point:(-3@0).
A cross.
a _ sketch line:A to:P.
a name:'a'.
B _ sketch point:(-2@0).
B cross.
b _ sketch line:B to:P.
b name:'b'.
C _ sketch point:(0@-2).
C cross.
c _ sketch line:C to:P.
c name:'c'.
D _ sketch point:(2@-2).
D cross.
d _ sketch line:D to:P.
d name:'d'.
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
Q _ sketch point:(-3@3).
Q cross.
b2 _ sketch line:Q to:B.
Q _ sketch intersectionOf:a and:b2.
Q name:'Q'.
c2 _ sketch line:Q to:C.
c2 name:'c2'.
d2 _ sketch line:Q to:D.
C2 _ sketch intersectionOf:c2 and:d.
C2 name:'C2'.
c3 _ sketch line:C2 to:B.
c3 name:'c3'.
E _ sketch point:(1@-2).
E cross.
e _ (sketch line:E to:P) color:Color green.
e name:'e'.
E _ (sketch intersectionOf:e and:p) color:Color green.
E name:'E'.
e2 _ (sketch line:E to:Q) color:Color green.
E2 _ (sketch intersectionOf:e2 and:d) color:Color green.
e3 _ (sketch line:E2 to:B) color:Color green.
E3 _ (sketch intersectionOf:e3 and:c2) color:Color green.
e4 _ (sketch line:E3 to:P) color:Color green.

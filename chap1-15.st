| sketch r p P Q a A b B c C d D E e e2 e3 A2 C2 D2 D3 E2 E3 E4 q p1 p2 |
sketch _ DrGeoSketch new.
P _ sketch point:0@4.
P cross.P name:'P'.
sketch text:'d(D3,D,P,D2) =^ A2 p(C,D,A,B)' at:-4@3.
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
Q _ sketch point:(4@-6).
Q cross.
q _ sketch line:Q to:B.
q name:'q'.
A2 _ sketch intersectionOf:q and:a.
C2 _ sketch intersectionOf:q and:c.
D2 _ sketch intersectionOf:q and:d.
A2 name:'A2'.
C2 name:'C2'.
D2 name:'D2'.
r _ sketch line:C to:A2.
D3 _ sketch intersectionOf:r and:d.
D3 name:'D3'.
E _ sketch point:(1@-2).
E cross.
e _ (sketch line:E to:P) color:Color green.
e name:'e'.
E _ sketch intersectionOf:p and:e.
E2 _ sketch intersectionOf:q and:e.
E2 color:Color green.
e2 _ (sketch line:C to:E2) color:Color green.
E3 _ sketch intersectionOf:d and:e2.
E3 color:Color green.
e3 _ (sketch line:A2 to:E3) color:Color green.
E4 _ sketch intersectionOf:e3 and:p.
E4 color:Color green.

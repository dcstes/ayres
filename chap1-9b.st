| sketch p q a A Aq b B Bq c C Cq d D Dq p1 p2 q1 q2 I |
sketch _ DrGeoSketch new.
sketch text:'p(A,B,C,D,...) =^ p"(A",B",C",D",...)' at:-4@-4.
P _ sketch point:0@4.
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
q1 _ sketch point:(-2@-1).
q1 cross.
q2 _ sketch point:(2@1).
q2 cross.
q _ sketch line:q1 to:q2.
q name:'p"'.
A _ sketch intersectionOf:p and:a.
B _ sketch intersectionOf:p and:b.
C _ sketch intersectionOf:p and:c.
D _ sketch intersectionOf:p and:d.
I _ sketch intersectionOf:p and:q.
Aq _ sketch intersectionOf:q and:a.
Bq _ sketch intersectionOf:q and:b.
Cq _ sketch intersectionOf:q and:c.
Dq _ sketch intersectionOf:q and:d.
A name:'A'.
B name:'B'.
C name:'C'.
D name:'D'.
I name:'I'.
Aq name:'A"'.
Bq name:'B"'.
Cq name:'C"'.
Dq name:'D"'.
| sketch p P q a A Aq b B Bq c C Cq d D Dq |
sketch _ DrGeoSketch new.
sketch text:'p(A,B,C,D,...) =center P^ p"(A",B",C",D",...)' at:-4@-4.
A _ sketch point:(-5.2@-3).
A cross.
B _ sketch point:(-3.5@-3).
B cross.
A name:'A'.
B name:'B'.
p _ sketch line:A to:B.
Aq _ sketch point:(-4.8@-2.4).
Aq cross.
Aq name:'A"'.
a _ sketch line:Aq to:A.
Bq _ sketch point:(-2.6@-1.3).
Bq cross.
Bq name:'B"'.
b _ sketch line:B to:Bq.
P _ sketch intersectionOf:a and:b.
P name:'P'.
q _ sketch line:Bq to:Aq.
C _ sketch point:(0@-2).
C cross.
c _ sketch line:C to:P.
c name:'c'.
D _ sketch point:(2@-2).
D cross.
d _ sketch line:D to:P.
d name:'d'.
C _ sketch intersectionOf:p and:c.
D _ sketch intersectionOf:p and:d.
I _ sketch intersectionOf:p and:q.
I color:Color green.
Cq _ sketch intersectionOf:q and:c.
Dq _ sketch intersectionOf:q and:d.
C name:'C'.
D name:'D'.
I name:'I'.
Cq name:'C"'.
Dq name:'D"'.
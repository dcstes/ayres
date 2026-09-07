| sketch C a b d e A B D P S p q r s T U V |
sketch _ DrGeoSketch new.

C _ sketch point:(0@3).
C cross. C name:'C'.
A _ sketch point:(-1@-3).
A cross.
a _ sketch line:C to:A.
A name:'a'.
B _ sketch point:(0@-3).
B cross.
b _ sketch line:C to:B.
B name:'b'.
D _ sketch point:(1@-3).
D cross.
d _ sketch line:C to:D.
D name:'d'.
P _ sketch pointOnLine:a at:0.9.
P name:'P'.P color:(Color blue).
S _ sketch pointOnLine:a at:0.8.
S name:'S'.S color:(Color blue).
R _ sketch pointOnLine:d at:0.9.
R name:'R'.
p _ sketch line:P to:R.
r _ sketch line:R to:S.
U _ sketch intersectionOf:b and:p.
s _ sketch line:U to:S.
V _ sketch intersectionOf:b and:r.
q _ sketch line:V to:P.
U color:(Color brown).
V color:(Color brown).
T _ sketch intersectionOf:s and:q.
e _ sketch line:C to:T.
e color:(Color green).
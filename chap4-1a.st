| sketch P Q R S p r s c A B C D E sq rq sp |
sketch _ DrGeoSketch new.
P _ sketch point:(-0.1@1).
P cross. P name:'P'.
Q _ sketch point:(0@2).
Q cross. Q name:'Q'.
p _ sketch line:P to:Q.
R _ sketch point:(-3@4.2).
R cross. R name:'R'.
r _ sketch line:R to:P.
S _ sketch point:(-1.5@1).
S cross. S name:'S'.
s _ sketch line:R to:S.
A _ sketch intersectionOf:p and:s.
A name:'A'.
sq _ sketch line:S to:Q.
C _ sketch intersectionOf:sq and:r.
C name:'C'.
sp _ sketch line:S to:P.
rq _ sketch line:R to:Q.
B _ sketch intersectionOf:sp and:rq.
B name:'B'.
c _ sketch line:A to:B.
c color:(Color green).
D _ sketch intersectionOf:r and:c.
D name:'D'.
E _ sketch intersectionOf:sq and:c.
E name:'E'.
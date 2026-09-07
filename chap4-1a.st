| sketch P Q R S p r s c A B C D E sq rq sp block1 block2 signlenBlock |
sketch _ DrGeoSketch new.

signlenBlock _ [ :pt1 :pt2 :line | 
	| point1 point2 u u12 dist dotprod |
	u _ line mathItem direction.
	point1 _ pt1 mathItem point.
	point2 _ pt2 mathItem point.
	u12 _ point2 - point1.
	dist _ point1 dist:point2.
	dotprod _ u dotProduct:u12.
	dist * (dotprod sign) 
	].

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
p color:(Color red).
s color:(Color red).
A name:'A'.
sq _ sketch line:S to:Q.
C _ sketch intersectionOf:sq and:r.
C name:'C'.
sp _ sketch line:S to:P.
rq _ sketch line:R to:Q.
B _ sketch intersectionOf:sp and:rq.
rq color:(Color blue).
sp color:(Color blue).
B name:'B'.
c _ sketch line:A to:B.
c color:(Color green).
D _ sketch intersectionOf:r and:c.
D name:'D'.
E _ sketch intersectionOf:sq and:c.
E name:'E'.

sketch text:'(A,B;D,E)' at:-3@-3.
block1 _ [(signlenBlock value:A value:D value:c) / (signlenBlock value:B value:D value:c)].
block2 _ [(signlenBlock value:A value:E value:c) / (signlenBlock value:B value:E value:c)].
sketch value:[(block1 value) /(block2 value)] at:-1@-3.
| sketch P P1 Q R R1 S S1 p r s c A B C D E bp br sq block1 block2 signlenBlock |
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

A _ sketch point:(-2@-1).
A name:'A'.A cross.
B _ sketch point:(1@-1).
B name:'B'.
B cross.
c _ sketch line:A to:B.
D _ sketch pointOnLine: c at: (0.7).
D name:'D'.
D cross.
P1 _ sketch point:(0@2).
P1 cross.P1 name:'p'.
S1 _ sketch point:(1@1).
S1 cross.S1 name:'s'.
p _ sketch line:A to:P1.
s _ sketch line:A to:S1.
p color:(Color red).
s color:(Color red).
R1 _ sketch point:(-1@1).
R1 cross.R1 name:'r'.
r _ sketch line:D to:R1.
P _ sketch intersectionOf:p and:r.
P name:'P'.
R _ sketch intersectionOf:s and:r.
R name:'R'.
bp _ sketch line:B to:P.
S _ sketch intersectionOf:s and:bp.
S name:'S'.
br _ sketch line:B to:R.
br color:(Color blue).
bp color:(Color blue).
Q _ sketch intersectionOf:p and:br.
Q name:'Q'.
sq _ sketch line:S to:Q.
E _ sketch intersectionOf: c and:sq.
E name:'E'.

sketch text:'(A,B;D,E)' at:-3@-3.
block1 _ [(signlenBlock value:A value:D value:c) / (signlenBlock value:B value:D value:c)].
block2 _ [(signlenBlock value:A value:E value:c) / (signlenBlock value:B value:E value:c)].
sketch value:[(block1 value) /(block2 value)] at:-1@-3.
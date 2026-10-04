| sketch D1 D2 R S p q r s o M A A1 A2  rq sp X x D3 X1 x1 block1 block2 signlenBlock |
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

D1 _ sketch point:(-0.1@1).
D1 cross. D1 name:'D1'.
D2 _ sketch point:(1@1.5).
D2 cross. D2 name:'D2'.
p _ sketch line:D1 to:D2.
R _ sketch point:(-1@2).
R cross. R name:'R'.
r _ sketch line:R to:D1.
S _ sketch point:(1@4).
S cross. S name:'S'.
q _ sketch line:R to:S.
s _ sketch line:S to:D2.
rq _ sketch line:R to:D2.
sp _ sketch line:S to:D1.

M _ sketch intersectionOf:p and:q.
M name:'M'.
A1 _ sketch intersectionOf:r and:s.
A1 name:'A1'.

o _ sketch line:M to:A1.
A2 _ sketch intersectionOf:sp and:o.
A2 name:'A2'.
A _ sketch intersectionOf:rq and:o.
A name:'A'.

sketch text:'(M,A1;A,A2)' at:-3@-3.
block1 _ [(signlenBlock value:M value:A value:o) / (signlenBlock value:A1 value:A value:o)].
block2 _ [(signlenBlock value:M value:A2 value:o) / (signlenBlock value:A1 value:A2 value:o)].
sketch value:[(block1 value) /(block2 value)] at:0@-3.

X _ sketch point:(-1@-2).
X cross.
x _ sketch line:R to:X.
X _ sketch intersectionOf:o and:x.
X name:'X'.
D3 _ sketch intersectionOf:p and:x.
D3 name:'D3'.
x1 _ sketch line:S to:D3.
X1 _ sketch intersectionOf:x1 and:o.
X1 name:'X1'.

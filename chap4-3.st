| sketch a b c d e f x y z A B C D E F G H1 H2 H3 H4 H5 H6 block1 block2 signlenBlock |
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

A _ sketch point:(0@1).
A cross.A name:'A'.
B _ sketch point:(-2@-3).
B cross.B name:'B'.
C _ sketch point:(2@-3).
C cross.C name:'C'.
D _ sketch point:(0@-2).
D cross.D name:'D'.
a _ sketch line:A to:C.
b _ sketch line:C to:B.
c _ sketch line:C to:D.
d _ sketch line:D to:B.
e _ sketch line:A to:B.
f _ sketch line:A to:D.
E _ sketch intersectionOf:e and:c.
E color:Color green.E name:'E'.
F _ sketch intersectionOf:a and:d.
F color:Color green.F name:'F'.
G _ sketch intersectionOf:f and:b.
G color:Color green.G name:'G'.
x _ sketch line:E to:F.
y _ sketch line:F to:G.
z _ sketch line:E to:G.
x color:Color green.
y color:Color green.
z color:Color green.
H1 _ sketch intersectionOf:x and:f.
H2 _ sketch intersectionOf:x and:b.
H3 _ sketch intersectionOf:y and:e.
H4 _ sketch intersectionOf:y and:c.
H5 _ sketch intersectionOf:z and:a.
H6 _ sketch intersectionOf:z and:d.
H1 name:'H'.

sketch text:'(A,D;H,G)' at:-4@3.
block1 _ [(signlenBlock value:A value:H1 value:f) / (signlenBlock value:D value:H1 value:f)].
block2 _ [(signlenBlock value:A value:G value:f) / (signlenBlock value:D value:G value:f)].
sketch value:[(block1 value) /(block2 value)] at:-2@3.
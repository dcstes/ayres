| sketch R S X x A a B b C c A1 a1 B1 b1 C1 c1 P p1 p2 p bc1 cb1 ac1 ca1 xc1 conic Q X1 q q1 q2 x1 k l m X2 A2 A3 A4 A5 A6 q3 q4 q5 q6 pointOfPapposBlock pointOfPapposForPencilsBlock N|

pointOfPapposForPencilsBlock _ [ :array1 :array2 |
	|
	pap1 pap2
	pt3pt1 pt4pt1 pt5pt1
	pt3pt2 pt4pt2 pt5pt2
	pt4pt1pt5pt2
	pt5pt1pt4pt2
	pt3pt1pt5pt2
	pt5pt1pt3pt2
	|
	pt3pt1 _ array1 at:1.
	pt4pt1 _ array1 at:2.
	pt5pt1 _ array1 at:3.
	pt3pt2 _ array2 at:1.
	pt4pt2 _ array2 at:2.
	pt5pt2 _ array2 at:3.

	pt4pt1pt5pt2 _ sketch intersectionOf:pt4pt1 and:pt5pt2.
pt5pt1pt4pt2 _ sketch intersectionOf:pt5pt1 and:pt4pt2.
pt3pt1pt5pt2 _ sketch intersectionOf:pt3pt1 and:pt5pt2.
pt5pt1pt3pt2 _ sketch intersectionOf:pt5pt1 and:pt3pt2.
pap1 _ sketch line:pt4pt1pt5pt2 to:pt5pt1pt4pt2.
pt4pt1pt5pt2 hide.
pt5pt1pt4pt2 hide.
pt3pt1pt5pt2 hide.
pt5pt1pt3pt2 hide.
pap1 hide.
pap2 _ sketch line:pt3pt1pt5pt2 to:pt5pt1pt3pt2.
pap2 hide.
sketch intersectionOf:pap1 and:pap2.
	].

pointOfPapposBlock _ [ :centers :points |
		|
	pt1 pt2 pt3 pt4 pt5
	pt3pt1 pt4pt1 pt5pt1
	pt3pt2 pt4pt2 pt5pt2
	|
	pt1 _ centers at:1.
	pt2 _ centers at:2.
	pt3 _ points at:1.
	pt4 _ points at:2.
	pt5 _ points at:3.
	pt3pt1 _ sketch line:pt3 to:pt1.
	pt3pt1 hide.
	pt4pt1 _ sketch line:pt4 to:pt1.
	pt4pt1 hide.
	pt5pt1 _ sketch line:pt5 to:pt1.
	pt5pt1 hide.
	pt3pt2 _ sketch line:pt3 to:pt2.
	pt3pt2 hide.
	pt4pt2 _ sketch line:pt4 to:pt2.
	pt4pt2 hide.
	pt5pt2 _ sketch line:pt5 to:pt2.
	pt5pt2 hide.
	pointOfPapposForPencilsBlock value:{ pt3pt1. pt4pt1. pt5pt1 } value:{ pt3pt2. pt4pt2. pt5pt2 }
	].

sketch _ DrGeoSketch new.
R _ sketch point:0@4.
R cross.R name:'R'.
S _ sketch point:3.5@4.
S cross.S name:'S'.
A _ sketch point:-3.75@0.
A cross.A name:'a'.
a _ sketch line:A to:R.
B _ sketch point:-3.50@0.
B cross.B name:'b'.
b _ sketch line:B to:R.
C _ sketch point:-3.25@0.
C cross.C name:'c'.
c _ sketch line:C to:R.
A1 _ sketch point:-3.75@2.
A1 cross.A1 name:'a1'.
a1 _ sketch line:A1 to:S.
B1 _ sketch point:-3.50@1.5.
B1 cross.B1 name:'b1'.
b1 _ sketch line:B1 to:S.
C1 _ sketch point:-3.25@1.
C1 cross.C1 name:'c1'.
c1 _ sketch line:C1 to:S.

A _ sketch intersectionOf:a and:a1.
A name:'A'.
B _ sketch intersectionOf:b and:b1.
B name:'B'.
C _ sketch intersectionOf:c and:c1.
C name:'C'.

conic _ OrderedCollection new.
conic add:R.
conic add:S.
conic add:A.
conic add:B.
conic add:C.

P _ pointOfPapposForPencilsBlock value:{ a. b. c } value:{ a1. b1. c1 }.
P name:'P'.

-3 to: 3 by:0.25 do: [ :i |
X _ sketch point:(i@0).
X cross.
x _ sketch line:X to:R.
xc1 _ sketch intersectionOf:x and:c1.
xc1 hide.
p _ sketch line:P to:xc1.
p hide.
X _ sketch intersectionOf:p and:c.
X hide.
p _ sketch line:S to:X.
X _ sketch intersectionOf:x and:p.
conic add:X.
].

A1 _ conic at:6.
A2 _ conic at:26.
A3 _ conic at:8.
A4 _ conic at:15.
A5 _ conic at:10.
A6 _ conic at:12.
A1 color:(Color green).
A2 color:(Color green).
A3 color:(Color green).
A4 color:(Color green).
A5 color:(Color green).
A6 color:(Color green).

Q _ pointOfPapposBlock value:{A1.S } value:{ A. B. C }.
q1 _ sketch line:A1 to:Q.
q1 color:(Color green).
Q _ pointOfPapposBlock value:{A2.S } value:{ A. B. C }.
q2 _ sketch line:A2 to:Q.
q2 color:(Color green).
Q _ pointOfPapposBlock value:{A3.S } value:{ A. B. C }.
q3 _ sketch line:A3 to:Q.
q3 color:(Color green).
Q _ pointOfPapposBlock value:{A4.S } value:{ A. B. C }.
q4 _ sketch line:A4 to:Q.
q4 color:(Color green).
Q _ pointOfPapposBlock value:{A5.S } value:{ A. B. C }.
q5 _ sketch line:A5 to:Q.
q5 color:(Color green).
Q _ pointOfPapposBlock value:{A6.S } value:{ A. B. C }.
q6 _ sketch line:A6 to:Q.
q6 color:(Color green).

k _ sketch line:(sketch intersectionOf:q1 and:q2) to:(sketch intersectionOf:q4 and:q5).
k color:(Color blue).
l _ sketch line:(sketch intersectionOf:q2 and:q3) to:(sketch intersectionOf:q5 and:q6).
l color:(Color blue).
m _ sketch line:(sketch intersectionOf:q3 and:q4) to:(sketch intersectionOf:q1 and:q6).
m color:(Color blue).
N _ sketch intersectionOf:k and:l.
N color:(Color blue).
N name:'N'.

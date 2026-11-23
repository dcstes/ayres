| sketch R S T X x A a B b C c A1 a1 B1 b1 C1 c1 P Q p xc1 PQ RS PS QR pointOfPapposBlock imageOfPointInInvolutionBlock pointOfPapposForPencilsBlock conic |

sketch _ DrGeoSketch new.

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

imageOfPointInInvolutionBlock _ [ :ptR :lines :points |
		| k V W  pt1 pt2 pt3 pt2R pt3R im1 im1R im2 im2R base aline gline |
	pt1 _ points at:1.
	im1 _ points at:2.
	pt2 _ points at:3.
	im2 _ points at:4.
	pt3 _ points at:5.
	base _ lines at:1.
	aline _ lines at:2.
	
	k _ sketch line:ptR to:pt2.
       pt2R _ sketch intersectionOf:k and:aline.
       k hide.pt2R hide.
       gline _ sketch line:ptR to:im1.
       im1R _ sketch intersectionOf:gline and:aline.
       gline hide.im1R hide.
       k _ sketch line:ptR to:im2.
       im2R _ sketch intersectionOf:k and:aline.
       k hide.im2R hide.
       k _ sketch line:ptR to:pt3.
       pt3R _ sketch intersectionOf:k and:aline.
       k hide.pt3R hide.
       k _ sketch line:im2 to:pt2R.
       k hide.
       V _ sketch intersectionOf:gline and:k.
       V hide.
       k _ sketch line:im2 to:pt3R.
       k hide.
       W _ sketch intersectionOf:gline and:k.
       W hide.
       k _ sketch line:pt2R to:W.
       k hide.
       sketch intersectionOf:base and:k.
].

R _ sketch point:0@4.
R cross.R name:'R'.
S _ sketch point:3.5@4.
S cross.S name:'S'.
A _ sketch point:-3.125@-2.
A cross.A name:'A'.
B _ sketch point:-1.125@-3.
B cross.B name:'B'.
C _ sketch point:1.125@-2.
C cross.C name:'C'.

a _ sketch line:A to:R.
b _ sketch line:B to:R.
c _ sketch line:C to:R.
a1 _ sketch line:A to:S.
b1 _ sketch line:B to:S.
c1 _ sketch line:C to:S.

conic _ OrderedCollection new.
conic add:R.
conic add:S.
conic add:A.
conic add:B.
conic add:C.

T _ pointOfPapposForPencilsBlock value:{ a. b. c } value:{ a1. b1. c1. }.
T name:'T'.

-3.75 to: 3.75 by:0.25 do: [ :i |
X _ sketch point:(i@0).
X cross.
X hide.
x _ sketch line:X to:R.
x hide.
xc1 _ sketch intersectionOf:x and:c1.
xc1 hide.
p _ sketch line:T to:xc1.
p hide.
X _ sketch intersectionOf:p and:c.
X hide.
p _ sketch line:S to:X.
p hide.
X _ sketch intersectionOf:x and:p.
conic add:X.
].

P _ C.
Q _ A.

S color:(Color green).
R color:(Color green).
P color:(Color green).
Q color:(Color green).

PQ _ sketch line:P to:Q.
RS _ sketch line:S to:R.
PS _ sketch line:S to:P.
QR _ sketch line:R to:Q.
PQ color:(Color green).
RS color:(Color green).
PS color:(Color green).
QR color:(Color green).

{  0 } do: [ :i |
	| pt1 pt2 im1 im2 pt1Line |
X _ sketch point:(i@0).
X cross.
x _ sketch line:X to:B.
pt1 _ sketch intersectionOf:PQ and:x.
pt1 color:(Color red).
pt1 name:'pt1'.
pt2 _ sketch intersectionOf:PS and:x.
pt2 color:(Color red).
pt2 name:'pt2'.
im1 _ sketch intersectionOf:RS and:x.
im1 color:(Color blue).
im1 name:'im1'.
im2 _ sketch intersectionOf:QR and:x.
im2 color:(Color blue).
im2 name:'im2'.
pt1Line _ sketch line:pt1 to:A.
pt1Line hide.
X _ imageOfPointInInvolutionBlock value:T value:{x.pt1Line } value:{pt1.im1.pt2.im2.B}.
X color:(Color blue).
X name:'B"'.
conic add:X.
].

| sketch R S A a B b C c A1 a1 B1 b1 C1 c1 P Q A2 pointOfPapposBlock pointOfPapposForPencilsBlock conic f g h l m n M N K f1 f2 g1 g2 F1 G1 F2 G2 F G imageOfPointInInvolutionBlock fLine |

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
T _ sketch point:-3@3.
T cross.T name:'T'.

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

P _ pointOfPapposForPencilsBlock value:{ a. b. c } value:{ a1. b1. c1. }.
P name:'P'.

h _ sketch line:P to:R.
h color:(Color green).
l _ sketch line:P to:S.
l color:(Color green).

-3.75 to: 3.75 by:0.25 do: [ :i |
	| xc1 x X p |
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

A1 _ conic at:8.
C1 _ conic at:19.
A2 _ conic at:15.

Q _ pointOfPapposBlock value:{A1.S } value:{ R. B. C }.
m _ sketch line:A1 to:Q.
m color:(Color green).

Q _ pointOfPapposBlock value:{C1.S } value:{ R. B. A }.
n _ sketch line:C1 to:Q.
n color:(Color green).

Q _ pointOfPapposBlock value:{A2.S } value:{ R. B. C }.
f _ sketch line:A2 to:Q.
f color:(Color red).

fLine _ sketch line:((sketch point:3.5@-3.5) cross) to:((sketch point:(-3.5@-3.5)) cross).

K _ sketch intersectionOf:f and:fLine.
K name:'K'.

M _ sketch intersectionOf:h and:m.
M name:'M'.
N _ sketch intersectionOf:l and:n.
N name:'N'.
Q _ sketch intersectionOf:m and:n.
Q name:'Q'.

f1 _ sketch line:Q to:K.
g1 _ sketch line:P to:K.
f2 _ sketch line:M to:K.
g2 _ sketch line:N to:K.
f1 color:(Color red).
f2 color:(Color red).
g1 color:(Color blue).
g2 color:(Color blue).

F1 _ sketch intersectionOf:n and:f1.
G1 _ sketch intersectionOf:n and:g1.
F2 _ sketch intersectionOf:n and:f2.
G2 _ sketch intersectionOf:n and:g2.
F _ sketch intersectionOf:n and:f.
F name:'F'.

fLine _ sketch line:F1 to:((sketch point:(3.5@2)) cross).

G _ imageOfPointInInvolutionBlock value:T value:{ n.fLine } value:{F1.G1.F2.G2.F}.
G name:'G'.

g _ sketch line:K to:G.
g color:(Color red).

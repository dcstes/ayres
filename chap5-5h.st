| sketch R S T M N A B q o O1 O2 p P X X1 A1 B1 a a1 b b1 x x1 xx AA BB aa bb XX n |
sketch _ DrGeoSketch new.

R _ sketch point:(-3@3).
R name:'R'.
R cross.

M _ sketch point:(-3.5@-3).
M cross.

q _ sketch line:R to:M.
q color:(Color red).

A _ sketch point:(-1@0).
A cross.
a _ sketch line:R to:A.

B _ sketch point:(2@0).
B cross.
b _ sketch line:R to:B.

AA _ sketch point:(-2@-0.5).
AA cross.
aa _ sketch line:R to:AA.

BB _ sketch point:(3@1).
BB cross.
bb _ sketch line:R to:BB.

O1 _ sketch point:(-3@-3.5).
O1 cross.

O2 _ sketch point:(3.5@3).
O2 cross.
o _ sketch line:O1 to:O2.

M _ sketch intersectionOf:q and:o.
M name:'M'.
A _ sketch intersectionOf:a and:o.
A name:'A'.
B _ sketch intersectionOf:b and:o.
B name:'B'.
AA _ sketch intersectionOf:aa and:o.
AA name:'AA'.
BB _ sketch intersectionOf:bb and:o.
BB name:'BB'.

P _ sketch point:(0@3).
P cross.
P name:'p'.
p _ sketch line:M to:P.

A1 _ sketch intersectionOf:aa and:p.
B1 _ sketch intersectionOf:bb and:p.
A1 name:'A1'.
B1 name:'B1'.

a1 _ sketch line:A1 to:A.
b1 _ sketch line:B1 to:B.
S _ sketch intersectionOf:a1 and:b1.
S name:'S'.

X _ sketch point:(0@0.5).
X cross.
x _ sketch line:R to:X.
X _ sketch intersectionOf:o and:x.
X name:'X'.

x1 _ sketch line:S to:X.
X1 _ sketch intersectionOf:x1 and:p.
X1 name:'X1'.

xx _ sketch line:R to:X1.
XX _ sketch intersectionOf:xx and:o.
XX name:'XX'.

n _ sketch line:R to:S.
n color:(Color red).

N _ sketch intersectionOf:n and:o.
N name:'N'.
| sketch a b A B C D E |
sketch _ DrGeoSketch new.
sketch text:'complete 2-line' at:(-2@4).
sketch text:'1 point   2lines/point' at:(-2@3).
sketch text:' 1point/line    2 lines' at:(-2@2).
A _ sketch point:(-1@-1).
A cross.
B _ sketch point:(1@-3).
B cross.
C _ sketch point:(-1@-3).
C cross.
D _ sketch point:(1@-1).
D cross.
a _ sketch line:A to:B.
a name:'a'.
b _ sketch line:C to:D.
b name:'b'.
E _ sketch intersectionOf:a and:b.

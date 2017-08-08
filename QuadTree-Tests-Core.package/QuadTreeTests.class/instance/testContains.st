tests
testContains
	| r1 r2 r3 r4 |
	r1 := Rect
		x: 0
		y: 0
		width: 100
		height: 100.
	r2 := Rect
		x: 0
		y: 0
		width: 100
		height: 100.
	r3 := Rect
		x: 100
		y: 100
		width: 100
		height: 100.
	r4 := Rect
		x: 0
		y: 0
		width: 100
		height: 100.
	self assert: (r1 contains: r2) equals: true;
	 assert: (r3 contains: r4) equals: false
accessing
split
	| r1 r2 r3 r4 rv |
	r1 := Rect
		x: x
		y: y
		width: width / 2
		height: height / 2.
	r2 := Rect
		x: x + (width / 2)
		y: y
		width: width / 2
		height: height / 2.
	r3 := Rect 
		x: x
		y: y + (height / 2)
		width: width / 2
		height: height / 2.
	r4 := Rect 
		x: x + (width / 2)
		y: y + (height / 2)
		width: width / 2
		height: height / 2.
	rv := Array new: 4.
	rv
		at: 1 put: r1;
		at: 2 put: r2;
		at: 3 put: r3;
		at: 4 put: r4.
	^ rv
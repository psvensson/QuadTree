tests - variables
testQuadTreeGetMany
	| results r r1 r2 |
	r1 := Rect x: 10 y: 11 width: 1 height: 1.
	r2 := Rect x: 25 y: 100 width: 1 height: 1.
	quadTree insert: r1 data: 'foo'.
	quadTree insert: r2 data: 'bar'.
	results := quadTree get: rectA data: nil.
	r := results at: 1.
	self assert: (r at: #data) equals: 'foo'
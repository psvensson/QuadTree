tests
testLeaf
	| leafA r1 |
	r1 := Rect 
		x: 0
		y: 10
		width: 100
		height: 50.
	leafA := Leaf rect: r1 data: 'leafA'.
	self assert: leafA data equals: 'leafA'
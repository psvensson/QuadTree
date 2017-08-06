tests - variables
testQuadTreeGet
	| results r |
	quadTree insert: rectA data: 'dataA'.
	results := quadTree get: rectA data: nil.
	r := results at: 1.
	self assert: (r at: #data) equals: 'dataA'
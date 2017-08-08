tests - variables
testQuadTreeRemove
	| results r |
	quadTree insert: rectA data: 'dataA'.
	results := quadTree remove: rectA data: nil.
	r := results at: 1.
	self assert: (r at: #data) equals: 'dataA';
	 assert: quadTree root leafs size equals: 0
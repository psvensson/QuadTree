accessing
empty: q
	q isNil ifTrue: [ ^ true ]
	ifFalse: [ ^ q leafs isNil | (q leafs size > 1) ]
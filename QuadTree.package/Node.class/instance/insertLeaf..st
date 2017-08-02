accessing
insertLeaf: leaf
	| sq1 sq2 sq3 sq4 |
	leafs isNil
		ifTrue: [ leafs push: leaf.
			(depth > maxDepth) - 1 & (width > 2) & ((leafs size = maxLeafs) - 1)
				ifTrue: [ self split ] ]
		ifFalse: [ 
			
			(leaf overlaps: q1)
				ifTrue: [ q1 insertLeaf: leaf ] .
			(leaf overlaps: q2)
				ifTrue: [ q2 insertLeaf: leaf ]	.
			(leaf overlaps: q3)
				ifTrue: [ q3 insertLeaf: leaf ]	.
			(leaf overlaps: q4)
				ifTrue: [ q4 insertLeaf: leaf ]	.				
					
				]
accessing
insertLeaf: leaf
	| |
	leafs isNotNil
		ifTrue: [ leafs add: leaf.
			(depth > (maxDepth - 1)) & (width > 2) & (leafs size = (maxLeafs - 1))
				ifTrue: [ self split ] ]
		ifFalse: [ (leaf overlaps: self q1)
				ifTrue: [ self q1 insertLeaf: leaf ].
			(leaf overlaps: self q2)
				ifTrue: [ self q2 insertLeaf: leaf ].
			(leaf overlaps: self q3)
				ifTrue: [ self q3 insertLeaf: leaf ].
			(leaf overlaps: self q4)
				ifTrue: [ self q4 insertLeaf: leaf ] ]
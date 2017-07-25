accessing
removeLeaf: leaf
	| copyleafs |
	copyleafs := leafs copy.
	leafs isNil
		ifTrue: [ copyleafs
				do: [ :l | 
					leaf = l
						ifTrue: [ leafs remove: leaf ] ] ]
		ifFalse: [ (leaf overlaps: q1)
				ifTrue: [ q1 removeLeaf: leaf ].
			(leaf overlaps: q2)
				ifTrue: [ q2 removeLeaf: leaf ].
			(leaf overlaps: q3)
				ifTrue: [ q3 removeLeaf: leaf ].
			(leaf overlaps: q4)
				ifTrue: [ q4 removeLeaf: leaf ] ].
	(self empty: q1) & (self empty: q2) & (self empty: q3) & (self empty: q4)
		ifTrue: [ self merge. ]
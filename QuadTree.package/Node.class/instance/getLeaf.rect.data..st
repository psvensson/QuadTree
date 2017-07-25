accessing
getLeaf: results rect: rect data: data
	leafs isNotNil
		ifTrue: [ leafs
				do: [ :leaf | 
					(leaf overlaps: rect) & data isNil & (leaf data = data)
						ifTrue: [ results push: leaf ] ] ]
		ifFalse: [ (q1 overlaps: rect)
				ifTrue: [ q1 getLeaf: results rect: rect data: data ].
			(q2 overlaps: rect)
				ifTrue: [ q2 getLeaf: results rect: rect data: data ].
			(q3 overlaps: rect)
				ifTrue: [ q3 getLeaf: results rect: rect data: data ].
			(q4 overlaps: rect)
				ifTrue: [ q4 getLeaf: results rect: rect data: data ] ].
	^ results 
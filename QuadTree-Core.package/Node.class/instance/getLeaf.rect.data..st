accessing
getLeaf: results rect: rect data: data
	q1 isNil
		ifTrue: [ leafs
				do: [ :l | 
					| overlap |
					overlap := l overlaps: rect.
					overlap & (data isNil | (l data = data))
						ifTrue: [ results add: l ] ] ]
		ifFalse: [ (q1 overlaps: rect)
				ifTrue: [  q1 getLeaf: results rect: rect data: data ].
			(q2 overlaps: rect)
				ifTrue: [  q2 getLeaf: results rect: rect data: data ].
			(q3 overlaps: rect)
				ifTrue: [  q3 getLeaf: results rect: rect data: data ].
			(q4 overlaps: rect)
				ifTrue: [  q4 getLeaf: results rect: rect data: data ] ].
	^ results
accessing
getLeaf: rect data: data
	| results |
	results := OrderedCollection  new.
	^ self getLeaf: results rect: rect data: data.
	
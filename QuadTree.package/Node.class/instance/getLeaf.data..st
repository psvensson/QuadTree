accessing
getLeaf: rect data: data
	| results |
	results := Array new.
	^ self getLeaf: results rect: rect data: data.
	
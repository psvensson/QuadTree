generating
size: aSize maxLeafs: aMaxLeafs maxDepth: amaxDepth x: aX y: aY
	| node |
	node := Node x: aX y: aY size: aSize depth: 0 maxLeafs: amaxDepth maxDepth: aMaxLeafs .
	^(self new) root: node.
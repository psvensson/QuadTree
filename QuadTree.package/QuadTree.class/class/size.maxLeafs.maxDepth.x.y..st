as yet unclassified
size: aSize maxLeafs: aMaxLeafs maxDepth: AmaxDepth x: aX y: aY
	| node |
	node := Node x: aX y: aY size: aSize depth: 0 maxDepth: AmaxDepth maxLeafs: aMaxLeafs .
	^(self new) root: node.
accessing
contains: rect
	^ ((rect x >= x) & (rect y >= y)) & ((rect x + rect width) <= (x + width)) & ((rect y + rect height) <= (y + height))
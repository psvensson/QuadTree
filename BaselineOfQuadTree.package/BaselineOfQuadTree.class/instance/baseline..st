baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec 
				package: 'QuadTree-Core';
				package: 'QuadTree-Core-Tests' with: [ spec requires: #('QuadTree-Core') ]	
		].
as yet unclassified
adjustWidthAndHeight
	(labelMorph width >= image width)
		ifTrue: [ self width: labelMorph width ]
		ifFalse: [ self width: image width ].
	self height: (labelMorph height + image height).
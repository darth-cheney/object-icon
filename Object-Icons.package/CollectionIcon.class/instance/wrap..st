instance creation
wrap: aCollection
	| baseName |
	wrappedObject := aCollection.
	label ifNil: [ 
		baseName := 'a ',(aCollection class name).
		labelMorph contents: (self formatLabel: baseName).
		^ self ].
	labelMorph content: (self formatLabel: label)
	
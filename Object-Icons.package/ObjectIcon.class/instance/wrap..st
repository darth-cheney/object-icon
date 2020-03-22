instance creation
wrap: anObject
	"Set the object that this ObjectIcon
	will wrap"
	wrappedObject := anObject.
	label ifNil: [ 
		labelMorph contents: (String streamContents: [ :s | wrappedObject printOn: s]) ].
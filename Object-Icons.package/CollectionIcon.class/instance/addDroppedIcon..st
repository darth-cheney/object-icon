adding
addDroppedIcon: anObjectIcon
	"Add the wrapped object to this object's
	collection. If the collection is nil,
	We create a new OrderedCollection"
	wrappedObject isArray ifFalse: [ 
		wrappedObject add: anObjectIcon wrappedObject.
		self wrap: wrappedObject ].
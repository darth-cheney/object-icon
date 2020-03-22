api
doubleClickAction
	customActions at: #doubleClick
		ifPresent: [ :action | ^ action value: wrappedObject ]
		ifAbsent: [ ^ self defaultAction ]
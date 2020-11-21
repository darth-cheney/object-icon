api
doubleClickAction
	customActions at: #doubleClick
		ifPresent: [ :action | ^ action cull: wrappedObject ]
		ifAbsent: [ ^ self defaultAction ]
accessing
action
	actionBlock ifNil: [ ^ self defaultAction ].
	^ actionBlock value: wrappedObject.
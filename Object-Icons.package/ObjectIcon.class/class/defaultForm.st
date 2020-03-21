accessing
defaultForm
	^ PNGReadWriter formFromStream: (self defaultEncoded base64Decoded readStream).
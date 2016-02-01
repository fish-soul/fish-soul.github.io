bg = new BackgroundLayer
	backgroundColor: "#ffffff"

layerBG = new Layer
	width: 80
	height: 80
	borderRadius: 40
	backgroundColor: "#000000"

layerA = new Layer
	width: 32
	height:  5
	backgroundColor: "#ffffff"
	superLayer: layerBG
	style: ("margin-top": "-12px")

layerB = new Layer
	width: 32
	height: 5
	backgroundColor: "#ffffff"
	superLayer: layerBG

layerC = new Layer
	width: 32
	height: 5
	backgroundColor: "#ffffff"
	superLayer: layerBG
	style: ("margin-top": "12px")

layerBG.center()
layerA.center()
layerB.center()
layerC.center()

layerA.originY = 0.5
layerC.originY = 0.5

layerBG.on Events.Click, ->
	layerA.animate
		properties:
			rotation: 45
			y: (layerB.y + 12)
			time: 0.1
	layerC.animate
		properties: 
			rotation: -45
			y: (layerB.y - 12)
			time: 0.1

	layerB.animate
		properties: 
			opacity: 0.0
			time: 0.1

	
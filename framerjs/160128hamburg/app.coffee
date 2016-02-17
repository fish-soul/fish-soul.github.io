bg = new BackgroundLayer
	backgroundColor: "#ffffff"

layerABCBG = new Layer
	width: 80
	height: 80
	borderRadius: 40
	backgroundColor: "#000000"
	style: ("margin-top": "-100px")

layerA = new Layer
	width: 32
	height:  5
	backgroundColor: "#ffffff"
	superLayer: layerABCBG
	style: ("margin-top": "-12px")

layerB = new Layer
	width: 32
	height: 5
	backgroundColor: "#ffffff"
	superLayer: layerABCBG

layerC = new Layer
	width: 32
	height: 5
	backgroundColor: "#ffffff"
	superLayer: layerABCBG
	style: ("margin-top": "12px")

layerABCre = new Layer
	width: 80
	height: 30
	backgroundColor: "Transparent"
	style: ("margin-top": "-105px", "margin-left": "100px")
	
layerABCre.html = "<span style='font-size:12px; color:#333333; font-weight:bold;'>BACK</span>"

	 

layerABCBG.center()
layerA.center()
layerB.center()
layerC.center()
layerABCre.center()

layerA.originY = 0.5
layerC.originY = 0.5

layerABCBG.on Events.Click, ->
	layerA.animate
		properties:
			rotation: 45
			y: (layerB.y + 12)
		time: 0.1
		curve: "spring"
	layerC.animate
		properties: 
			rotation: -45
			y: (layerB.y - 12)
		time: 0.1
		curve: "spring"

	layerB.animate
		properties: 
			opacity: 0.0
		time: 0.1
		
layerABCre.on Events.Click, ->
	layerA.animate
		properties:
			rotation: 0
			y: layerB.y
		time: 0.1
		curve: "spring"
	layerC.animate
		properties: 
			rotation: 0
			y: layerB.y
		time: 0.1
		curve: "spring"

	layerB.animate
		properties: 
			opacity: 1
		time: 0.1



layerDEFBG = new Layer
	width: 80
	height: 80
	borderRadius: 40
	backgroundColor: "Transparent"

layerD = new Layer
	width: 32
	height:  5
	backgroundColor: "#000000"
	superLayer: layerDEFBG
	style: ("margin-top": "-12px")

layerE = new Layer
	width: 32
	height: 5
	backgroundColor: "#000000"
	superLayer: layerDEFBG

layerF = new Layer
	width: 32
	height: 5
	backgroundColor: "#000000"
	superLayer: layerDEFBG
	style: ("margin-top": "12px")
	
layerDEFre = new Layer
	width: 80
	height: 30
	backgroundColor: "Transparent"
	style: ("margin-top": "-5px", "margin-left": "100px")
	
layerDEFre.html = "<span style='font-size:12px; color:#333333; font-weight:bold;'>BACK</span>"

layerDEFBG.center()	
layerD.center()
layerE.center()
layerF.center()
layerDEFre.center()

layerD.originX = 0
layerF.originX = 0
layerE.originX = 0

layerDEFBG.on Events.Click, ->
	layerD.animate
		properties:
			rotation: -45
			width: 28
			x: (layerE.x - 3)
			y: (layerE.y + 13.5)
		time: 0.2
		curve: "ease-in-out"
		
	layerE.animate
		properties:
			width: 35
		time: 0.2
		curve: "ease-in-out"
	
	layerF.animate
		properties:
			rotation: 45
			width: 28
			x: (layerE.x - 3)
			y: (layerE.y - 13.5)
		time: 0.2
		curve: "ease-in-out"

layerDEFre.on Events.Click, ->
	layerD.animate
		properties:
			rotation: 0
			width: 32
			x: layerE.x
			y: layerE.y
		time: 0.2
		curve: "ease-in-out"
		
	layerE.animate
		properties:
			width: 32
		time: 0.2
		curve: "ease-in-out"
	
	layerF.animate
		properties:
			rotation: 0
			width: 32
			x: layerE.x
			y: layerE.y
		time: 0.2
		curve: "ease-in-out"


	
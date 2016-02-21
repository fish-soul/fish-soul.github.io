

wrap = new Layer
	width: 335
	height: 165
	backgroundColor: "Transparent"

wrap.center()


#box설정
box1 = new Layer
	width: 80
	height: 80
	backgroundColor: "#1565C0"
	superLayer: wrap
	originX: 0.5
	originY: 0.5
	
box2 = new Layer
	width: 80
	height: 80
	backgroundColor: "#1976D2"
	superLayer: wrap
	x: 85
	originX: 0.5
	originY: 0.5
	
box3 = new Layer
	width: 80
	height: 80
	backgroundColor: "#2196F3"
	superLayer: wrap
	x: 170
	originX: 0.5
	originY: 0.5

box4 = new Layer
	width: 80
	height: 80
	backgroundColor: "#64B5F6"
	superLayer: wrap
	x: 255
	originX: 0.5
	originY: 0.5
	
box5 = new Layer
	width: 80
	height: 80
	backgroundColor: "#1E88E5"
	superLayer: wrap
	y: 85
	originX: 0.5
	originY: 0.5

box6 = new Layer
	width: 80
	height: 80
	backgroundColor: "#42A5F5"
	superLayer: wrap
	x: 85
	y: 85
	originX: 0.5
	originY: 0.5
	
box7 = new Layer
	width: 80
	height: 80
	backgroundColor: "#90CAF9"
	superLayer: wrap
	x: 170
	y: 85
	originX: 0.5
	originY: 0.5
	
box8 = new Layer
	width: 80
	height: 80
	backgroundColor: "#BBDEFB"
	superLayer: wrap
	x: 255
	y: 85
	originX: 0.5
	originY: 0.5
	
	

animation1 = new Animation
	layer: box1
	properties: 
		scale: 0
	time: 0.2
	curve: "ease-in-out"

animation2 = new Animation
	layer: box2
	properties: 
		scale: 0
	time: 0.2
	curve: "ease-in-out"
	delay: 0.05
	
animation3 = new Animation
	layer: box3
	properties: 
		scale: 0
	time: 0.2
	curve: "ease-in-out"
	delay: 0.15
	
animation4 = new Animation
	layer: box4
	properties: 
		scale: 0
	time: 0.2
	curve: "ease-in-out"
	delay: 0.25

animation5 = new Animation
	layer: box5
	properties: 
		scale: 0
	time: 0.2
	curve: "ease-in-out"
	delay: 0.1
	
animation6 = new Animation
	layer: box6
	properties: 
		scale: 0
	time: 0.2
	curve: "ease-in-out"
	delay: 0.2
	
animation7 = new Animation
	layer: box7
	properties: 
		scale: 0
	time: 0.2
	curve: "ease-in-out"
	delay: 0.3

animation8 = new Animation
	layer: box8
	properties: 
		scale: 0
	time: 0.2
	curve: "ease-in-out"
	delay: 0.35
		
anireverse1 = animation1.reverse()
anireverse2 = animation2.reverse()
anireverse3 = animation3.reverse()
anireverse4 = animation4.reverse()
anireverse5 = animation5.reverse()
anireverse6 = animation6.reverse()
anireverse7 = animation7.reverse()
anireverse8 = animation8.reverse()

animation8.on(Events.AnimationEnd, anireverse1.start)
anireverse1.on(Events.AnimationStart, anireverse2.start)
anireverse1.on(Events.AnimationStart, anireverse3.start)
anireverse1.on(Events.AnimationStart, anireverse4.start)
anireverse1.on(Events.AnimationStart, anireverse5.start)
anireverse1.on(Events.AnimationStart, anireverse6.start)
anireverse1.on(Events.AnimationStart, anireverse7.start)
anireverse1.on(Events.AnimationStart, anireverse8.start)

wrap.on Events.Click, ->
	animation1.start()
	animation2.start()
	animation3.start()
	animation4.start()
	animation5.start()
	animation6.start()
	animation7.start()
	animation8.start()
	



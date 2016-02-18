
backgroundColor = "#ffffff"
wrap = new Layer
	width: 305
	height: 615
	backgroundColor: "Transparent"

wrap.center()


#box설정
box1 = new Layer
	width: 150
	height: 150
	image: "images/image9.png"
	parent: wrap
	originX: 0.5
	originY: 0.5
	
box2 = new Layer
	width: 150
	height: 150
	image: "images/image2.png"
	parent: wrap
	y: 155
	originX: 0.5
	originY: 0.5
	
box3 = new Layer
	width: 150
	height: 150
	image: "images/image3.png"
	parent: wrap
	y: 310
	originX: 0.5
	originY: 0.5

box4 = new Layer
	width: 150
	height: 150
	image: "images/image4.png"
	parent: wrap
	y: 465
	originX: 0.5
	originY: 0.5
	
box5 = new Layer
	width: 150
	height: 150
	image: "images/image5.png"
	parent: wrap
	x: 155
	originX: 0.5
	originY: 0.5

box6 = new Layer
	width: 150
	height: 150
	image: "images/image6.png"
	parent: wrap
	x: 155
	y: 155
	originX: 0.5
	originY: 0.5
	
box7 = new Layer
	width: 150
	height: 150
	image: "images/image7.png"
	parent: wrap
	x: 155
	y: 310
	originX: 0.5
	originY: 0.5
	
box8 = new Layer
	width: 150
	height: 150
	image: "images/image8.png"
	parent: wrap
	x: 155
	y: 465
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
	



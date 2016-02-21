#전체 배경설정
bg = new BackgroundLayer
	backgroundColor: "#ffffff"

#Topbar 설정
Topbar = new Layer
	width: 750
	height: 120
	backgroundColor: "#2196F3"
	
Title = new Layer
	html: "<span style='font-family:Helvetica; font-weight:bold; font-size:28pt;'>Photo Album</span>"
	width: 300
	height: 28
	parent: Topbar
	x: 30
	backgroundColor: "Transparent"

Title.centerY()

#이미지 뷰 보기
View = new Layer
	width: 36
	height: 36
	parent: Topbar
	x: 680
	backgroundColor: "Transparent"
	
View.centerY()

ViewDot1 = new Layer
	width: 15
	height: 15
	backgroundColor: "#ffffff"
	parent: View

ViewDot2 = new Layer
	width: 15
	height: 15
	backgroundColor: "#ffffff"
	parent: View
	x: 21

ViewDot3 = new Layer
	width: 15
	height: 15
	backgroundColor: "#ffffff"
	parent: View
	y: 21

ViewDot4 = new Layer
	width: 15
	height: 15
	backgroundColor: "#ffffff"
	parent: View
	x: 21
	y: 21


#리스트 뷰 보기
List = new Layer
	width: 36
	height: 36
	backgroundColor: "#ffffff"
	parent: Topbar
	x: 610
	opacity: 0.5
	
List.centerY()

wrap = new Layer
	width: 720
	height: 1990
	backgroundColor: "Transparent"
	y: 130
	x: 10


#이미지 뷰 박스 설정
box1 = new Layer
	width: 360
	height: 360
	image: "images/image9.png"
	parent: wrap
	originX: 0
	originY: 0
	
box2 = new Layer
	width: 360
	height: 360
	image: "images/image2.png"
	parent: wrap
	y: 370
	originX: 0
	originY: 0
	
box3 = new Layer
	width: 360
	height: 360
	image: "images/image3.png"
	parent: wrap
	y: 740
	originX: 0
	originY: 0

box4 = new Layer
	width: 360
	height: 360
	image: "images/image4.png"
	parent: wrap
	y: 1110
	originX: 0
	originY: 0
	
box5 = new Layer
	width: 360
	height: 360
	image: "images/image5.png"
	parent: wrap
	x: 370
	originX: 0
	originY: 0

box6 = new Layer
	width: 360
	height: 360
	image: "images/image6.png"
	parent: wrap
	x: 370
	y: 370
	originX: 0
	originY: 0
	
box7 = new Layer
	width: 360
	height: 360
	image: "images/image7.png"
	parent: wrap
	x: 370
	y: 740
	originX: 0
	originY: 0
	
box8 = new Layer
	width: 360
	height: 360
	image: "images/image8.png"
	parent: wrap
	x: 370
	y: 1110
	originX: 0
	originY: 0
	
box9 = new Layer
	width: 0
	height: 0
	image: "images/image9.png"
	parent: wrap
	originX: 0
	originY: 0

box10 = new Layer
	width: 0
	height: 0
	image: "images/image2.png"
	parent: wrap
	y: 740
	originX: 0
	originY: 0

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

animation9 = new Animation
	layer: box9
	properties: 
		width: 730
		height: 730
	time: 0.2
	curve: "ease-in-out"
	delay: 0.3
	
animation10 = new Animation
	layer: box10
	properties: 
		width: 730
		height: 730
	time: 0.2
	curve: "ease-in-out"
	delay: 0.4
		
anireverse1 = animation1.reverse()
anireverse2 = animation2.reverse()
anireverse3 = animation3.reverse()
anireverse4 = animation4.reverse()
anireverse5 = animation5.reverse()
anireverse6 = animation6.reverse()
anireverse7 = animation7.reverse()
anireverse8 = animation8.reverse()
anireverse9 = animation9.reverse()
anireverse10 = animation10.reverse()

anireverse10.on(Events.AnimationEnd, anireverse1.start)
anireverse1.on(Events.AnimationStart, anireverse2.start)
anireverse1.on(Events.AnimationStart, anireverse3.start)
anireverse1.on(Events.AnimationStart, anireverse4.start)
anireverse1.on(Events.AnimationStart, anireverse5.start)
anireverse1.on(Events.AnimationStart, anireverse6.start)
anireverse1.on(Events.AnimationStart, anireverse7.start)
anireverse1.on(Events.AnimationStart, anireverse8.start)

	
List.on Events.Click, ->
	View.animate
		properties: 
			opacity: 0.5
		time: 0
	List.animate
		properties: 
			opacity: 1
		time: 0		
	animation1.start()
	animation2.start()
	animation3.start()
	animation4.start()
	animation5.start()
	animation6.start()
	animation7.start()
	animation8.start()
	animation9.start()
	animation10.start()
	
View.on Events.Click, ->
	View.animate
		properties: 
			opacity: 1
		time: 0
	List.animate
		properties: 
			opacity: 0.5
		time: 0
	anireverse9.start()
	anireverse10.start()


import {GameObject} from "./gameObject.mjs"
import {ctx} from "./main.mjs" 
import TextBox from "./Textbox.mjs"

DEBUG = false; //for hitboxes


count = 0;
counting = 0;
img = 0;
inter = 0;
window.onload = function(){
	interv = setInterval(refresh, 1000/60);
	loadImages();
	
}

refresh = function(){
	count++;
	if(count%speed == 0 && mosawake == true){
		storychar++;
	}
	if(count>100 && !mosawake){
		transparency+=0.01;
		document.getElementById("mos").style.opacity=transparency;
		if(document.getElementById("mos").style.opacity > 1){
			mosawake = true;
		}
	}
	if(mosawake){
		document.getElementById("textbox").innerHTML = story[storypart].substring(0,storychar)

	}
	switch(storypart){
		 case 0: document.getElementById("mos").src = images[0]; break;
		 case 1: document.getElementById("mos").src = images[0]; break;
		 case 2: document.getElementById("mos").src = images[2]; break;
		 case 3: document.getElementById("mos").src = images[1]; break;
		 case 4: document.getElementById("mos").src = images[2]; break; 
		 case 5: document.getElementById("mos").src = images[0]; break; 
		 case 6: document.getElementById("mos").src = images[1]; break; 
		 case 7: document.getElementById("mos").src = images[0]; break; 
		 case 8: document.getElementById("mos").src = images[3]; break; 
		 case 9: document.getElementById("mos").src = images[4]; break; 
		 case 10: document.getElementById("mos").src = images[3]; break;
		 case 11: document.getElementById("mos").src = images[4]; break; 
		}
	if(storychar >= story[storypart].length && storypart == story.length-1){ //if the vn part is done, we go.
		time_for_game();
        //gameOver();
        
	}
	if(mosawake && storychar >= story[storypart].length){ //auto text advance
		if((story.length > storypart) && (counting >= 120)){
			storychar = 0;
			storypart++;
			counting = 0;
		}
		counting++;
	}
}
ongo = function(b){
	/*if(mosawake && storychar >= story[storypart].length){
		if(story.length > storypart){
			storychar = 0;
			storypart++;
		}
	}*/
	if(b.code == "Digit9"){ //skip for debugging
		time_for_game();
	}
}
time_for_game = function(){//kill everything and get the canvas started.
	document.getElementById("mos").src = " ";
	document.getElementById("mos").style.opacity = 0;
	document.getElementById("textbox").innerHTML = " ";
	document.getElementById("canvas").width = 800;
	document.getElementById("canvas").height = 600;
	window.onclick = function(){}
	clearInterval(interv);
	document.removeEventListener('keypress', ongo);
	gameCreate();
}
window.onclick = ongo;
document.addEventListener('keypress', ongo);



loadImages = function(){ //this lets the images load while the vn is happenin.
	sprites["soul"] = newImage("Red_SOUL_sprite.png");
	sprites["bullet"] = newImage("bullet.png")
	sprites["hp"] = newImage("hp.png");
	sprites["crackedhp"] = newImage("brokenhp.png");
	sprites["arrow"] = newImage("arrow.png");
	sprites["green"] = newImage("Green_SOUL_sprite.png");
	sprites["most3rd"] = LoadImageSequence("./most/mosh_1.png_",28);
	sprites["animTest"] = LoadImageSequence("test/bruh");
	sprites["twopac"] = newImage("2pac.png");
	sprites["mos"] = newImage("most.png");
}
newImage = function(str){
	var n = new Image();
	n.src = str;
	return n;
}
LoadImageSequence = function(str,numOfFrames){
	gif = new Array(numOfFrames);
	for(var i = 0; i < numOfFrames; i++){
		gif[i] = newImage(str+i+".png");
	}
	return gif;
}
sprites = new Map();
loopTimer = 0;
canvas = 0;
game = 0;
gameObjects = [];
gameKeys = new Array(200);//every key and then some
function ord(str){return str.toLowerCase().charCodeAt(0);}
function chr(num){return String.fromCharCode(num);}
keydown = function(_key){
	gameKeys[ord(_key.key)] = true;
}
keyup = function(_key){
	gameKeys[ord(_key.key)] = false;
}
gameCreate = function(){
	document.body.style.backgroundColor = 0x000000
	canvas = document.getElementById("canvas");
	game = canvas.getContext("2d");
	loopTimer = setInterval(gameRefresh, 1000/60);
	canvas.style = "position:absolute; margin-top: 150px;left: 50%; width: 800px; margin-left: -400px";
	document.addEventListener('keydown', keydown);
	document.addEventListener('keyup', keyup);
	new Tupac(0,0);
	new FakePlayer(400,150);
	new HealthBar(0,0);
}
debugDraw = function(_this){
	if(DEBUG){
			game.strokeStyle = "red";
			var b = _this;
			game.strokeRect(b.x+b.hitboxOffsetX,b.y+b.hitboxOffsetY,b.hitboxWidth,b.hitboxHeight);
		}
}
gameRefresh = function(){
	//event.keyCode
	game.save(); //these are actually for the screen rotations and stuff
	game.fillStyle = "black"; //wipe screen.
	game.fillRect(0,0,800,600);
	for(var i = 0; i < gameObjects.length; i++){//step
		gameObjects[i].step();
	}
	for(var i = 0; i < gameObjects.length; i++){//draw
		gameObjects[i].draw();
	}
	game.restore();
}
addToStepList = function(gameObject){
	gameObjects.push(gameObject);
}
removeFromStepList = function(_gameObject){
	for(var i = 0; i < gameObjects.length; i++){
		if(gameObjects[i] === _gameObject){
			gameObjects.splice(i,1);
			return;
		}
	}
}

class Collision extends GameObject{


}
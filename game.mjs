import {GameObject,gameRefresh,gameObjectSetup} from "./gameObject.mjs"
import {ctx} from "./main.mjs" 
import {TextBox} from "./Textbox.mjs"
import {sprites,LoadImageSequence,newImage,loadImages} from "./sprites.mjs";

const DEBUG = false; //for hitboxes

var loopTimer = 0;


var gameKeys = new Array(200);//every key and then some
function ord(str){return str.toLowerCase().charCodeAt(0);}
function chr(num){return String.fromCharCode(num);}

function setkeydown(_key){
	gameKeys[ord(_key.key)] = true;
}
function setkeyup(_key){
	gameKeys[ord(_key.key)] = false;
}

function gameCreate(){
	document.body.style.backgroundColor = 0x000000
	loopTimer = setInterval(gameRefresh, 1000/60);
    gameObjectSetup()
	document.addEventListener('keydown', setkeydown);
	document.addEventListener('keyup', setkeyup);
    new GameObject(0,0)
}

window.onload = gameCreate;





class Collision extends GameObject{


}

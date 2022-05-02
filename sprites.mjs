function loadImages(){ 
	sprites["jump1"] = newImage("mordecai/jump1.png")
	sprites["jump2"] = newImage("mordecai/jump2.png")
	sprites["jump3"] = newImage("mordecai/jump3.png")

	sprites["punch"] = newImage("mordecai/punch.png")

	sprites["run"] = newImage("mordecai/run.png")

	sprites["stand"] = newImage("mordecai/stand.png")
    
    sprites["turn1"] = newImage("mordecai/turn.png")
    sprites["turn2"] = newImage("mordecai/turn2.png")
    sprites["turn3"] = newImage("mordecai/turn3.png")

    sprites["walk1"] = newImage("mordecai/walk.png")
    sprites["walk2"] = newImage("mordecai/walk1.png")

    sprites["WOA"] = newImage("mordecai/WOAAAAAOOOOO.png")
}
function newImage(str){
	var n = new Image();
	n.src = "./img/" + str;
	return n;
}
function LoadImageSequence (str,numOfFrames){
	gif = new Array(numOfFrames);
	for(var i = 1; i < numOfFrames; i++){
		gif[i] = newImage(str+i+".png");
	}
	return gif;
}
var sprites = new Map();


export {sprites,LoadImageSequence,newImage,loadImages}
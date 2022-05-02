function loadImages(){ 
	//sprites["soul"] = newImage("Red_SOUL_sprite.png");

}
function newImage(str){
	var n = new Image();
	n.src = str;
	return n;
}
function LoadImageSequence (str,numOfFrames){
	gif = new Array(numOfFrames);
	for(var i = 0; i < numOfFrames; i++){
		gif[i] = newImage(str+i+".png");
	}
	return gif;
}
var sprites = new Map();


export {sprites,LoadImageSequence,newImage,loadImages}
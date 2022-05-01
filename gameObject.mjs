
let addToStepList = function(gameObject){
	gameObjects.push(gameObject);
}
let removeFromStepList = function(_gameObject){
	for(var i = 0; i < gameObjects.length; i++){
		if(gameObjects[i] === _gameObject){
			gameObjects.splice(i,1);
			return;
		}
	}
}

class GameObject{
	hitboxOffsetX = 0;
	hitboxOffsetY = 0;
	hitboxWidth = 0;
	hitboxHeight = 0;
	x = 0;
	y = 0;
	width = 0;
	height = 0;
	sprite = 0;
	constructor(_x,_y){
		this.hitboxHeight = this.height;
		this.hitboxWidth = this.width;
		this.hitboxOffsetX = 0;
		this.hitboxOffsetY = 0;
		this.x = _x;
		this.y = _y;
		this.width = 16;
		this.height = 16;
		this.hitboxWidth = this.width;
		this.hitboxHeight = this.height
		this.sprite = sprites["soul"];//this needs to be replaced or you will always be soul;
		addToStepList(this);
	}

	drawSelf(){
		game.drawImage(this.sprite,this.x,this.y,this.width,this.height);
	}
	//thanks https://stackoverflow.com/questions/3793397/html5-canvas-drawimage-with-at-an-angle
	rotateAndPaintImage = function( context, image, angleInRad , positionX, positionY, axisX, axisY ) {
		context.translate( positionX, positionY );
		context.rotate( angleInRad );
		context.drawImage( image, -axisX, -axisY );
		context.rotate( -angleInRad );
		context.translate( -positionX, -positionY );
	}
	draw = function(){return;};
	step = function(){return;};
	checkCollision = function(a,b){
		if(a.x+a.hitboxOffsetX>(b.x+b.hitboxOffsetX)-b.hitboxWidth&& //collision but fucked up
			a.x+a.hitboxOffsetX < (b.x+b.hitboxOffsetX)+b.hitboxWidth&&
			a.y+a.hitboxOffsetY>(b.y+b.hitboxOffsetY)-b.hitboxHeight&&
			a.y+a.hitboxOffsetY < (b.y+b.hitboxOffsetY)+b.hitboxHeight){
				return true;
		}
		return false;
	}
	destroy = function(){
		removeFromStepList(this);
	}
}

export {GameObject}
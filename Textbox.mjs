export class TextBox extends GameObject{
	targetw = 1000;//must be divisible by 20
	targeth = 200; //also must be divisible by 20
	theText = 0;
	textChar = 0;
	textPage = 0;
	count = 0;
	textArray = ["Really, I'd like to stay and chat.",
	"But my text library doesnt do line breaks,",
	"So I'm gonna cut this short."]
	constructor(_x,_y){
		super(_x,_y);
		this.width = 0;
		this.height =0;
		
	}
	endFunc = function(){
		HealthBar.crack = true;
	}
	step = function(){
		if(this.width != this.targetw || this.height != this.targeth){
			
		}
		else{
			this.textChar += 0.5;
		}
		this.theText = this.textArray[this.textPage].substring(0,this.textChar);
		if(gameKeys[ord("z")]){
			if(this.textChar > this.textArray[this.textPage].length){
				if(this.textPage == this.textArray.length-1){
					removeFromStepList(this);
					this.endFunc();
				}
				else{
					this.textChar=0;
					this.textPage++;
				}
			}
		}
	}
	draw = function(){
		game.fillStyle = "black";
		game.fillRect(this.x-(this.width/4),this.y-(this.height/4),this.width/2,this.height/2); 
		game.strokeStyle = "white";
		game.lineWidth = 4;
		game.strokeRect(this.x-(this.width/4),this.y-(this.height/4),this.width/2,this.height/2);
		if(this.width != this.targetw || this.height != this.targeth){
			this.width += Math.sign(this.targetw-this.width)*20;
			this.height += Math.sign(this.targeth-this.height)*20;
		}
		else{
			game.font = "17px elfont";
			game.fillStyle = "white"
			game.fillText("*  "+this.theText,this.x-this.width/4+10,this.y-this.height/4+30);
		}
		
	}
}

//export {TextBox
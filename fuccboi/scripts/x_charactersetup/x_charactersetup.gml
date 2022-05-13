global.textguy = ds_map_create();

global.textguy[?""] = s_null;
global.textguy[?"mordecai"] = s_mordecai;
global.textguy[?"rigby"] = s_rigby;
global.textguy[?"guys"] = s_guys;


enum MORDECAI {
	ONE,
	TWO,
	THREE,
	FOUR,
	FIVE,
	SIX,
	SEVEN,
	EIGHT,
	NINE,
	NOTHING,
}
from s_mordecai

enum RIGBY {
	ONE,
	TWO,
	THREE,
	FOUR,
	FIVE,
	SIX,
	SEVEN,
	EIGHT,
	NINE,
	NOTHING,
}
from s_rigby
function string_split(str,splitter) {
	var theArray = [];
	for(var i = 0; i < string_length(str); i++){
		if(string_char_at(str,i) == splitter){
			array_push(theArray,string_copy(str,1,i-1));
			str = string_delete(str,1,i);
			i = 0;
		}
	}
	array_push(theArray,str);
	return theArray;
}
//end is } :(
function string_count_ext(str,substr,start,theEnd){
		
}
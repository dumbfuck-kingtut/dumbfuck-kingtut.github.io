function c_screenshake(_amplitude,_length){
	if(_amplitude == infinity){
		_amplitude = 1000
	}
	with(instance_create(0,0,o_screenshake)){
		length = _length;
		amplitude = _amplitude;
	}
}
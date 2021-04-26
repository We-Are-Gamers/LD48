function Block (_type, _gem) constructor {
	block_type = _type;
	gem = _gem;
	
	static set_type = function(_type) {
		block_type = _type;
	}
	
	static set_gem = function(_gem) {
		gem = _gem;
	}
}
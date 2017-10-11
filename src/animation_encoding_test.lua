testSpritesheet = {
	file = "filename.png";
	animations = {

		["animation_00"] = {
			num_frames = 4;
			frames = {
			-- frame_duration, xpos, xsize, ypos, ysize
				{ 4, 0, 0, 32, 32 },			
				{ 4, 32, 0, 32, 32 },
				{ 4, 64, 0, 32, 32 },
				{ 4, 96, 0, 32, 32 }
			}
		},

		["animation_01"] = {
			num_frames = 3;
			frames = {
			-- frame_duration, xpos, xsize, ypos, ysize
				{ 4, 0, 0, 32, 32 },			
				{ 4, 32, 0, 32, 32 },
				{ 4, 64, 0, 32, 32 },		
			}
		},
	}	
}
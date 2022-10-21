function animation_end() {
	var next_image = image_index + image_speed * sprite_get_speed(sprite_index) / 60;
	return (next_image >= image_number);
}
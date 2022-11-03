struct.draw();
struct_hor.draw();

draw_text(100, 200, "scrollbar's value is: " + string(struct.get_value()));
draw_text(100, 232, "horizontal scrollbar's value is: " + string(struct_hor.get_value()));
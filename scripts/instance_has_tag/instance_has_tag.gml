function instance_has_tag(_inst, _tag) {
	return (asset_has_any_tag(_inst.object_index, _tag, asset_object));
}
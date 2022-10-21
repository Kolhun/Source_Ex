#macro FILE_TRANSLATION "translates.txt"

global.current_lang = "en";

function translate_load(_word, _lang = global.current_lang, _file = FILE_TRANSLATION) {
	var file, json, struct;
	
	file = file_text_open_read(_file);
	
	json = file_text_read_string(file);
	struct = json_parse(json);
	
	file_text_close(file);
	
	return struct[$ _lang][$ _word];
}
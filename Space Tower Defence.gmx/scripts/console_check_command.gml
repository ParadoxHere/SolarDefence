///console_check_command(txt)
var command_check = argument0;

if(string_char_at(command_check, 1) == "[") {
    argument_number = string_count(",", command_check);
    argument_filled = 0;
    
    for(var i = 0; i < argument_number; i++) {
        command_argument[i] = "";
    }
    
    equal_pos = 0;
    
    for(var i = 1; i < string_length(command_check) + 1; i++) {
        if(string_char_at(command_check, i + 2) == "=") {
            equal_pos = i + 2;
            command_type = string_copy(command_check, 2, i);
        }
    }
    
    last_comma = equal_pos;

    for(var j = last_comma; j < string_length(command_check) + 1; j++) {
        if(string_char_at(command_check, j) == "," || string_char_at(command_check, j) == "]") {
            if(argument_filled <= argument_number) {
                command_argument[argument_filled] = string_copy(command_check, last_comma + 1, (j - last_comma) - 1);
                argument_filled++;
                
            }
            last_comma = j;
        }
    }

    console_commands();
}
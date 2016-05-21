///console_commands()
if(command_type == "money_add") {
    global.money += real(command_argument[0]);
}

if(command_type == "money_take") {
    global.money -= real(command_argument[0]);
}

if(command_type == "money_set") {
    global.money = real(command_argument[0]);
}


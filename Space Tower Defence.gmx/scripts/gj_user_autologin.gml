if (file_exists("gjapi-credentials.txt"))
{
    var file=file_text_open_read("gjapi-credentials.txt")
    gj_user=file_text_read_string(file) 
    file_text_readln(file)
    gj_token=file_text_read_string(file)
    file_text_close(file)
    return true;
}
else
return false;

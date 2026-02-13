codeunit 50002 "Name-with Dash and space "
{
    var
        "Label with space in name ": Label 'global Label with space in name and caption ', Comment = 'will you handle ending space in comment? ';

    local procedure CreateNewExtension()
    var
        "Label-with dash and space ": Label 'Local Label in with-dash and space ';
    begin
    end;
}

query 50000 "TRE Check Query"
{
    Caption = 'Check Query';
    AboutText = 'This is a query used for testing the translation of labels in different parts of AL objects.';
    AboutTitle = 'Check Query About Title';

    QueryType = Normal;

    elements
    {
        dataitem(Level0; "Integer")
        {
            column(Number; Number)
            {
                Caption = 'Integer Number';
                ToolTip = 'This is the number field in the integer data item.';
            }
            dataitem(Level1; "Sales Line")
            {
                DataItemLink = Type = Level0.Number;
                column(ItemNo)
                {
                    Method = Count;
                    Caption = 'Item Number';
                    ToolTip = 'This is the item number field in the sales line data item.';
                    // and so on for other levels indefinitely
                }
                filter(ItemNoFilter; "Area")
                {
                    Caption = 'Item No. Filter';
                }
            }
        }
    }
    var
        ";LabelInVarSection with semicolon and spaces in the end   ": Label 'This is a label ;in the variables section of the query.';
        " - LabelInVarSection with space and dash and spaces in the end - ": Label '=This is a - label - in the variables section of the query. with equals =';

    trigger OnBeforeOpen()
    var
        LabelInQueryBeforeOpen: Label 'This is a label in the query OnBeforeOpen trigger.';
    begin
    end;
}

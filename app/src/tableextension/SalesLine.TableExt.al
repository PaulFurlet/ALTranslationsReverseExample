tableextension 50001 "TRE Sales Line" extends "Sales Line"
{
    Caption = 'New Caption for Sales Line', MaxLength = 30;
    fields
    {
        field(50005; "TRE New Options"; Option)
        {
            Caption = 'New Options';
            ToolTip = 'This is the new options field.';
            DataClassification = CustomerContent;
            OptionMembers = One,Two,Three;
            OptionCaption = 'One,Two,Three';
            trigger OnLookup()
            var
                LabelInFieldLookup: Label 'This is a label in the field OnLookup trigger.';
            begin
            end;
        }
    }
}

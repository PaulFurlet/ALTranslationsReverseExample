enum 50000 "TRE Check Enum"
{
    Caption = 'Usually nobody uses caption on Enums, but we should be able to handle it as well.';
    Extensible = true;

    value(0; value0)
    {
        Caption
        =
        'Value %1'
        ,
        Comment
        =
        '%1 could be some value, Usually nobody uses placeholders in captions, but still possible'
        ;
    }
    value(1; "Value 2")
    {
        Caption = 'Value2';
    }
    value(2; "Value 3")
    {
        Caption = ' ', Locked = true;
    }
    value(3; "Value 4")
    {
        Caption = 'Value', Locked = false;
    }
    value(4; "Enum TRE Check Enum - EnumValue Value")
    {
        Caption = 'Unusual Value', Locked = false;
    }
    value(5; "EnumValue EnumValue Value - Property Caption")
    {
        Caption = 'One more Unusual Value', Locked = false;
    }
}

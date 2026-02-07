enumextension 50000 "TRE Check Enum Extension" extends "TRE Check Enum"
{
    value(50000; "EnumExtension Value 1")
    {
        Caption = 'Enum Extension Value 1'
        ;
    }
    value(50001; "EnumExtension Value 2")
    {
        Caption
        = 'Enum Extension Value 2';
    }
    value(50002; "EnumExtension Value 3")
    {
        Caption =
        'Enum Extension Value 3';
    }
    value(50003; "EnumExtension Value 4")
    {
        Caption
        = 'Enum Extension Value 4'
        , Locked = false
        , Comment = 'Some comment'
        ;
    }
    value(50004; "EnumExtension Value 5")
    {
        Caption
        = 'Enum Extension Value 5'
        , Comment = 'Some comment'
        , Locked = true
        ;
    }
    value(50005; "EnumExtension Value 6 with placeholder %1")
    {
        Caption
        = 'Enum Extension Value 6 with placeholder %1'
        , Comment = 'Some comment about %1 placeholder'
        , Locked = false
        ;
    }
}

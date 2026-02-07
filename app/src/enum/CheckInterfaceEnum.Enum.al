enum 50001 "TRE Check Interface Enum" implements "TRE Check Interface"
{
    Extensible = true;
    DefaultImplementation = "TRE Check Interface" = "TRE Check Interface Codeunit 1";
    UnknownValueImplementation = "TRE Check Interface" = "TRE Check Interface Codeunit 1";

    value(0; Val1)
    {
        Implementation = "TRE Check Interface" = "TRE Check Interface Codeunit 1";
        Caption
        = 'Value 1';
    }
    value(1; "Value 2")
    {
        Implementation = "TRE Check Interface" = "TRE Check Interface Codeunit 1";
        Caption =
        'Value %1';
    }
}

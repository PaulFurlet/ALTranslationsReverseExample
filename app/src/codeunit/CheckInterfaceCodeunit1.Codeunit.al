codeunit 50001 "TRE Check Interface Codeunit 1" implements "TRE Check Interface"
{
    var
        GlobalLabel: Label 'Global %1 label', Comment = 'Some comment about %1 global label';

    procedure CheckInterfaceMethod1()
    var
        LocalLabel: Label 'Local label';
    begin
    end;

    procedure CheckInterfaceMethod2()
    var
        LocalLabel: Label 'Local label %1', Comment = 'Some comment about %1 placeholder';
    begin
    end;
}

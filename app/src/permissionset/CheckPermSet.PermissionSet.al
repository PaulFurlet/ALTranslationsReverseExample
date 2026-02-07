permissionset 50000 "TRE Check PermSet"
{
    Assignable = true;
    Caption = 'Check PermSet', MaxLength = 30;
    Permissions =
        table "TRE Check Table" = X,
        tabledata "TRE Check Table" = RMID,
        page "TRE Check Page" = X,
        page "TRE Check List Page" = X,
        report "TRE Check Report" = X,
        xmlport "TRE Check XMLPort" = X,
        query "TRE Check Query" = X,
        codeunit "TRE Check Interface Codeunit 1" = X,
        codeunit "TRE Check Codeunit" = X;
}

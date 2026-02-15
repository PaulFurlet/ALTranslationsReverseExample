page 50002 "TRE Employee App. Card"
{
    Caption = 'Employee Appointment Card';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = RoleCenter;
    PromotedActionCategories = 'New,Process,Reports,Actions,History,Print';
    SourceTable = "Sales Line";
    ApplicationArea = All;
    actions
    {
        area(Sections)
        {
            group(Documents)
            {
                Caption = 'Documents';
                action(Paysheet)
                {
                    ApplicationArea = all;
                    Caption = 'Paysheet by Payment Items';
                    ToolTip = 'Specifies the Paysheet by Payment Items.';
                    RunObject = Report "TRE Check Report";
                    Enabled = false;
                    Visible = false;
                }
            }
        }
    }
    var
        ChangeCalQst: Label 'The change of the value will influence the  calculation of vacation days/hours accrued based on the employee''s actual worked time. This may result in discrepancies between previously made accruals and new ones using the updated procedure. Are you sure you want to proceed with this change?';
}
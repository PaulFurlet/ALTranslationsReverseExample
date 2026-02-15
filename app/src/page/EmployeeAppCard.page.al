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
}
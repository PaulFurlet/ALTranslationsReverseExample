report 50000 "TRE Check Report"
{
    ApplicationArea = All;
    Caption = 'Check Report';
    DefaultRenderingLayout = RenderingLayout;
    UsageCategory = History;
    dataset
    {
        dataitem(SalesLine; "Sales Line")
        {
            column(Amount; Amount)
            {
            }
            column(AmountIncludingVAT; "Amount Including VAT")
            {
            }
            column(ApplfromItemEntry; "Appl.-from Item Entry")
            {
                Caption = 'Applied From Item Entry';
                ToolTip = 'This is the Applied From Item Entry column.';
            }
            trigger OnAfterGetRecord()
            var
                NoRecWithDatesLbl: Label 'No G/L Entries found with a Posting Date within the selected date range on the report request page.';
            begin
            end;

            trigger OnPostDataItem()
            var
                ReversedErr: Label 'No G/L entries found with the Reversed field set to No.';
            begin
            end;

            trigger OnPreDataItem()
            var
                NoGLEntryErr: Label 'No G/L Entries found where the G/L Account No. field matches the value of field Interim Account from line %1 of the cost allocation setup %2.', Comment = '%1 - Line No, %2 - Code No.';
            begin
            end;
        }
    }
    requestpage
    {
        AboutText = 'This is About XMLPort in the Request Page.';
        AboutTitle = 'XMLPort Request Page Title';
        Caption = 'XMLPort Request Page';
        InstructionalText = 'This is Instructional Text on the XMLPort Request Page.';

        layout
        {
            area(Content)
            {
                //similar to page layout, can have groups, grids, fields, etc.
                group(GroupName)
                {
                    Caption = 'Group Caption';
                    AboutText = 'This is About text for the group.';
                    AboutTitle = 'Group Title';
                    InstructionalText = 'This is Instructional Text for the group.';
                    field(FieldName; SalesLine."No.")
                    {
                        Caption = 'Root Node Name';
                        AboutText = 'This is About text for the Root Node Name field.';
                        AboutTitle = 'Root Node Name Field Title';
                        InstructionalText = 'This is Instructional Text for the Root Node Name field.';
                        ToolTip = 'This is a tooltip for the Root Node Name field.';
                        trigger OnValidate()
                        var
                            LabelInField: Label 'This is a label in the field.';
                        begin
                        end;
                        //and so on
                    }
                }
                field("TRECheckTable.""Field """"7"""""""; SalesLine."No.")
                {
                    Caption = 'How do you like the name of the control?';
                    AboutText = 'This is About text for Field 7.';
                    AboutTitle = 'Field 7 Title';
                    InstructionalText = 'This is Instructional Text for Field 7.';
                    ToolTip = 'This is a tooltip for Field 7.';
                    trigger OnAfterLookup(Selected: RecordRef)
                    var
                        LabelInField: Label 'This is a label in Field 7.';
                    begin
                    end;
                }
            }
        }
        actions
        {
            area(Processing)
            {
                group(ActionsGroupName)
                {
                    Caption = 'Actions Group';
                    AboutText = 'This is About text for the actions group.';
                    AboutTitle = 'Actions Group Title';
                    ToolTip = 'This is a tooltip for the actions group.';
                    action(Action1)
                    {
                        Caption = 'Run XMLPort';
                        AboutText = 'This is About text for the Run XMLPort action.';
                        AboutTitle = 'Run XMLPort Action Title';
                        ToolTip = 'This is a tooltip for the Run XMLPort action.';
                        trigger OnAction()
                        var
                            LabelInAction: Label 'This is a label in the action.';
                        begin
                        end;
                    }
                }
                action(Action2)
                {
                    Caption = 'Another Action';
                    AboutText = 'This is About text for another action.';
                    AboutTitle = 'Another Action Title';
                    ToolTip = 'This is a tooltip for another action.';
                    trigger OnAction()
                    var
                        LabelInAction: Label 'This is a label in another action.';
                    begin
                    end;
                }
            }
        }
        var
            LabelInRequestPageVarSection: Label 'This is a label in the variables section of the Request Page.';

        protected var
            LabelInProtectedVarSection: Label 'This is a label in the protected variables section of Request Page.';
    }
    rendering
    {
        layout(RenderingLayout)
        {
            LayoutFile = 'src/report/layouts/CheckReportLayout.rdlc';
            Type = RDLC;
            Caption = 'Check Report Layout';
            Summary = 'This is the summary of the rendering layout.';
        }
    }
}

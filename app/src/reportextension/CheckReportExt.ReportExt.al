reportextension 50000 "TRE Check Report Ext" extends "Vendor - Trial Balance"
{
    dataset
    {
        modify(Vendor)
        {
            trigger OnAfterAfterGetRecord()
            var
                LabelInDataItem: Label 'This is a label in the dataset OnAfterAfterGetRecord trigger.';
            begin
            end;

            trigger OnAfterPostDataItem()
            var
                LabelInDataItem: Label 'This is a label in the dataset OnAfterPostDataItem trigger.';
            begin
            end;

            trigger OnAfterPreDataItem()
            var
                LabelInDataItem: Label 'This is a label in the dataset OnAfterPreDataItem trigger.';
            begin
            end;

            trigger OnBeforeAfterGetRecord()
            var
                LabelInDataItem: Label 'This is a label in the dataset OnBeforeAfterGetRecord trigger.';
            begin
            end;

            trigger OnBeforePostDataItem()
            var
                LabelInDataItem: Label 'This is a label in the dataset OnBeforePostDataItem trigger.';
            begin
            end;

            trigger OnBeforePreDataItem()
            var
                LabelInDataItem: Label 'This is a label in the dataset OnBeforePreDataItem trigger.';
            begin
            end;
        }
        add(Vendor)
        {
            column(TRENewColumn; SalesLine."TRE New Options")
            {
                Caption = 'New Options Caption';
                OptionCaption = 'One-1,Two-2,Three-3';
                ToolTip = 'This is the new options column.';
            }
        }
        addlast(Vendor)
        {
            dataitem(NewDataItem; "Sales Line")
            {
                RequestFilterHeading = 'New DataItem Filters';
                column(TRENewColumn2; NewDataItem."TRE New Options")
                {
                    Caption = 'New Options Caption';
                    OptionCaption = 'One-1,Two-2,Three-3';
                    ToolTip = 'This is the new options column in the new dataitem.';
                }
            }
        }
    }

    rendering
    {
        layout(RenderingLayout)
        {
            LayoutFile = 'src/reportextension/layouts/CheckReportExtLayout.rdlc';
            Type = RDLC;
            Caption = 'Check Report Ext Layout';
            Summary = 'This is the summary of the rendering report extension layout.';
        }
    }

    labels
    {
        // label(NewLabel; 'This is a new label in the report extension labels section.');
    }

    var
        SalesLine: Record "Sales Line";
        LabelInVarSection: Label 'This is a label in the variables section of the report extension.';

    protected var
        LabelInProtectedVarSection: Label 'This is a label in the protected variables section of the report extension.';

    trigger OnPostReport()
    var
        LabelInPostReport: Label 'This is a label in the OnPostReport trigger of the report extension.';
    begin
    end;

    trigger OnPreReport()
    var
        LabelInPreReport: Label 'This is a label in the OnPreReport trigger of the report extension.';
    begin
    end;

    trigger OnPreRendering(var RenderingPayload: JsonObject)
    var
        LabelInPreRendering: Label 'This is a label in the OnPreRendering trigger of the report extension.';
    begin
    end;
}

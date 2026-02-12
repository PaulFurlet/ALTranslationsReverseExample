xmlport 50000 "TRE Check XMLPort"
{
    Caption = 'Check XMLPort caption';
    UseRequestPage = true;

    schema
    {
        textelement(RootNodeName)
        {
            tableelement(TRECheckTable; "TRE Check Table")
            {
                RequestFilterHeading = 'Check Table Filters';
                fieldelement(Field7; TRECheckTable."Field ""7""") { }
                tableelement(TRECheckLine; "Sales Line")
                {
                    RequestFilterHeading = 'Sales Line Filters';
                    fieldattribute(Attr; TRECheckTable."Field 2") { }
                    fieldelement(Filename; TRECheckLine."No.") { }
                    //etc
                    trigger OnAfterInitRecord()
                    var
                        LabelInTableElementInit:
                        Label 'This is a label in the table element OnAfterInitRecord check table.';
                    begin
                    end;
                }
                trigger OnAfterGetRecord()
                var
                    LabelInTableElement: Label ' This is a label in the table element OnAfterGetRecord with space in the beginning and end. ';
                begin
                end;

                trigger OnAfterInitRecord()
                var
                    LabelInTableElementInit: Label 'This is a label in the table element OnAfterInitRecord sales line.';
                begin
                end;

                trigger OnAfterInsertRecord()
                var
                    LabelInTableElementInsert: Label 'This is a label in the table element OnAfterInsertRecord.';
                begin
                end;

                trigger OnAfterModifyRecord()
                var
                    LabelInTableElementModify: Label 'This is a label in the table element OnAfterModifyRecord.';
                begin
                end;

                trigger OnBeforeInsertRecord()
                var
                    LabelInTableElementBeforeInsert: Label 'This is a label in the table element OnBeforeInsertRecord.';
                begin
                end;

                trigger OnBeforeModifyRecord()
                var
                    LabelInTableElementBeforeModify: Label 'This is a label in the table element OnBeforeModifyRecord.';
                begin
                end;

                trigger OnPreXmlItem()
                var
                    LabelInTableElementPreXmlItem: Label 'This is a label in the table element OnPreXmlItem.';
                begin
                end;
            }
            trigger OnAfterAssignVariable()
            var
                LabelInTextElementAfterAssign: Label 'This is a label in the text element OnAfterAssignVariable.';
            begin
            end;

            trigger OnBeforePassVariable()
            var
                LabelInTextElementBeforePass: Label 'This is a label in the text element OnBeforePassVariable.';
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
                group(GroupName)
                {
                    Caption = 'Group Caption';
                    AboutText = 'This is About text for the group.';
                    AboutTitle = 'Group Title';
                    InstructionalText = 'This is Instructional Text for the group.';
                    field(FieldName; RootNodeName)
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
                field("TRECheckTable.""Field """"7"""""""; TRECheckTable."Field ""7""")
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

    trigger OnInitXmlPort()
    var
        LabelInInit: Label 'This is a label in the OnInitXmlPort trigger.';
    begin
    end;

    trigger OnPreXmlPort()
    var
        LabelInPre: Label 'This is a label in the OnPreXmlPort trigger.';
    begin
    end;

    trigger OnPostXmlPort()
    var
        LabelInPost: Label 'This is a label in the OnPostXmlPort trigger.';
    begin
    end;

    var
        LabelInVarSection: Label 'This is a label in the variables section.';

    local procedure LocalProcedureExample()
    var
        LabelInLocalProcedure: Label 'This is a label in a local procedure.';
    begin
    end;
}

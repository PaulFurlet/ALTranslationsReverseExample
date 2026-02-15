page 50000 "TRE Check Page"
{
    ApplicationArea = All;
    Caption = 'Check Page';
    AboutText = 'This is a About Text for Check Page';
    AboutTitle = 'About Check Page Title';
    AdditionalSearchTerms = 'Check Page Additional Search Terms';
    PageType = Card;
    SourceTable = "TRE Check Table";
    InstructionalText = 'This is an Instructional Text for Check Page';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                AboutText = 'This is a About Text for General group';
                AboutTitle = 'About General group Title';
                InstructionalText = 'This is an Instructional Text for General group';

                field("Field 1"; Rec."Field 1")
                {
                    ToolTip = 'Replaced Field 1 ToolTip';
                    AboutText = 'This is a About Text for Field 1';
                    AboutTitle = 'About Field 1 Title';
                }
                field("Method OnLookup - NamedType"; Rec."Method OnLookup - NamedType")
                {
                    trigger OnAfterLookup(Selected: RecordRef)
                    var
                        LocalVarLabel: Label 'OnAfterLookup Trigger';
                    begin
                    end;
                }
                field("Table TRE Check Table - Field"; Rec."Table TRE Check Table - Field")
                {
                    trigger OnAssistEdit()
                    var
                        LocalVarLabel: Label 'OnAssistEdit Trigger';
                    begin
                    end;
                }
                field("Field 4"; Rec."Field 4")
                {
                    trigger OnControlAddIn(Index: Integer; Data: Text)
                    var
                        LocalVarLabel: Label 'OnControlAddIn Trigger';
                    begin
                    end;
                }
                field(Field6; Rec.Field6)
                {
                    trigger OnDrillDown()
                    var
                        LocalVarLabel: Label 'OnDrillDown Trigger';
                    begin
                    end;
                }
                field("Field ""7"""; Rec."Field ""7""")
                {
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        LocalVarLabel: Label 'OnLookup Trigger', Comment = 'some comment, with ;semicolon, and comma';
                    begin
                    end;
                }
                field("Field 2"; Rec."Field 2")
                {
                    trigger OnValidate()
                    var
                        LocalVarLabel: Label 'OnValidate Trigger', Comment = 'some comment, with comma and; semicolon';
                    begin
                    end;
                }
                field("Field 3"; Rec."Field 3")
                {
                }
                field("Primary Key"; Rec."Primary Key")
                {
                }
                field(OptionField; OptionVariable)
                {
                    Caption = 'Option Field', Comment = 'Some comment;with semicolon';
                    ToolTip = 'This is a ToolTip for Option Field.', Comment = 'Some comment,with comma';
                    OptionCaption = 'Option 1 Caption,Option 2 Caption,Option 3 Caption';
                }
                field("Non-billable for PE Invoice"; Rec."Non-billable for PE Invoice")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the non-billable time for PE invoice.';
                }
            }
            group(Additional)
            {
                Caption = 'Additional';
                AboutTitle = 'About Additional group Title';
                InstructionalText = 'This is an Instructional Text for Additional group';
                AboutText = 'This is a About Text for Additional group';
                grid(somegrid)
                {
                    AboutTitle = 'About Some Grid Title';
                    Caption = 'Some Grid';
                    AboutText = 'This is a About Text for Some Grid';
                    InstructionalText = 'This is an Instructional Text for Some Grid';
                    group(groupInGrid)
                    {
                        Caption = 'Group in Grid';
                        InstructionalText = 'This is an Instructional Text for Group in Grid';
                        AboutText = 'This is a About Text for Group in Grid';
                        AboutTitle = 'About Group in Grid Title';
                        field("Field 2 in group Grid"; Rec."Field 2")
                        {
                            ToolTip = 'This is a ToolTip for Field 2 in Grid.';
                            AboutText = 'This is a About Text for Field 2 in Grid';
                            AboutTitle = 'About Field 2 in Grid Title';
                            InstructionalText = 'This is an Instructional Text for Field 2 in Grid';
                        }
                        group(AnotherGroupInGrid)
                        {
                            Caption = 'Another Group in Grid';
                            field("Field 3 in group Grid"; Rec."Field 3")
                            {
                                ToolTip = 'This is a ToolTip for Field 3 in Grid.';
                                AboutText = 'This is a About Text for Field 3 in Grid';
                                AboutTitle = 'About Field 3 in Grid Title';
                                InstructionalText = 'This is an Instructional Text for Field 3 in Grid';
                            }
                            group(ThirdGroupInGrid)
                            {
                                Caption = 'Third Group in Grid';
                                AboutText = 'This is a About Text for Third Group in Grid';
                                AboutTitle = 'About Third Group in Grid Title';
                                InstructionalText = 'This is an Instructional Text for Third Group in Grid';
                                field("Field 4 in group Grid"; Rec."Field 4")
                                {
                                    ToolTip = 'This is a ToolTip for Field 4 in Grid.';
                                    AboutText = 'This is a About Text for Field 4 in Grid';
                                    AboutTitle = 'About Field 4 in Grid Title';
                                    InstructionalText = 'This is an Instructional Text for Field 4 in Grid';
                                    Caption = 'Field 4 in Grid';
                                    trigger OnDrillDown()
                                    var
                                        LocalVarLabel: Label 'Field 4 in Grid OnDrillDown Trigger';
                                    begin
                                    end;
                                    //etc etc etc
                                }
                            }
                        }
                    }
                }
            }
            part(SomePart; "Account Manager Activities")
            {
                AboutText = 'This is a About Text for Some Part';
                AboutTitle = 'About Some Part Title';
                Caption = 'Some Part';
            }
        }
        area(FactBoxes)
        {
            part(somefactbox; "Plans FactBox")
            {
                ApplicationArea = All;
                Caption = 'Some FactBox';
            }
            systempart(Notes; Notes)
            {
                ApplicationArea = All;
                Caption = 'System FactBox with Notes';
            }
        }
    }
    actions
    {
        area(Creation)
        {
            action(SomeAction)
            {
                Caption = 'Some Action';
                ToolTip = 'This is a ToolTip for Some Action.';
                AboutText = 'This is a About Text for Some Action';
                AboutTitle = 'About Some Action Title';
                Image = New;
                trigger OnAction()
                var
                    LocalVarLabel: Label 'SomeAction OnAction Trigger';
                begin

                end;
            }
            group(SomeGroup)
            {
                Caption = 'Some Group';
                action(SomeActionInGroup)
                {
                    Caption = 'Some Action in Group';
                    ToolTip = 'This is a ToolTip for Some Action in Group.';
                    AboutText = 'This is a About Text for Some Action in Group';
                    AboutTitle = 'About Some Action in Group Title';
                    Image = New;
                    trigger OnAction()
                    var
                        LocalVarLabel: Label 'SomeActionInGroup OnAction Trigger';
                    begin
                    end;
                }
                group(anothergroupInGroup)
                {
                    Caption = 'Another Group in Group';
                    action(SomeActionInAnotherGroup)
                    {
                        Caption = 'Some Action in Another Group';
                        ToolTip = 'This is a ToolTip for Some Action in Another Group.';
                        AboutText = 'This is a About Text for Some Action in Another Group';
                        AboutTitle = 'About Some Action in Another Group Title';
                        Image = New;
                        trigger OnAction()
                        var
                            LocalVarLabel: Label 'SomeActionInAnotherGroup OnAction Trigger';
                        begin

                        end;
                    }
                }
                group(GroupWithoutCaption)
                {
                    action(ActionWithoutCaption)
                    {
                        Image = NewDocument;
                        trigger OnAction()
                        begin
                            Message('No captions here');
                        end;
                    }
                }
            }
            customaction(SomeCustomAction)
            {
                Caption = 'Some Custom Action';
                ToolTip = 'This is a ToolTip for Some Custom Action.';
                AboutText = 'This is a About Text for Some Custom Action';
                AboutTitle = 'About Some Custom Action Title';
                CustomActionType = Flow;
                FlowId = '0c545001-d0e7-4408-9e5c-113d5fd6f3af';
            }
        }
        area(Promoted)
        {
            group(SomeGroupInPromoted)
            {
                Caption = 'Some Group in Promoted';
                AboutText = 'This is a About Text for Some Group in Promoted';
                AboutTitle = 'About Some Group in Promoted Title';
                ShowAs = SplitButton;
                actionref(SomeAction2_Promoted; SomeAction) { }
            }
            actionref(SomeAction_Promoted; SomeAction) { }
        }
    }


    var
        OptionVariable: Option "Option 1","Option 2","Option 3";
        GlobalVarLabel: Label 'Global Variable';

    local procedure SomeLocalProcedure()
    var
        LocalVarLabel: Label 'SomeLocalProcedure Label';
    begin

    end;

}

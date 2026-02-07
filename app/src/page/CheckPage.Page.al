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
                        LocalVarLabel: Label 'OnLookup Trigger';
                    begin

                    end;
                }
                field("Field 2"; Rec."Field 2")
                {
                    trigger OnValidate()
                    var
                        LocalVarLabel: Label 'OnValidate Trigger';
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
                    Caption = 'Option Field';
                    ToolTip = 'This is a ToolTip for Option Field.';
                    OptionCaption = 'Option 1 Caption,Option 2 Caption,Option 3 Caption';
                }
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

    var
        OptionVariable: Option "Option 1","Option 2","Option 3";


}

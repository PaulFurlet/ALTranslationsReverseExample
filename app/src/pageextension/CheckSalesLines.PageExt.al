pageextension 50000 "TRE Check Sales Lines" extends "Job Task Lines Subform"
{
    Caption = 'Check Sales Lines';
    AboutText = 'This page extension is used for testing the translation of labels in code.';
    AboutTitle = 'About Check Sales Lines';
    AdditionalSearchTerms = 'Check Sales Lines';
    InstructionalText = 'New Instructional Text for Check Sales Lines';
    PromotedActionCategories = 'Category1,Category2';
    layout
    {
        modify("Bin Code")
        {
            AboutText = 'About Field 4';
            Caption = 'Modified Field 4 Caption';
            ToolTip = 'Modified Field 4 ToolTip';
            AboutTitle = 'About Field 4 Title';
        }
        modify(Description)
        {
            InstructionalText = 'Instructional Text for Field 7';
            Caption = 'Modified Field 7 Caption';
            ToolTip = 'Modified Field 7 ToolTip';
            trigger OnLookup(var Text: Text): Boolean
            var
                LocalLabel: Label 'Local Label in Field 7 OnLookup', Comment = 'Local label used in OnLookup trigger';
            begin
            end;

            trigger OnAfterAfterLookup(Selected: RecordRef)
            var
                LocalLabel: Label 'Local Label in Field 7 OnAfterAfterLookup', Comment = 'Local label used in OnAfterAfterLookup trigger';
            begin
            end;

            trigger OnAfterValidate()
            var
                LocalLabel: Label 'Local Label in Field 7 OnAfterValidate', Comment = 'Local label used in OnAfterValidate trigger';
            begin
            end;

            trigger OnBeforeValidate()
            var
                LocalLabel: Label 'Local Label in Field 7 OnBeforeValidate', Comment = 'Local label used in OnBeforeValidate trigger';
            begin
            end;

            trigger OnAssistEdit()
            var
                LocalLabel: Label 'Local Label in Field 7 OnAssistEdit', Comment = 'Local label used in OnAssistEdit trigger';
            begin
            end;

            trigger OnDrillDown()
            var
                LocalLabel: Label 'Local Label in Field 7 OnDrillDown', Comment = 'Local label used in OnDrillDown trigger';
            begin
            end;
        }
        addfirst(Control1)
        {
            field("TRE Reserve"; Rec."Bill-to City")
            {
                AboutText = 'About TRE Reserve';
                Caption = 'TRE Reserve';
                ToolTip = 'TRE Reserve ToolTip';
                trigger OnValidate()
                var
                    LocalLabel: Label 'Local Label in TRE Reserve OnValidate', Comment = 'Local label used in OnValidate trigger';
                begin
                end;
            }
            field("name with space in the end "; rec."Bill-to Post Code")
            {
                Caption = 'Field with space in the end ';
                ToolTip = 'ToolTip for field with space in the end ';
                AboutText = 'About field with space in the end ';
                AboutTitle = 'About Title field with space in the end ';
                InstructionalText = 'Instructional text for field with space in the end ';
                trigger OnValidate()
                var
                    "LocalLable name with space in end ": Label 'Local Label name and value with space in the end ', Comment = 'Local label used in OnValidate trigger';
                begin

                end;
            }
        }
        addlast(content)
        {
            field("CRTCU Ship-to Code"; Rec."Ship-to Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the Ship-to Code for the customer receiving the Project Task.';
                trigger OnLookup(var Text: Text): Boolean
                var
                    LocalLabel: Label 'Local Label in CRTCU Ship-to Code OnLookup', Comment = 'Local label used in OnLookup trigger of CRTCU Ship-to Code field';
                begin
                end;
            }
        }
    }
    actions
    {
        addfirst(Processing)
        {
            group(" Report")
            {
                Caption = 'Report';
                ToolTip = 'This is a group for report actions.';
                action("TRE Custom Action")
                {
                    Caption = 'TRE Custom Action';
                    ToolTip = 'This is a custom action added in the Check Sales Lines page extension.';
                    AboutText = 'About TRE Custom Action';
                    AboutTitle = 'About TRE Custom Action';
                    RunObject = page "TRE Check Page";
                }
            }
            fileuploadaction(UploadFile)
            {
                Caption = 'Upload File';
                ToolTip = 'Upload File ToolTip';
                AboutText = 'About Upload File Action';
                AboutTitle = 'About Upload File Action';
                trigger OnAction(Files: List of [FileUpload])
                var
                    LocalLabel: Label 'Local Label in Upload File OnAction', Comment = 'Local label used in OnAction trigger of Upload File action';
                begin
                end;
            }
            group("TRE Custom Group")
            {
                Caption = 'TRE Custom Group';
                ToolTip = 'This is a custom group added in the Check Sales Lines page extension.';
                AboutText = 'About TRE Custom Group';
                AboutTitle = 'About TRE Custom Group';
                action("TRE Nested Action")
                {
                    Caption = 'TRE Nested Action';
                    ToolTip = 'This is a nested action inside TRE Custom Group.';
                    AboutText = 'About TRE Nested Action';
                    AboutTitle = 'About TRE Nested Action';
                    RunObject = page "TRE Check Page";
                }
            }
        }
    }
}

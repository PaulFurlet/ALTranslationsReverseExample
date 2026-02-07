page 50001 "TRE Check List Page"
{
    ApplicationArea = All;
    Caption = 'Check List Page';
    PageType = List;
    UsageCategory = None;
    SourceTable = Integer;
    SourceTableView = order(ascending) where(Number = filter(1 .. 10));

    layout
    {
        area(Content)
        {
            repeater(RepeaterGroup)
            {
                Caption = 'General';
                AboutText = 'This is a About Text for General group';
                AboutTitle = 'About General group Title';
                InstructionalText = 'This is an Instructional Text for General group';

                field(Number; Rec.Number)
                {
                    Caption = 'Number';
                    ToolTip = 'This is a ToolTip for Number field.';
                    trigger OnAfterLookup(Selected: RecordRef)
                    var
                        LocalVarLabel: Label 'OnAfterLookup Trigger';
                    begin

                    end;
                }
            }
            group(GroupWithoutControls)
            {
                Caption = 'Group without controls';
                AboutText = 'This is a About Text for Group without controls';
                AboutTitle = 'About Group without controls Title';
                InstructionalText = 'This is an Instructional Text for Group without controls';
            }
            grid(GridGroup)
            {
                Caption = 'Grid';
                AboutText = 'This is a About Text for Grid group';
                AboutTitle = 'About Grid group Title';
                InstructionalText = 'This is an Instructional Text for Grid group';

                field(NumberInGrid; Codevar)
                {
                    Caption = 'Number';
                    ToolTip = 'This is a ToolTip for Number field.';
                    AboutText = 'This is a About Text for Number field in Grid';
                    AboutTitle = 'About Number field in Grid Title';
                    InstructionalText = 'This is an Instructional Text for Number field in Grid';
                    trigger OnAfterLookup(Selected: RecordRef)
                    var
                        LocalVarLabel: Label 'NumberInGrid OnAfterLookup Trigger';
                    begin
                    end;

                    trigger OnAssistEdit()
                    var
                        LocalVarLabel: Label 'NumberInGrid OnAssistEdit Trigger';
                    begin
                    end;

                    trigger OnControlAddIn(Index: Integer; Data: Text)
                    var
                        LocalVarLabel: Label 'NumberInGrid OnControlAddIn Trigger';
                    begin
                    end;

                    trigger OnDrillDown()
                    var
                        LocalVarLabel: Label 'NumberInGrid OnDrillDown Trigger';
                    begin
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        LocalVarLabel: Label 'NumberInGrid OnLookup Trigger';
                    begin
                    end;

                    trigger OnValidate()
                    var
                        LocalVarLabel: Label 'NumberInGrid OnValidate Trigger';
                    begin
                    end;
                }
                group(GroupInGrid)
                {
                    Caption = 'Group in Grid';
                    AboutText = 'This is a About Text for Group in Grid';
                    AboutTitle = 'About Group in Grid Title';
                    InstructionalText = 'This is an Instructional Text for Group in Grid';
                    group(GroupInGroupInGrid)
                    {
                        Caption = 'Group in Group in Grid';
                        AboutText = 'This is a About Text for Group in Group in Grid';
                        AboutTitle = 'About Group in Group in Grid Title';
                        InstructionalText = 'This is an Instructional Text for Group in Group in Grid';
                        //etc
                    }
                    field(NumberInGroupInGrid; Codevar)
                    {
                        Caption = 'Number in Group in Grid';
                        ToolTip = 'This is a ToolTip for Number field in Group in Grid.';
                        InstructionalText = 'This is an Instructional Text for Number field in Group in Grid';
                        trigger OnAfterLookup(Selected: RecordRef)
                        var
                            LocalVarLabel: Label 'NumberInGroupInGrid OnAfterLookup Trigger';
                        begin
                        end;

                        trigger OnAssistEdit()
                        var
                            LocalVarLabel: Label 'NumberInGroupInGrid OnAssistEdit Trigger';
                        begin
                        end;

                        trigger OnControlAddIn(Index: Integer; Data: Text)
                        var
                            LocalVarLabel: Label 'NumberInGroupInGrid OnControlAddIn Trigger';
                        begin
                        end;

                        trigger OnDrillDown()
                        var
                            LocalVarLabel: Label 'NumberInGroupInGrid OnDrillDown Trigger';
                        begin
                        end;

                        trigger OnLookup(var Text: Text): Boolean
                        var
                            LocalVarLabel: Label 'NumberInGroupInGrid OnLookup Trigger';
                        begin
                        end;

                        trigger OnValidate()
                        var
                            LocalVarLabel: Label 'NumberInGroupInGrid OnValidate Trigger';
                        begin
                        end;
                    }
                }
            }
        }
    }
    views
    {
        view(View1)
        {
            Caption = 'View 1';
            Filters = where(Number = filter(1 .. 5));
        }
        view("View 2")
        {
            Caption = 'View 2';
            Filters = where(Number = filter(1 .. 15));
        }
        view("View 3")
        {
            Caption = 'View 3';
            Filters = where(Number = filter(1 .. 15));
        }
        view("Page TRE Check List Page - View View")
        {
            Caption = 'Page TRE Check List Page - View View';
            Filters = where(Number = filter(1 .. 100500));
        }
    }
    var
        CodeVar: Code[20];
}

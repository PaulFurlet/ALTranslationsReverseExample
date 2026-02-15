table 50000 "TRE Check Table"
{
    Caption = 'Check Table';
    Description = 'Table used for testing the translation of labels and filters in code.';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key', Locked = true;
            ToolTip = 'This is the primary key field.', Locked = true;
            DataClassification = SystemMetadata;
            trigger OnValidate()
            var
                LocalLabel: Label 'Local Label in OnValidate Trigger', Comment = 'Label used in OnValidate trigger of Primary Key field.';
            begin

            end;

            trigger OnLookup()
            var
                LocalLabel: Label 'Local Label in OnLookup Trigger', Comment = 'Label used in OnLookup trigger of Primary Key field.';
            begin

            end;
        }
        field(2; "Field 1"; Integer)
        {
            Caption = 'Field 1';
            ToolTip = 'This is field 1.';
            trigger OnValidate()
            var
                LocalLockedLabel: Label 'Local Label in OnValidate Trigger', Comment = 'Label used in OnValidate trigger of Field 1.', Locked = true;
            begin

            end;

            trigger OnLookup()
            var
                LocalLockedLabel: Label 'Local Label in OnLookup Trigger', Locked = true;
                LocalLockedLabel2: Label 'Local Label in OnLookup Trigger', Locked = true, Comment = 'Another label used in OnLookup trigger of Field 1.';
            begin

            end;
        }
        field(3; "Field 2"; Text[100])
        {
            Caption
            =
            'Field 2'
            , Locked = false
            ,
            Comment
            =
            'Very rare case adding comments to fields captions.';
            ToolTip = 'This is field 2.',
            Comment = 'Very rare case adding comments to field tooltips.', Locked = false
            ;
            trigger OnValidate()
            var
                LocalLabelWithPlaceholders
                : Label 'Local %1 Label in OnValidate Trigger',
                Comment
                =
                'Label with placeholders, %1 will be replaced with dynamic content, used in OnValidate trigger of Field 2.';
                LocalLockedLabelWithPlaceholders:
                Label 'Local %1 Label in OnValidate Trigger',
                Locked = true,
                Comment =
                'Label with placeholders, %1 will be replaced with dynamic content, used in OnValidate trigger of Field 2.';
            begin

            end;
        }
        field(4; "Field 3"; Code[10])
        {
            Caption = 'Field 3';
            trigger OnValidate()
            var

            begin

            end;
        }
        field(5; "Field 4"; Code[50])
        {
            trigger OnValidate()
            var
                "Method OnLookup - NamedType LocalLabel in name": Label 'Local Label in OnValidate Trigger';
            begin
                Message("Method OnLookup - NamedType LocalLabel in name");
            end;
        }

        field(6; Field6; Code[50])
        {
        }
        field(7; "Field ""7"""; Code[50])
        {
            ToolTip = 'This is ''field'' 7.';
            trigger OnValidate()
            var
                LocalLabelWithPlaceholders: Label 'Local "%1" Label in OnValidate Trigger', Comment = 'Label with placeholders, %1 will be replaced with dynamic content, used in OnValidate trigger of Field 7.';
                LocalLabelWithPlaceholders2: Label 'Local ''%1'' Label in OnValidate Trigger', Comment = '%1 - something like "|"';
                LocalLabelWithPlaceholders3: Label 'Local ''%1''|"%2" Label in OnValidate Trigger', Comment = '%1 - something like "=" and %2 - maybe ''uk-UA''';
                localLabelWithPlaceholders4: Label 'Local uk-UA Label in OnValidate Trigger';
                localLabelWithPlaceholders5: Label 'Local uk-UA=%1 Label in OnValidate Trigger', Comment = '%1 - might be something like "|"';
            begin

            end;

            trigger OnLookup()
            var
                "localLabelwith uk-UA= in name": Label 'Local uk-UA=%1 Label in OnLookup Trigger', Comment = '%1 - might be something like "|"';
            begin
                Message("localLabelwith uk-UA= in name", '|');
            end;
        }
        field(8; "Method OnLookup - NamedType"; Decimal)
        {
            Caption = 'Interesting case';
            trigger OnLookup()
            var
                LocalLabel: Label 'Local Label in OnLookup Trigger of interesting case';
            begin
                Message('%1', "Method OnLookup - NamedType");
            end;
        }
        field(9; "Table TRE Check Table - Field"; Decimal)
        {
            Caption = 'Another Interesting case';
            ToolTip = 'This is another interesting case for testing field name with parsing stuff.';
            trigger OnLookup()
            var
                "Table TRE Check Table - Field Field ""7"" - Property Caption": Label 'this is 99.(9)% unusual case, but still valid definition';
            begin
                Message("Table TRE Check Table - Field Field ""7"" - Property Caption");
            end;
        }
        field(10; "Option field"; Option)
        {
            OptionMembers = "Option 1",Option2,,"Option 4 always comma-separated";
            OptionCaption = 'Option 1,Option2,,Option 4 always comma-separated';
            Caption = 'Option field';
            ToolTip = 'Tooltip for option field.';
        }
        field(11; "Field with endspace "; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Field with space in the end ';
            ToolTip = 'This is a field with space in the end ';
        }
        field(12; " Field with-dash and spaces "; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = ' The Field with-dash and spaces ';
            ToolTip = ' This is the field with-dash and spaces ';
        }
        field(24; "Non-billable for PE Invoice"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Non-billable for PE Invoice';
        }
    }
    keys
    {
        key(PK; "Primary Key") { Clustered = true; }
    }
    fieldgroups
    {
        fieldgroup(Dropdown; "Primary Key", "Field 1", "Field 2")
        {
            Caption = 'Dropdown';
            ObsoleteState = Pending;
            ObsoleteReason = 'obsolete field group';
        }
    }

    trigger OnDelete()
    var
        LocalLabel: Label 'Local Label in OnDelete Trigger';
    begin

    end;

    trigger OnInsert()
    var
        LocalLabel: Label 'Local Label in OnInsert Trigger';
    begin

    end;

    trigger OnModify()
    var
        LocalLabel: Label 'Local Label in OnModify Trigger';
    begin

    end;

    trigger OnRename()
    var
        LocalLabel: Label 'Local Label in OnRename Trigger';
    begin

    end;

    var
        GlobalLabel: Label 'Global Label';
        GlobalLockedLabel: Label 'Global Locked Label', Locked = true;
        GlobalLabelWithPlaceholders: Label 'Global %1 Label', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        GlobalLockedLabelWithPlaceholders: Label 'Global %1 Label', Locked = true, Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        GlobalLockedLabelWithPlaceholders2: Label 'Global %1 Label2', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.', Locked = true;
        GlobalLabelWithPlaceholdersNoDescription: Label 'Global %1 Label';
        GlobalLockedLabelWithPlaceholdersNoDescription: Label 'Global %1 Label', Locked = true;
        GlobalFilterLabelNoDescription: Label '%1|%2';
        GlobalFilterLabel: Label '%1|%2', Comment = '%1 value 1, %2 value 2';
        GlobalFilterLabelLocked: Label '%1|%2', Locked = true, Comment = '%1 value 1, %2 value 2';
        GlobalFilterLabelLocked2: Label '%1|%2', Comment = '%1 value 1, %2 value 2', Locked = true;

    protected var
        ProtectedGlobalLabel: Label 'Protected Global Label';
        ProtectedGlobalLockedLabel: Label 'Protected Global Locked Label', Locked = true;
        ProtectedGlobalLabelWithPlaceholders: Label 'Protected Global %1 Label', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        ProtectedGlobalLockedLabelWithPlaceholders: Label 'Protected Global %1 Label', Locked = true, Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        ProtectedGlobalLockedLabelWithPlaceholders2: Label 'Protected Global %1 Label2', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.', Locked = true;
        ProtectedGlobalLabelWithPlaceholdersNoDescription: Label 'Protected Global %1 Label';
        ProtectedGlobalLockedLabelWithPlaceholdersNoDescription: Label 'Protected Global %1 Label', Locked = true;
        ProtectedGlobalFilterLabelNoDescription: Label '%1|%2';
        ProtectedGlobalFilterLabel: Label '%1|%2', Comment = '%1 value 1, %2 value 2';
        ProtectedGlobalFilterLabelLocked: Label '%1|%2', Locked = true, Comment = '%1 value 1, %2 value 2';
        ProtectedGlobalFilterLabelLocked2: Label '%1|%2', Comment = '%1 value 1, %2 value 2', Locked = true;

    local procedure LocalFunction()
    var
        LocalLabel: Label 'Local Label';
        LocalLockedLabel: Label 'Local Locked Label', Locked = true;
        LocalLabelWithPlaceholders: Label 'Local %1 Label', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        LocalLockedLabelWithPlaceholders: Label 'Local %1 Label', Locked = true, Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        LocalLockedLabelWithPlaceholders2: Label 'Local %1 Label2', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.', Locked = true;
        LocalLabelWithPlaceholdersNoDescription: Label 'Local %1 Label';
        LocalLockedLabelWithPlaceholdersNoDescription: Label 'Local %1 Label', Locked = true;
        LocalFilterLabelNoDescription: Label '%1|%2';
        LocalFilterLabel: Label '%1|%2', Comment = '%1 value 1, %2 value 2';
        LocalFilterLabelLocked: Label '%1|%2', Locked = true, Comment = '%1 value 1, %2 value 2';
        LocalFilterLabelLocked2: Label '%1|%2', Comment = '%1 value 1, %2 value 2', Locked = true;
    begin
        Rec.SetRange("Field 2", '%1|%2');
        Rec.SetFilter("Field 2", '%1|%2', '%1', '%2');
        Rec.SetFilter("Field 2", LocalFilterLabel, '%1', '%2');
        Rec.SetFilter("Field 2", LocalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("Field 2", LocalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("Field 2", LocalFilterLabelLocked2, '%1', '%2');
        Rec.SetFilter("Field 2", GlobalFilterLabel, '%1', '%2');
        Rec.SetFilter("Field 2", GlobalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("Field 2", GlobalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("Field 2", GlobalFilterLabelLocked2, '%1', '%2');
        Rec.SetFilter("Field 2", ProtectedGlobalFilterLabel, '%1', '%2');
        Rec.SetFilter("Field 2", ProtectedGlobalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("Field 2", ProtectedGlobalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("Field 2", ProtectedGlobalFilterLabelLocked2, '%1', '%2');
    end;

    internal procedure InternalFunction()
    var
        LocalLabel: Label 'Local Label';
        LocalLockedLabel: Label 'Local Locked Label', Locked = true;
        LocalLabelWithPlaceholders: Label 'Local %1 Label', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        LocalLockedLabelWithPlaceholders: Label 'Local %1 Label', Locked = true, Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        LocalLockedLabelWithPlaceholders2: Label 'Local %1 Label2', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.', Locked = true;
        LocalLabelWithPlaceholdersNoDescription: Label 'Local %1 Label';
        LocalLockedLabelWithPlaceholdersNoDescription: Label 'Local %1 Label', Locked = true;
        LocalFilterLabelNoDescription: Label '%1|%2';
        LocalFilterLabel: Label '%1|%2', Comment = '%1 value 1, %2 value 2';
        LocalFilterLabelLocked: Label '%1|%2', Locked = true, Comment = '%1 value 1, %2 value 2';
        LocalFilterLabelLocked2: Label '%1|%2', Comment = '%1 value 1, %2 value 2', Locked = true;
    begin
        Rec.SetRange("Field 2", '%1|%2');
        Rec.SetFilter("Field 2", '%1|%2', '%1', '%2');
        Rec.SetFilter("Field 2", LocalFilterLabel, '%1', '%2');
        Rec.SetFilter("Field 2", LocalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("Field 2", LocalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("Field 2", LocalFilterLabelLocked2, '%1', '%2');
        Rec.SetFilter("Field 2", GlobalFilterLabel, '%1', '%2');
        Rec.SetFilter("Field 2", GlobalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("Field 2", GlobalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("Field 2", GlobalFilterLabelLocked2, '%1', '%2');
        Rec.SetFilter("Field 2", ProtectedGlobalFilterLabel, '%1', '%2');
        Rec.SetFilter("Field 2", ProtectedGlobalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("Field 2", ProtectedGlobalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("Field 2", ProtectedGlobalFilterLabelLocked2, '%1', '%2');
    end;

    procedure GlobalFunction()
    var
        LocalLabel: Label 'Local Label';
        LocalLockedLabel: Label 'Local Locked Label', Locked = true;
        LocalLabelWithPlaceholders: Label 'Local %1 Label', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        LocalLockedLabelWithPlaceholders: Label 'Local %1 Label', Locked = true, Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        LocalLockedLabelWithPlaceholders2: Label 'Local %1 Label2', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.', Locked = true;
        LocalLabelWithPlaceholdersNoDescription: Label 'Local %1 Label';
        LocalLockedLabelWithPlaceholdersNoDescription: Label 'Local %1 Label', Locked = true;
        LocalFilterLabelNoDescription: Label '%1|%2';
        LocalFilterLabel: Label '%1|%2', Comment = '%1 value 1, %2 value 2';
        LocalFilterLabelLocked: Label '%1|%2', Locked = true, Comment = '%1 value 1, %2 value 2';
        LocalFilterLabelLocked2: Label '%1|%2', Comment = '%1 value 1, %2 value 2', Locked = true;
    begin
        Rec.SetRange("Field 2", '%1|%2');
        Rec.SetFilter("Field 2", '%1|%2', '%1', '%2');
        Rec.SetFilter("Field 2", LocalFilterLabel, '%1', '%2');
        Rec.SetFilter("Field 2", LocalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("Field 2", LocalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("Field 2", LocalFilterLabelLocked2, '%1', '%2');
        Rec.SetFilter("Field 2", GlobalFilterLabel, '%1', '%2');
        Rec.SetFilter("Field 2", GlobalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("Field 2", GlobalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("Field 2", GlobalFilterLabelLocked2, '%1', '%2');
        Rec.SetFilter("Field 2", ProtectedGlobalFilterLabel, '%1', '%2');
        Rec.SetFilter("Field 2", ProtectedGlobalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("Field 2", ProtectedGlobalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("Field 2", ProtectedGlobalFilterLabelLocked2, '%1', '%2');
    end;
}

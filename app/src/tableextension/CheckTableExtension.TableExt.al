tableextension 50000 "TRE Check Table Extension" extends "TRE Check Table"
{
    Description = 'Table extension used for testing the translation of labels in code.';

    fields
    {
        modify(Field6)
        {
            Caption = 'Modified Field 6 Caption';
            ToolTip = 'Modified Field 6 ToolTip';
        }
        modify("Option field")
        {
            Caption = 'Modified Option field Caption';
            ToolTip = 'Modified Option field ToolTip';
        }
        field(50000; "TRE Field 1"; Integer)
        {
            // this already has a caption with translation, probably show some warning or so
            Caption = 'Field 1', Comment = 'uk-UA=Поле 1';
            ToolTip = 'This is field %1 - 1.', Comment = '%1 non-used placeholder|uk-UA=Це поле %1 - 1.';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                LocalLabel: Label 'Local Label in OnValidate', Comment = 'Local label used in OnValidate trigger';
            begin

            end;

            trigger OnLookup()
            var
                LocalLabel: Label 'Local Label in OnLookup', Comment = 'Local label used in OnLookup trigger';
            begin

            end;
        }
        field(50001; "TRE Field 2"; Text[100])
        {
            Caption = 'Field 2', Comment = 'Very rare case adding comments to fields captions.';
            ToolTip = 'This is field 2.', Comment = 'Very rare case adding comments to field tooltips.';
            DataClassification = CustomerContent;
        }
        field(50002; "TRE Field 3"; Code[10])
        {
            Caption = 'Field 3';
            DataClassification = CustomerContent;
        }
        field(50003; "TRE Field 4"; Code[50])
        {
            DataClassification = CustomerContent;
        }
    }
    trigger OnInsert()
    var
        NewLocalLabel
        : Label 'Local Label in OnInsert', Comment = 'Local label';
    begin

    end;

    trigger OnBeforeInsert()
    var
        LocalLabel: Label
         'Local Label in OnBeforeInsert', Comment = 'Local label';
    begin

    end;

    trigger OnAfterInsert()
    var
        LocalLabel: Label 'Local Label in OnAfterInsert', Locked = true,
         Comment = 'Local label';
    begin

    end;

    trigger OnModify()
    var
        NewLocalLabel: Label 'Local Label in OnModify'
        , Comment = 'Local label';
    begin

    end;

    trigger OnBeforeModify()
    var
        LocalLabel: Label 'Local Label in OnBeforeModify';
    begin

    end;

    trigger OnAfterModify()
    var
        LocalLabel: Label 'Local Label in OnAfterModify', Locked = true;
    begin

    end;

    trigger OnRename()
    var
        NewLocalLabel: Label 'Local Label in %1 OnRename', Comment =
        'Local label %1';
    begin

    end;

    trigger OnBeforeRename()
    var
        LocalLabel: Label 'Local Label in %1 OnBeforeRename', Comment
         = 'Local label %1';
    begin

    end;

    trigger OnAfterRename()
    var
        LocalLabel
        : Label 'Local Label in %1 OnAfterRename', Comment = 'Local %1 label';
    begin

    end;

    trigger OnDelete()
    var
        NewLocalLabel:
        Label 'Local Label in %1 OnDelete', Comment = 'Local label %1';
    begin

    end;

    trigger OnBeforeDelete()
    var
        LocalLabel: Label
        'Local Label in %1 OnBeforeDelete', Comment = 'Local label %1';
    begin

    end;

    trigger OnAfterDelete()
    var
        LocalLabel: Label 'Local Label in %1 OnAfterDelete',
         Comment =
         'Local %1 label'
         ;
    begin

    end;

    var
        NewGlobalLabel: Label 'Global Label';
        NewGlobalLockedLabel: Label 'Global Locked Label', Locked = true;
        NewGlobalLabelWithPlaceholders: Label 'Global %1 Label', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        NewGlobalLockedLabelWithPlaceholders: Label 'Global %1 Label', Locked = true, Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        NewGlobalLockedLabelWithPlaceholders2: Label 'Global %1 Label2', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.', Locked = true;
        NewGlobalLabelWithPlaceholdersNoDescription: Label 'Global %1 Label';
        NewGlobalLockedLabelWithPlaceholdersNoDescription: Label 'Global %1 Label', Locked = true;
        NewGlobalFilterLabelNoDescription: Label '%1|%2';
        NewGlobalFilterLabel: Label '%1|%2', Comment = '%1 value 1, %2 value 2';
        NewGlobalFilterLabelLocked: Label '%1|%2', Locked = true, Comment = '%1 value 1, %2 value 2';
        NewGlobalFilterLabelLocked2: Label '%1|%2', Comment = '%1 value 1, %2 value 2', Locked = true;

    protected var
        NewProtectedGlobalLabel: Label 'Protected Global Label';
        NewProtectedGlobalLockedLabel: Label 'Protected Global Locked Label', Locked = true;
        NewProtectedGlobalLabelWithPlaceholders: Label 'Protected Global %1 Label', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        NewProtectedGlobalLockedLabelWithPlaceholders: Label 'Protected Global %1 Label', Locked = true, Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        NewProtectedGlobalLockedLabelWithPlaceholders2: Label 'Protected Global %1 Label2', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.', Locked = true;
        NewProtectedGlobalLabelWithPlaceholdersNoDescription: Label 'Protected Global %1 Label';
        NewProtectedGlobalLockedLabelWithPlaceholdersNoDescription: Label 'Protected Global %1 Label', Locked = true;
        NewProtectedGlobalFilterLabelNoDescription: Label '%1|%2';
        NewProtectedGlobalFilterLabel: Label '%1|%2', Comment = '%1 value 1, %2 value 2';
        NewProtectedGlobalFilterLabelLocked: Label '%1|%2', Locked = true, Comment = '%1 value 1, %2 value 2';
        NewProtectedGlobalFilterLabelLocked2: Label '%1|%2', Comment = '%1 value 1, %2 value 2', Locked = true;

    local procedure LocalFunction()
    var
        NewLocalLabel: Label 'Local Label';
        NewLocalLockedLabel: Label 'Local Locked Label', Locked = true;
        NewLocalLabelWithPlaceholders: Label 'Local %1 Label', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        NewLocalLockedLabelWithPlaceholders: Label 'Local %1 Label', Locked = true, Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        NewLocalLockedLabelWithPlaceholders2: Label 'Local %1 Label2', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.', Locked = true;
        NewLocalLabelWithPlaceholdersNoDescription: Label 'Local %1 Label';
        NewLocalLockedLabelWithPlaceholdersNoDescription: Label 'Local %1 Label', Locked = true;
        NewLocalFilterLabelNoDescription: Label '%1|%2';
        NewLocalFilterLabel: Label '%1|%2', Comment = '%1 value 1, %2 value 2';
        NewLocalFilterLabelLocked: Label '%1|%2', Locked = true, Comment = '%1 value 1, %2 value 2';
        NewLocalFilterLabelLocked2: Label '%1|%2', Comment = '%1 value 1, %2 value 2', Locked = true;
    begin
        Rec.SetRange("TRE Field 2", '%1|%2');
        Rec.SetFilter("TRE Field 2", '%1|%2', '%1', '%2');
    end;

    internal procedure InternalFunction()
    var
        NewLocalLabel: Label 'Local Label';
        NewLocalLockedLabel: Label 'Local Locked Label', Locked = true;
    begin
        Rec.SetRange("TRE Field 2", '%1|%2');
    end;

    procedure NewGlobalFunction()
    var
        NewLocalLabel: Label 'Local Label';
        NewLocalLockedLabel: Label 'Local Locked Label', Locked = true;
        NewLocalLabelWithPlaceholders: Label 'Local %1 Label', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        NewLocalLockedLabelWithPlaceholders: Label 'Local %1 Label', Locked = true, Comment = 'Label with placeholders, %1 will be replaced with dynamic content.';
        NewLocalLockedLabelWithPlaceholders2: Label 'Local %1 Label2', Comment = 'Label with placeholders, %1 will be replaced with dynamic content.', Locked = true;
        NewLocalLabelWithPlaceholdersNoDescription: Label 'Local %1 Label';
        NewLocalLockedLabelWithPlaceholdersNoDescription: Label 'Local %1 Label', Locked = true;
        NewLocalFilterLabelNoDescription: Label '%1|%2';
        NewLocalFilterLabel: Label '%1|%2', Comment = '%1 value 1, %2 value 2';
        NewLocalFilterLabelLocked: Label '%1|%2', Locked = true, Comment = '%1 value 1, %2 value 2';
        NewLocalFilterLabelLocked2: Label '%1|%2', Comment = '%1 value 1, %2 value 2', Locked = true;
    begin
        Rec.SetRange("TRE Field 2", '%1|%2');
    end;

}
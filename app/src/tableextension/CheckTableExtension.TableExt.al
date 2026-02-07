tableextension 50000 "TRE Check Table Extension" extends "Sales Line"
{
    Caption = 'Check Table Extension';
    Description = 'Table extension used for testing the translation of labels in code.';

    fields
    {
        field(50000; "TRE Field 1"; Integer)
        {
            Caption = 'Field 1', Comment = 'uk-UA=Поле 1';
            ToolTip = 'This is field 1.';
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
        Rec.SetRange("TRE Field 2", '%1|%2');
        Rec.SetFilter("TRE Field 2", '%1|%2', '%1', '%2');
        Rec.SetFilter("TRE Field 2", LocalFilterLabel, '%1', '%2');
        Rec.SetFilter("TRE Field 2", LocalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("TRE Field 2", LocalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("TRE Field 2", LocalFilterLabelLocked2, '%1', '%2');
        Rec.SetFilter("TRE Field 2", GlobalFilterLabel, '%1', '%2');
        Rec.SetFilter("TRE Field 2", GlobalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("TRE Field 2", GlobalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("TRE Field 2", GlobalFilterLabelLocked2, '%1', '%2');
        Rec.SetFilter("TRE Field 2", ProtectedGlobalFilterLabel, '%1', '%2');
        Rec.SetFilter("TRE Field 2", ProtectedGlobalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("TRE Field 2", ProtectedGlobalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("TRE Field 2", ProtectedGlobalFilterLabelLocked2, '%1', '%2');
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
        Rec.SetRange("TRE Field 2", '%1|%2');
        Rec.SetFilter("TRE Field 2", '%1|%2', '%1', '%2');
        Rec.SetFilter("TRE Field 2", LocalFilterLabel, '%1', '%2');
        Rec.SetFilter("TRE Field 2", LocalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("TRE Field 2", LocalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("TRE Field 2", LocalFilterLabelLocked2, '%1', '%2');
        Rec.SetFilter("TRE Field 2", GlobalFilterLabel, '%1', '%2');
        Rec.SetFilter("TRE Field 2", GlobalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("TRE Field 2", GlobalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("TRE Field 2", GlobalFilterLabelLocked2, '%1', '%2');
        Rec.SetFilter("TRE Field 2", ProtectedGlobalFilterLabel, '%1', '%2');
        Rec.SetFilter("TRE Field 2", ProtectedGlobalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("TRE Field 2", ProtectedGlobalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("TRE Field 2", ProtectedGlobalFilterLabelLocked2, '%1', '%2');
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
        Rec.SetRange("TRE Field 2", '%1|%2');
        Rec.SetFilter("TRE Field 2", '%1|%2', '%1', '%2');
        Rec.SetFilter("TRE Field 2", LocalFilterLabel, '%1', '%2');
        Rec.SetFilter("TRE Field 2", LocalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("TRE Field 2", LocalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("TRE Field 2", LocalFilterLabelLocked2, '%1', '%2');
        Rec.SetFilter("TRE Field 2", GlobalFilterLabel, '%1', '%2');
        Rec.SetFilter("TRE Field 2", GlobalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("TRE Field 2", GlobalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("TRE Field 2", GlobalFilterLabelLocked2, '%1', '%2');
        Rec.SetFilter("TRE Field 2", ProtectedGlobalFilterLabel, '%1', '%2');
        Rec.SetFilter("TRE Field 2", ProtectedGlobalFilterLabelNoDescription, '%1', '%2');
        Rec.SetFilter("TRE Field 2", ProtectedGlobalFilterLabelLocked, '%1', '%2');
        Rec.SetFilter("TRE Field 2", ProtectedGlobalFilterLabelLocked2, '%1', '%2');
    end;

}
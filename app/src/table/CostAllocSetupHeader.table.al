table 50003 "TRE Cost Alloc. Setup Header"
{
    DataClassification = CustomerContent;
    Caption = 'Cost Allocation Setup Header';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            ToolTip = 'Specifies the cost allocation setup code.';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            ToolTip = 'Specifies the cost allocation setup description.';
        }
        field(3; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            ToolTip = 'Specifies the cost allocation setup starting date.';
        }
        field(4; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
            ToolTip = 'Specifies the cost allocation setup ending date.';
        }
        field(5; Blocked; Boolean)
        {
            Caption = 'Blocked';
            ToolTip = 'Specifies that the cost allocation setup is blocked.';
        }
    }
    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}
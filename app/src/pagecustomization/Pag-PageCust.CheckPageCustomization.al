pagecustomization "TRE Check Page Customization" customizes "Sales Order List"
{
    layout
    {
        modify("No.")
        {
            AboutText = 'The unique identifier for the sales order.';
            AboutTitle = 'Sales Order Number';
        }
        addafter("Requested Delivery Date")
        {
            field("Document Type"; Rec."Document Type")
            {
                ApplicationArea = All;
                Caption = 'Document Type';
                AboutText = 'The type of the sales order document.';
                AboutTitle = 'Document Type';
            }
        }
    }

    actions
    {
        modify(Post)
        {
            AboutText = 'Post the sales order to the general ledger.';
            AboutTitle = 'Post Sales Order';
        }
    }
}
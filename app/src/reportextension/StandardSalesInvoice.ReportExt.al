reportextension 50001 "TRE Standard Sales - Invoice" extends "Standard Sales - Invoice"
{
    dataset
    {
        add(Header)
        {
            column(TREEmailBodyText; EmailBodyTextLbl)
            {
                Caption = 'Email Body Text';
                ToolTip = 'This is the email body text that will be used when sending the posted sales invoice email.';
            }
        }
    }

    rendering
    {
        layout(TREPostedSalesInvoiceEmail)
        {
            Type = Word;
            LayoutFile = 'src/reportextensions/layouts/PostedSalesInvoiceEmail.docx';
            Caption = 'Posted Sales Invoice Email (Word)';
            Summary = 'The Posted Sales Invoice Email (Word) provides an email body for the posted sales invoice.';
        }
    }

    var
        EmailBodyTextLbl: Label 'Email body will be processed by email system. Available placeholders: <DocumentDate>, <PostingDate>, <DueDate>, <DocumentNo>, <CustomerName>, <ContactName>, <TotalAmount>, <CurrencyCode>, <ContractNo>, <WorkDescription>, <TotalAmountInclSalesTax>, <ServicePeriod>';
}
codeunit 50000 "TRE Check Codeunit"
{
    Description = 'Codeunit used for testing the translation of labels and filters in code.';
    trigger OnRun()
    begin
        CalledLocalFunction();
        CalledInternalFunction();
        CalledGlobalFunction();
    end;

    local procedure CalledLocalFunction()
    var
        SalesLine: Record "Sales Line";
        myLocalLabel: Label 'Local Label in CalledLocalFunction, please translate me';
        myLocalLabelWithDescribedPlaceholders: Label 'Local %1 Label %2 in %3 CalledLocalFunction, would you like to translate me as well?', Comment = '%1 ph1, %2 ph2, %3 ph3';
        myLocalLabelWithPlaceholders: Label 'Local %1 Label %2 in %3 CalledLocalFunction; please translate me too';
        myLocalFilter: Label '%1|%2|%3; what about me?', Comment = '%1 filter1, %2 filter2, %3 filter3; what about us?';
        myLocalFilterNoDescription: Label '%1|%2|%3; and me, please';
        myLocalLockedFilter: Label '%1|%2|%3', Locked = true, Comment = '%1 filter1, %2 filter2, %3 filter3';
        myLocalLockedFilterNoDescription: Label '%1|%2|%3', Locked = true;
        myLocalLockedLabel: Label 'Local Locked Label in CalledLocalFunction', Locked = true;
        myLocalLockedLabelWithDescribedPlaceholders: Label 'Local Locked %1 Label %2 in %3 CalledLocalFunction', Locked = true, Comment = '%1 ph1, %2 ph2, %3 ph3';
        myLocalLockedLabelWithPlaceholders: Label 'Local Locked %1 Label %2 in %3 CalledLocalFunction', Locked = true;
        myLocalLockedFilter2: Label '%1|%2|%3', Comment = '%1 filter1, %2 filter2, %3 filter3', Locked = true;
        myLocalLockedLabelWithDescribedPlaceholders2: Label 'Local Locked %1 Label %2 in %3 CalledLocalFunction', Comment = '%1 ph1, %2 ph2, %3 ph3', Locked = true;
        DifferentAgreementNoErr: Label 'The selected project tasks have different %1. Please select project tasks with the same %1.', Comment = '%1 - "CRTUA Agreement No." caption';
    begin
        Message('hardcoded text in called local function');
        Message('hardcoded %1 text %2 with %3 placeholders in called local function', 'ph1', 'ph2', 'ph3');

        Message(myGlobalLabel);
        Message(myGlobalLockedLabel);
        Message(myGlobalLabelWithDescribedPlaceholders, 'ph1', 'ph2', 'ph3', 'ph4');
        Message(myGlobalLabelWithPlaceholders, 'ph1', 'ph2', 'ph3', 'ph4');
        Message(myGlobalLockedLabelWithDescribedPlaceholders, 'ph1', 'ph2', 'ph3', 'ph4');
        Message(myGlobalLockedLabelWithPlaceholders, 'ph1', 'ph2', 'ph3', 'ph4');

        Message(myLocalLabel);
        Message(myLocalLockedLabel);
        Message(myLocalLabelWithDescribedPlaceholders, 'ph1', 'ph2', 'ph3');
        Message(myLocalLabelWithPlaceholders, 'ph1', 'ph2', 'ph3');
        Message(myLocalLockedLabelWithDescribedPlaceholders, 'ph1', 'ph2', 'ph3');
        Message(myLocalLockedLabelWithPlaceholders, 'ph1', 'ph2', 'ph3');
        SalesLine.SetFilter("No.", '%1|%2|%3', 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myLocalFilter, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myLocalLockedFilter, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myLocalLockedFilterNoDescription, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myLocalFilterNoDescription, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myGlobalFilter, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myGlobalLockedFilter, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myGlobalLockedFilterNoDescription, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myGlobalFilterNoDescription, 'filter1', 'filter2', 'filter3');
    end;

    internal procedure CalledInternalFunction()
    var
        SalesLine: Record "Sales Line";
        myLocalLabel: Label 'Local Label in CalledInternalFunction';
        myLocalLabelWithDescribedPlaceholders: Label 'Local %1 Label %2 in %3; CalledInternalFunction', Comment = '%1 ph1, %2 ph2, %3 ph3; semicolon is used';
        myLocalLabelWithPlaceholders: Label 'Local %1 Label %2 in %3 CalledInternalFunction';
        myLocalLockedLabel: Label 'Local Locked Label in CalledInternalFunction', Locked = true;
        myLocalLockedLabelWithDescribedPlaceholders: Label 'Local Locked %1 Label %2 in %3 CalledInternalFunction', Locked = true, Comment = '%1 ph1, %2 ph2, %3 ph3';
        myLocalLockedLabelWithPlaceholders: Label 'Local Locked %1 Label %2 in %3 CalledInternalFunction', Locked = true;
        myLocalFilter: Label '%1|%2|%3, huh', Comment = '%1 filter1, %2 filter2, %3 filter3; comma, is used';
        myLocalFilterNoDescription: Label '%1|%2|%3,comma;semicolon?';
        myLocalLockedFilter: Label '%1|%2|%3', Locked = true, Comment = '%1 filter1, %2 filter2, %3 filter3';
        myLocalLockedFilterNoDescription: Label '%1|%2|%3', Locked = true;
        myLocalLockedFilter2: Label '%1|%2|%3', Comment = '%1 filter1, %2 filter2, %3 filter3', Locked = true;
        myLocalLockedLabelWithDescribedPlaceholders2: Label 'Local Locked %1 Label %2 in %3 CalledLocalFunction', Comment = '%1 ph1, %2 ph2, %3 ph3', Locked = true;
    begin
        Message('hardcoded text in called internal function');
        Message('hardcoded %1 text %2 with %3 placeholders in called internal function', 'ph1', 'ph2', 'ph3');

        Message(myGlobalLabel);
        Message(myGlobalLockedLabel);
        Message(myGlobalLabelWithDescribedPlaceholders, 'ph1', 'ph2', 'ph3', 'ph4');
        Message(myGlobalLabelWithPlaceholders, 'ph1', 'ph2', 'ph3', 'ph4');
        Message(myGlobalLockedLabelWithDescribedPlaceholders, 'ph1', 'ph2', 'ph3', 'ph4');
        Message(myGlobalLockedLabelWithPlaceholders, 'ph1', 'ph2', 'ph3', 'ph4');

        Message(myLocalLabel);
        Message(myLocalLockedLabel);
        Message(myLocalLabelWithDescribedPlaceholders, 'ph1', 'ph2', 'ph3');
        Message(myLocalLabelWithPlaceholders, 'ph1', 'ph2', 'ph3');
        Message(myLocalLockedLabelWithDescribedPlaceholders, 'ph1', 'ph2', 'ph3');
        Message(myLocalLockedLabelWithPlaceholders, 'ph1', 'ph2', 'ph3');
        SalesLine.SetFilter("No.", '%1|%2|%3', 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myLocalFilter, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myLocalLockedFilter, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myLocalLockedFilterNoDescription, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myLocalFilterNoDescription, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myGlobalFilter, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myGlobalLockedFilter, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myGlobalLockedFilterNoDescription, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myGlobalFilterNoDescription, 'filter1', 'filter2', 'filter3');
    end;

    procedure CalledGlobalFunction()
    var
        SalesLine: Record "Sales Line";
        myLocalLabel: Label 'Local Label in CalledGlobalFunction;semicolon,comma;semicolon again';
        myLocalLabelWithDescribedPlaceholders: Label 'Local %1 Label %2 in %3 CalledGlobalFunction; with comma, and semicolon in the end;', Comment = '%1 ph1, %2 ph2, %3 ph3; with comment and semicolon;';
        myLocalLabelWithPlaceholders: Label 'Local %1 Label %2 in %3 CalledGlobalFunction';
        myLocalLockedLabel: Label 'Local Locked Label in CalledGlobalFunction', Locked = true;
        myLocalLockedLabelWithDescribedPlaceholders: Label 'Local Locked %1 Label %2 in %3 CalledGlobalFunction', Locked = true, Comment = '%1 ph1, %2 ph2, %3 ph3';
        myLocalLockedLabelWithPlaceholders: Label 'Local Locked %1 Label %2 in %3 CalledGlobalFunction', Locked = true;
        myLocalFilter: Label '%1|%2|%3', Comment = '%1 filter1, %2 filter2, %3 filter3';
        myLocalFilterNoDescription: Label '%1|%2|%3';
        myLocalLockedFilter: Label '%1|%2|%3', Locked = true, Comment = '%1 filter1, %2 filter2, %3 filter3';
        myLocalLockedFilterNoDescription: Label '%1|%2|%3', Locked = true;
        myLocalLockedFilter2: Label '%1|%2|%3', Comment = '%1 filter1, %2 filter2, %3 filter3', Locked = true;
        myLocalLockedLabelWithDescribedPlaceholders2: Label 'Local Locked %1 Label %2 in %3 CalledLocalFunction', Comment = '%1 ph1, %2 ph2, %3 ph3', Locked = true;
    begin
        Message('hardcoded text in called global function');
        Message('hardcoded %1 text %2 with %3 placeholders in called global function', 'ph1', 'ph2', 'ph3');

        Message(myGlobalLabel);
        Message(myGlobalLockedLabel);
        Message(myGlobalLabelWithDescribedPlaceholders, 'ph1', 'ph2', 'ph3', 'ph4');
        Message(myGlobalLabelWithPlaceholders, 'ph1', 'ph2', 'ph3', 'ph4');
        Message(myGlobalLockedLabelWithDescribedPlaceholders, 'ph1', 'ph2', 'ph3', 'ph4');
        Message(myGlobalLockedLabelWithPlaceholders, 'ph1', 'ph2', 'ph3', 'ph4');

        Message(myLocalLabel);
        Message(myLocalLockedLabel);
        Message(myLocalLabelWithDescribedPlaceholders, 'ph1', 'ph2', 'ph3');
        Message(myLocalLabelWithPlaceholders, 'ph1', 'ph2', 'ph3');
        Message(myLocalLockedLabelWithDescribedPlaceholders, 'ph1', 'ph2', 'ph3');
        Message(myLocalLockedLabelWithPlaceholders, 'ph1', 'ph2', 'ph3');
        SalesLine.SetFilter("No.", '%1|%2|%3', 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myLocalFilter, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myLocalLockedFilter, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myLocalLockedFilterNoDescription, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myLocalFilterNoDescription, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myGlobalFilter, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myGlobalLockedFilter, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myGlobalLockedFilterNoDescription, 'filter1', 'filter2', 'filter3');
        SalesLine.SetFilter("No.", myGlobalFilterNoDescription, 'filter1', 'filter2', 'filter3');
    end;

    var
        myInt: Integer;
        myGlobalLabel: Label 'Global Label in Check Codeunit';
        myGlobalLabelWithDescribedPlaceholders: Label 'Global %1 Label %2 in %3 Check %4 Codeunit', Comment = '%1 ph1, %2 ph2, %3 ph3, %4 ph4';
        myGlobalLabelWithPlaceholders: Label 'Global %1 Label %2 in %3 Check %4 Codeunit';
        myGlobalLockedLabel: Label 'Global Locked Label in Check Codeunit', Locked = true;
        myGlobalLockedLabelWithDescribedPlaceholders: Label 'Global Locked %1 Label %2 in %3 Check %4 Codeunit', Locked = true, Comment = '%1 ph1, %2 ph2, %3 ph3, %4 ph4';
        myGlobalLockedLabelWithDescribedPlaceholders2: Label 'Global Locked %1 Label %2 in %3 Check %4 Codeunit', Comment = '%1 ph1, %2 ph2, %3 ph3, %4 ph4', Locked = true;
        myGlobalLockedLabelWithPlaceholders: Label 'Global Locked %1 Label %2 in %3 Check %4 Codeunit', Locked = true;
        myGlobalFilter: Label '%1|%2|%3', Comment = '%1 filter1, %2 filter2, %3 filter3';
        myGlobalFilterNoDescription: Label '%1|%2|%3';
        myGlobalLockedFilter: Label '%1|%2|%3', Locked = true, Comment = '%1 filter1, %2 filter2, %3 filter3';
        myGlobalLockedFilter2: Label '%1|%2|%3', Comment = '%1 filter1, %2 filter2, %3 filter3', Locked = true;
        myGlobalLockedFilterNoDescription: Label '%1|%2|%3', Locked = true;
}
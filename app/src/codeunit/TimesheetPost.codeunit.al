codeunit 50004 "TRE Timesheet-Post"
{
    trigger OnRun()
    begin
    end;

    var
        AdvPostedErr: Label 'You cannot cancel this Advance Timesheet for Employee Appointment No. %1, because after it the Salary Timesheet was posted. ', Comment = '%1 - Empl No.';
        AdvPostedMultErr: Label 'You cannot cancel this Advance Timesheet for Employee Appointment Nos. %1, because after it the Salary Timesheet was posted.', Comment = '%1 - Empl No.';
        ConfPostQst: Label 'Do you want to post the document?';
        CorrTimesheetCance1lErr: Label 'You cannot cancel this Correction Timesheet for Employee Appointment No. %1, because after it the another Correction Timesheet was posted.', Comment = '%1 - Empl No.';
        CorrTimesheetCance1lMultErr: Label 'You cannot cancel this Correction Timesheet for Employee Appointment Nos %1, because after it the another Correction Timesheet was posted.', Comment = '%1 - Empl No.';
        CorrTimesheetCancelErr: Label 'You cannot cancel this timesheet because there are entries with the further correction timesheet sequence in timesheet ledger entry for employee %1.\ \You should consistently cancel all timesheets that were posted later.', Comment = '%1 - Employee Appointment No.';
        CorrTimesheetCancelMultErr: Label 'You cannot cancel this timesheet because there are entries with the further correction timesheet sequence in timesheet ledger entry for employees %1.\ \You should consistently cancel all timesheets that were posted later.', Comment = '%1 - Employee Appointment No.';
        CorrTimesheetPostErr: Label 'The correction timesheet with this or further sequence has already been posted for Employee Appointment No. %1. It is necessary to update the timesheet for the posting.', Comment = '%1 - Empl No.';
        CorrTimesheetPostMultErr: Label 'The correction timesheets with this or further sequence have already been posted for Employee Appointment Nos. %1. It is necessary to update the timesheet for the posting.', Comment = '%1 - Empl No.';
        EmptyPostingDateErr: Label 'The Posting Date field is blank. Timesheet cannot be posted.';
        NothingToPostErr: Label 'There is nothing to post.';
        OpenAdvanceTimesheetsQst: Label 'For Employee Appointment Nos %1 Advance Timesheet for the current Payroll Period in the status Open. Do you want to post the Payroll Timesheet?', Comment = '%1 - Empl app. nos';
        OpenAdvanceTimesheetTxt: Label 'For Employee Appointment No. %1 Advance Timesheet for the current Payroll Period in the status Open. Do you want to post the Payroll Timesheet?', Comment = '%1 - Empl app. no';
        PostedSalaryTimesheetErr: Label 'You cannot post the Advance Timesheet, since the Salary Timesheet was already posted in this period for Employee Appointment No. %1.', Comment = '%1 - Empl app. no';
        PostedSalaryTimesheetsErr: Label 'You cannot post the Advance Timesheet, since the Salary Timesheet was already posted in this period for Employee Appointment Nos %1.', Comment = '%1 - Empl app. no';
        PostingDateErr: Label 'Posting date is in the closed payroll period. Timesheet cannot be posted.';
        SalaryTimesheetNotPostedErr: Label 'You cannot post this Correction Timesheet, because the Salary Timesheet has not yet been posted for Employee Appointment No. %1.', Comment = '%1 - Empl app. no';
        SalaryTimesheetNotPostedMultErr: Label 'You cannot post this Correction Timesheet, because the Salary Timesheet has not yet been posted for Employee Appointment Nos. %1.', Comment = '%1 - Empl app. no';
        SalPostedErr: Label 'You cannot cancel this Salary Timesheet for Employee Appointment No. %1, because after it the Correction Timesheet was posted.', Comment = '%1 - Empl app. no';
        SalPostedMultErr: Label 'You cannot cancel this Salary Timesheet for Employee Appointment Nos %1, because after it the Correction Timesheet was posted.', Comment = '%1 - Empl app. no';
}
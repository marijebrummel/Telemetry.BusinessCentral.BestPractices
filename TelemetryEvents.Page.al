page 69750 "PTE Telemetry Events"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "PTE Telemetry Event";

    layout
    {
        area(Content)
        {
            repeater(List)
            {
                field("Event ID"; Rec."Event ID") { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field(Disabled; Rec.Disabled) { ApplicationArea = All; }
                field("Default Verbosity"; Rec."Default Verbosity") { ApplicationArea = All; }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action(RunDefault)
            {
                ApplicationArea = All;
                Caption = 'Run Default';
                trigger OnAction()
                begin
                    Rec.RunDefaultQuery();
                end;
            }
        }
    }
}
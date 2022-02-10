page 69752 "PTE Telemetry User"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "PTE Telemetry User";

    layout
    {
        area(Content)
        {
            repeater(List)
            {
                field("User ID"; Rec."User ID") { ApplicationArea = All; }
                field("Log Verbosity"; Rec."Log Verbosity") { ApplicationArea = All; }
            }
        }
    }
}
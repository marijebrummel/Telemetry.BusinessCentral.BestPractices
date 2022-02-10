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
            repeater(GroupName)
            {
                field("Event ID"; Rec."Event ID")
                {
                    ApplicationArea = All;

                }
                field(Disabled; Rec.Disabled)
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}
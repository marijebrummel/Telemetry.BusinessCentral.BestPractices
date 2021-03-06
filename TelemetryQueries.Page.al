page 69751 "PTE Telemetry Queries"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "PTE Telemetry Query";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Code; Rec.Code) { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field(KQLQuery; Rec."KQL Query") { ApplicationArea = All; MultiLine = true; }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                Image = Start;

                trigger OnAction();
                begin
                    Rec.RunQuery();
                end;
            }
        }
    }
}
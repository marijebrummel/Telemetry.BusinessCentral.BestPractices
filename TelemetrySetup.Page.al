page 69740 "PTE Telemetry Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "PTE Telemetry Setup";
    Caption = 'Telemetry Setup';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Tenant Id"; Rec."Tenant Id") { ApplicationArea = All; }
                field("Subscription Id"; Rec."Subscription Id") { ApplicationArea = All; }
                field("Instance Name"; Rec."Instance Name") { ApplicationArea = All; }
                field("Resource Group"; "Resource Group") { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(Queries)
            {
                ApplicationArea = All;
                Caption = 'Queries';
                RunObject = page "PTE Telemetry Queries";
            }
            action(Events)
            {
                ApplicationArea = All;
                Caption = 'Events';
                RunObject = page "PTE Telemetry Events";
            }
            action(Users)
            {
                ApplicationArea = All;
                Caption = 'Users';
                RunObject = page "PTE Telemetry Users";
            }
        }
        area(Processing)
        {
            action(DefaultEvents)
            {
                ApplicationArea = All;
                Caption = 'Get Default Events';

                trigger OnAction()
                begin
                    Rec.GetDefaultEvents();
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
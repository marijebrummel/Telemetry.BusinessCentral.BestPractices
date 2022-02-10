table 69751 "PTE Telemetry Query"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20]) { DataClassification = CustomerContent; }
        field(2; Description; Text[50]) { DataClassification = SystemMetadata; }
        field(10; "KQL Query"; Text[2000]) { DataClassification = SystemMetadata; }
    }

    keys { key(Key1; Code) { Clustered = true; } }

    procedure RunQuery();
    var
        Setup: Record "PTE Telemetry Setup";
    begin
        Setup.Get();
        Hyperlink(Setup.GetURL("KQL Query"));
    end;

}
table 69751 "PTE Telemetry Query"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20]) { DataClassification = CustomerContent; }
    }

    keys
    {
        key(Key1; Code) { Clustered = true; }
    }

    procedure RunQuery();
    var
        Setup: Record "PTE Telemetry Setup";
    begin
        Setup.Get();
        Hyperlink(Setup.GetURL(''));
    end;

}
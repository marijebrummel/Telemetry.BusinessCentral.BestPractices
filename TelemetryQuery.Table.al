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
    begin
        Hyperlink('foo.com');
    end;

}
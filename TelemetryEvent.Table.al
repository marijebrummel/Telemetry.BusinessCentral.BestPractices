// TODO Add some manual sorting...
table 69750 "PTE Telemetry Event"
{
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Event ID"; Code[50])
        {
            DataClassification = SystemMetadata;
        }
        field(8; Disabled; Boolean) { DataClassification = SystemMetadata; }
    }

    keys
    {
        key(PK; "Event ID") { Clustered = true; }
    }



}
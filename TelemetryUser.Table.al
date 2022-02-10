table 69752 "PTE Telemetry User"
{
    DataClassification = EndUserIdentifiableInformation;

    fields
    {
        field(1; "User ID"; Code[50]) { DataClassification = EndUserIdentifiableInformation; }
        field(6; "Log Verbosity"; Option)
        {
            DataClassification = SystemMetadata;
            OptionMembers = Default,Verbose,Normal,Warning,Error,Critical;
        }
    }

    keys
    {
        key(PK; "User ID") { Clustered = true; }
    }


}
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
        field(2; Description; Text[250])
        {
            DataClassification = SystemMetadata;
        }
        field(8; Disabled; Boolean) { DataClassification = SystemMetadata; }
        field(13; "Default Verbosity"; Option)
        {
            OptionMembers = Verbose,Normal,Warning,Error,Critical;
        }
    }

    keys { key(PK; "Event ID") { Clustered = true; } }

    procedure GetQuery(): Text
    begin
        exit('Traces | ago(1hour) where customDimensions.eventId = ' + "Event ID");
    end;

    procedure RunDefaultQuery();
    var
        Setup: Record "PTE Telemetry Setup";
    begin
        Setup.Get();
        Message(Setup.GetURL(GetQuery()));
    end;


    procedure LogMsg(Msg: Text);
    begin
        case "Default Verbosity" of
            "Default Verbosity"::Verbose:
                LogMessage("Event ID", Msg, Verbosity::Verbose, DataClassification::SystemMetadata, TelemetryScope::ExtensionPublisher,
                    'EventDescription', Description);
            "Default Verbosity"::Normal:
                LogMessage("Event ID", Msg, Verbosity::Normal, DataClassification::SystemMetadata, TelemetryScope::ExtensionPublisher,
                    'EventDescription', Description);
            "Default Verbosity"::Warning:
                LogMessage("Event ID", Msg, Verbosity::Warning, DataClassification::SystemMetadata, TelemetryScope::ExtensionPublisher,
                    'EventDescription', Description);
            "Default Verbosity"::Error:
                LogMessage("Event ID", Msg, Verbosity::Error, DataClassification::SystemMetadata, TelemetryScope::ExtensionPublisher,
                    'EventDescription', Description);
            "Default Verbosity"::Critical:
                LogMessage("Event ID", Msg, Verbosity::Critical, DataClassification::SystemMetadata, TelemetryScope::ExtensionPublisher,
                    'EventDescription', Description);
        end

    end;

    procedure LogMsg(Msg: Text; Verb: Verbosity);
    begin
        if Disabled then
            exit;
        TestField("Event ID");
        LogMessage("Event ID", Msg, Verb, DataClassification::SystemMetadata, TelemetryScope::ExtensionPublisher,
            'EventDescription', Description);
    end;

}
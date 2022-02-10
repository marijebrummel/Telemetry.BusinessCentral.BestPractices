enum 69750 "PTE Telemetry Event" implements "PTE Telemetry Event"
{
    Extensible = true;
    DefaultImplementation = "PTE Telemetry Event" = "PTE Telemetry Event";
    value(18200012; RT0012) { }

}

interface "PTE Telemetry Event"
{
    procedure EventId(Value: Enum "PTE Telemetry Event"): Code[20]
    procedure EventDescription(Value: Enum "PTE Telemetry Event"): Text[30]
}

codeunit 69750 "PTE Telemetry Event" implements "PTE Telemetry Event"
{

    procedure EventId(Value: Enum "PTE Telemetry Event"): Code[20]
    begin
        exit(format(Value));
    end;

    procedure EventDescription(Value: Enum "PTE Telemetry Event"): Text[30]
    begin
        exit(format(Value));
    end;

}

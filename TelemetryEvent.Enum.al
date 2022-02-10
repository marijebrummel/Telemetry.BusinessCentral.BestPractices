enum 69750 "PTE Telemetry Event" implements "PTE Telemetry Event"
{
    Extensible = true;
    DefaultImplementation = "PTE Telemetry Event" = "PTE Telemetry Event";
    value(18200012; RT0012) { }

}

interface "PTE Telemetry Event"
{
    procedure EventId(): Code[20]
    procedure EventDescription(): Text[30]
}

codeunit 69750 "PTE Telemetry Event" implements "PTE Telemetry Event"
{

    procedure EventId(): Code[20]
    begin

    end;

    procedure EventDescription(): Text[30]
    begin

    end;

}

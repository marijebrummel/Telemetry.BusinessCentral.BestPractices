codeunit 67890 "PTE Telemetry API"
{
    procedure RunKQLQuery(TelemetryQuery: Record "PTE Telemetry Query")
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
    begin
        Client.DefaultRequestHeaders.Add('Authorization', StrSubstNo('Bearer %1', GetToken));
        Client.Get('https://api.applicationinsights.io/v1/apps/{appId}/query?query=' + TelemetryQuery."KQL Query" + '&timespan=' + '', Response);
    end;

    local procedure GetToken(): Text
    begin


    end;

    trigger OnRun()
    begin

    end;

    //GET 


    // Type: oauth2
    // Flow: implicit
    // Authorization URL: https://login.microsoftonline.com/common/oauth2/authorize?resource=https%3A%2F%2Fapi.applicationinsights.io

    var
        myInt: Integer;
}
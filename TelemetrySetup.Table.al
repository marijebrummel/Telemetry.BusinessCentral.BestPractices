table 69740 "PTE Telemetry Setup"
{
    DataClassification = OrganizationIdentifiableInformation;

    fields
    {
        field(1; "Primary Key"; Code[1]) { DataClassification = SystemMetadata; }
        field(10; "Tenant Id"; Text[40]) { DataClassification = OrganizationIdentifiableInformation; }
        field(12; "Subscription Id"; Text[40]) { DataClassification = OrganizationIdentifiableInformation; }
        field(15; "Resource Group"; Text[30]) { DataClassification = OrganizationIdentifiableInformation; }
        field(18; "Instance Name"; Text[30]) { DataClassification = OrganizationIdentifiableInformation; }


    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    procedure GetURL(KQLQuery: Text): Text
    begin
        exit(
            'https://portal.azure.com#@e' +
            "Tenant Id" +
            //#@TENANT_ID
            '/blade/Microsoft_Azure_Monitoring_Logs/LogsBlade/resourceId/%2Fsubscriptions%2F' +
            "Subscription Id" +
            '%2FresourceGroups%2F' +
            "Resource Group" +
            '%2Fproviders%2Fmicrosoft.insights%2Fcomponents%2F' +
            "Instance Name" +
            '/source/LogsBlade.AnalyticsShareLinkToQuery/q/' +
            EncryptKQL(KQLQuery) + // TODO Encrypt
            '/timespan/' +
            'PT30M');
    end;

    procedure GetDefaultEvents()
    var
        TelemetryEvent: Interface "PTE Telemetry Event";
        TelEvent: Record "PTE Telemetry Event";
        y: Enum "PTE Telemetry Event";
    begin
        foreach y in "PTE Telemetry Event".Ordinals() do begin
            TelemetryEvent := y;
            TelEvent."Event ID" := TelemetryEvent.EventId(y);
            TelEvent.Description := TelemetryEvent.EventDescription(y);
            TelEvent.Insert();
        end;
    end;

    local procedure EncryptKQL(Value: Text): Text
    var
        Base64: Codeunit "Base64 Convert";
        Zip: Codeunit "Data Compression";
        TempBlob: Codeunit "Temp Blob";
        TempBlob2: Codeunit "Temp Blob";
        is: InStream;
        os: OutStream;
    begin
        TempBlob.CreateOutStream(os);
        os.WriteText(value);
        TempBlob.CreateInStream(is);
        TempBlob2.CreateOutStream(os);
        Zip.GZipCompress(is, os);
        TempBlob2.CreateInStream(is);

        exit(Base64.ToBase64(is));
    end;
}
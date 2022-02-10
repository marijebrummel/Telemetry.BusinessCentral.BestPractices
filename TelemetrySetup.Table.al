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
        x: Integer;
    begin
        foreach x in "PTE Telemetry Event".Ordinals() do begin
            TelemetryEvent := "PTE Telemetry Event".FromInteger(x);
            //            TelEvent."Event ID" := TelemetryEvent.EventId();
            //          TelEvent.Description := TelemetryEvent.EventDescription();
            TelEvent.Insert();
        end;
    end;

    local procedure EncryptKQL(Value: Text): Text
    var
        Base64: Codeunit "Base64 Convert";
        Zip: Codeunit "Data Compression";
        TempBlob: Codeunit "Temp Blob";
        is: InStream;
        os: OutStream;
        Helper: Text;
    begin
        TempBlob.CreateInStream(is);
        TempBlob.CreateOutStream(os);
        os.WriteText(Value);
        Clear(os);
        TempBlob.CreateOutStream(os);
        Zip.GZipCompress(is, os);
        Clear(is);
        TempBlob.CreateInStream(is);
        is.ReadText(Value);
        exit(Base64.ToBase64(Value));

        // static string EncodedKQLQuery(string query)
        // {
        //     var bytes = System.Text.Encoding.UTF8.GetBytes(query);
        //     using (MemoryStream memoryStream = new MemoryStream())
        //     {
        //         using (GZipStream compressedStream = new GZipStream(memoryStream, CompressionMode.Compress, leaveOpen: true))
        //         {
        //             compressedStream.Write(bytes, 0, bytes.Length);
        //         }
        //         memoryStream.Seek(0, SeekOrigin.Begin);
        //         Byte[] data = memoryStream.ToArray();
        //         string encodedQuery = Convert.ToBase64String(data);
        //         return HttpUtility.UrlEncode(encodedQuery);
        //     }
        // }


    end;
}
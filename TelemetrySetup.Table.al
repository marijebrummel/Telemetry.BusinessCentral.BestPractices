table 69740 "PTE Telemetry Setup"
{
    DataClassification = OrganizationIdentifiableInformation;

    fields
    {
        field(1; "Primary Key"; Code[1]) { DataClassification = SystemMetadata; }
        field(10; "Tenant Id"; Text[20]) { DataClassification = OrganizationIdentifiableInformation; }
        field(12; "Subscription Id"; Text[20]) { DataClassification = OrganizationIdentifiableInformation; }
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
            'https://portal.azure.com/' +
            "Tenant Id" +
            //#@TENANT_ID
            '/ blade / Microsoft_Azure_Monitoring_Logs / LogsBlade / resourceId /%2Fsubscriptions%2F' +
            "Subscription Id" +
            '%2FresourceGroups%2F' +
            "Resource Group" +
            '%2Fproviders%2Fmicrosoft.insights%2Fcomponents%2F' +
            "Instance Name" +
            '/ source / LogsBlade.AnalyticsShareLinkToQuery / q /' +
            KQLQuery + // TODO Encrypt
            '/ timespan /' +
            'PT30M');
    end;
}
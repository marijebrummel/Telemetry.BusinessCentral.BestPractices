enum 69750 "PTE Telemetry Event" implements "PTE Telemetry Event"
{
    Extensible = true;
    DefaultImplementation = "PTE Telemetry Event" = "PTE Telemetry Event";
    value(100; AL0000CTV) { }
    value(101; AL0000CTE) { }
    value(102; AL0000CTP) { }
    value(103; AL0000DD3) { }
    value(104; AL0000EMW) { }
    value(105; AL0000E2A) { }
    value(106; AL0000E2B) { }
    value(107; AL0000E28) { }
    value(108; AL0000E29) { }
    value(109; AL0000E2C) { }
    value(110; AL0000E2D) { }
    value(111; AL0000E2E) { }
    value(112; AL0000E2F) { }
    value(113; AL0000D3L) { }
    value(114; AL0000D6H) { }
    value(115; AL0000D6I) { }
    value(116; AL0000D6J) { }
    value(117; AL0000E24) { }
    value(118; AL0000E25) { }
    value(119; AL0000E26) { }
    value(120; AL0000E3F) { }
    value(121; AL0000E3G) { }
    value(122; AL0000E3H) { }
    value(123; AL0000E3I) { }
    value(124; AL0000E3N) { }
    value(125; AL0000E3O) { }
    value(126; AL0000E3P) { }
    value(127; AL0000EJ9) { }
    value(128; AL0000EJA) { }
    value(10001; LC0001) { }
    value(10002; LC0002) { }
    value(10003; LC0003) { }
    value(10004; LC0004) { }
    value(10005; LC0005) { }
    value(10006; LC0006) { }
    value(10007; LC0007) { }
    value(10008; LC0008) { }
    value(10009; LC0009) { }
    value(10010; LC0010) { }
    value(10011; LC0011) { }
    value(10012; LC0012) { }
    value(10013; LC0013) { }
    value(10014; LC0014) { }
    value(10015; LC0015) { }
    value(10016; LC0016) { }
    value(10017; LC0017) { }
    value(10018; LC0018) { }
    value(10019; LC0019) { }
    value(10020; LC0020) { }
    value(10021; LC0021) { }
    value(10022; LC0022) { }
    value(10023; LC0023) { }
    value(10024; LC0024) { }
    value(10025; LC0025) { }
    value(10026; LC0026) { }
    value(10027; LC0027) { }
    value(10028; LC0028) { }
    value(10029; LC0029) { }
    value(10030; LC0030) { }
    value(10031; LC0031) { }
    value(10032; LC0032) { }
    value(10033; LC0033) { }
    value(10034; LC0034) { }
    value(10035; LC0035) { }
    value(10036; LC0036) { }
    value(10037; LC0037) { }
    value(10038; LC0038) { }
    value(10039; LC0040) { }
    value(10041; LC0041) { }
    value(10042; LC0042) { }
    value(10043; LC0043) { }
    value(10044; LC0044) { }
    value(10045; LC0045) { }
    value(100001; RT0001) { }
    value(100002; RT0002) { }
    value(100003; RT0003) { }
    value(100004; RT0004) { }
    value(100005; RT0005) { }
    value(100006; RT0006) { }
    value(100007; RT0007) { }
    value(100008; RT0008) { }
    value(100009; RT0010) { }
    value(100010; RT0011) { }
    value(100011; RT0012) { }
    value(100012; RT0013) { }
    value(100013; RT0014) { }
    value(100014; RT0015) { }
    value(100015; RT0016) { }
    value(100016; RT0017) { }
    value(100017; RT0018) { }
    value(100018; RT0019) { }
    value(100019; RT0020) { }
    value(100020; RT0021) { }

}

interface "PTE Telemetry Event"
{
    procedure EventId(Value: Enum "PTE Telemetry Event"): Code[20]
    procedure EventDescription(Value: Enum "PTE Telemetry Event"): Text
    procedure EventCategory(Value: Enum "PTE Telemetry Event"): Text[30]
}

codeunit 69750 "PTE Telemetry Event" implements "PTE Telemetry Event"
{

    procedure EventId(Value: Enum "PTE Telemetry Event"): Code[20]
    begin
        exit(format(Value));
    end;

    procedure EventCategory(Value: Enum "PTE Telemetry Event"): Text[30]
    begin
        case Value of
            Value::AL0000CTV:
                exit('Email');
            Value::AL0000CTE:
                exit('Field monitoring');
            Value::AL0000CTP:
                exit('Email');
            Value::AL0000DD3:
                exit('Field monitoring');
            Value::AL0000EMW:
                exit('Field monitoring');
            Value::AL0000E2A:
                exit('Permissions');
            Value::AL0000E2B:
                exit('Permissions');
            Value::AL0000E28:
                exit('Permissions');
            Value::AL0000E29:
                exit('Permissions');
            Value::AL0000E2C:
                exit('Permissions');
            Value::AL0000E2D:
                exit('Permissions');
            Value::AL0000E2E:
                exit('Permissions');
            Value::AL0000E2F:
                exit('Permissions');
            Value::AL0000D3L:
                exit('Retention Policy');
            Value::AL0000D6H:
                exit('Retention Policy');
            Value::AL0000D6I:
                exit('Retention Policy');
            Value::AL0000D6J:
                exit('Retention Policy');
            Value::AL0000E24:
                exit('Job Queue Lifecycle');
            Value::AL0000E25:
                exit('Job Queue Lifecycle');
            Value::AL0000E26:
                exit('Job Queue Lifecycle');
            Value::AL0000E3F:
                exit('Configuration Package');
            Value::AL0000E3G:
                exit('Configuration Package');
            Value::AL0000E3H:
                exit('Configuration Package');
            Value::AL0000E3I:
                exit('Configuration Package');
            Value::AL0000E3N:
                exit('Configuration Package');
            Value::AL0000E3O:
                exit('Configuration Package');
            Value::AL0000E3P:
                exit('Configuration Package');
            Value::AL0000EJ9:
                exit('Extension Lifecycle');
            Value::AL0000EJA:
                exit('Extension Lifecycle');
            Value::LC0001:
                exit('Company Lifecycle');
            Value::LC0002:
                exit('Company Lifecycle');
            Value::LC0003:
                exit('Company Lifecycle');
            Value::LC0004:
                exit('Company Lifecycle');
            Value::LC0005:
                exit('Company Lifecycle');
            Value::LC0006:
                exit('Company Lifecycle');
            Value::LC0007:
                exit('Company Lifecycle');
            Value::LC0008:
                exit('Company Lifecycle');
            Value::LC0009:
                exit('Company Lifecycle');
            Value::LC0010:
                exit('Extension Lifecycle');
            Value::LC0011:
                exit('Extension Lifecycle');
            Value::LC0012:
                exit('Extension Lifecycle');
            Value::LC0013:
                exit('Extension Lifecycle');
            Value::LC0014:
                exit('Extension Lifecycle');
            Value::LC0015:
                exit('Extension Lifecycle');
            Value::LC0016:
                exit('Extension Lifecycle');
            Value::LC0017:
                exit('Extension Lifecycle');
            Value::LC0018:
                exit('Extension Lifecycle');
            Value::LC0019:
                exit('Extension Lifecycle');
            Value::LC0020:
                exit('Extension Lifecycle');
            Value::LC0021:
                exit('Extension Lifecycle');
            Value::LC0022:
                exit('Extension Lifecycle');
            Value::LC0023:
                exit('Extension Lifecycle');
            Value::LC0024:
                exit('Table Index Lifecycle');
            Value::LC0025:
                exit('Table Index Lifecycle');
            Value::LC0026:
                exit('Extension Lifecycle');
            Value::LC0027:
                exit('Extension Lifecycle');
            Value::LC0028:
                exit('AppSource Submission');
            Value::LC0029:
                exit('AppSource Submission');
            Value::LC0030:
                exit('AppSource Submission');
            Value::LC0031:
                exit('AppSource Submission');
            Value::LC0032:
                exit('AppSource Submission');
            Value::LC0033:
                exit('AppSource Submission');
            Value::LC0034:
                exit('AppSource Submission');
            Value::LC0035:
                exit('AppSource Submission');
            Value::LC0036:
                exit('AppSource Submission');
            Value::LC0037:
                exit('AppSource Submission');
            Value::LC0038:
                exit('AppSource Submission');
            Value::LC0040:
                exit('Task Scheduler');
            Value::LC0041:
                exit('Task Scheduler');
            Value::LC0042:
                exit('Task Scheduler');
            Value::LC0043:
                exit('Task Scheduler');
            Value::LC0044:
                exit('Task Scheduler');
            Value::LC0045:
                exit('Task Scheduler');
            Value::RT0001:
                exit('Authorization');
            Value::RT0002:
                exit('Authorization');
            Value::RT0003:
                exit('Authorization');
            Value::RT0004:
                exit('Authorization');
            Value::RT0005:
                exit('Performance');
            Value::RT0006:
                exit('Report generation');
            Value::RT0007:
                exit('Report generation');
            Value::RT0008:
                exit('Incoming Web service requests');
            Value::RT0010:
                exit('Extension lifecycle');
            Value::RT0011:
                exit('Report generation');
            Value::RT0012:
                exit('Performance');
            Value::RT0013:
                exit('Performance');
            Value::RT0014:
                exit('Security');
            Value::RT0015:
                exit('Security');
            Value::RT0016:
                exit('Security');
            Value::RT0017:
                exit('Security');
            Value::RT0018:
                exit('Performance');
            Value::RT0019:
                exit('Outgoing Web service requests');
            Value::RT0020:
                exit('Web service key request');
            Value::RT0021:
                exit('Web service key request');
        end;
        exit('Unkown Category');
    end;

    procedure EventDescription(Value: Enum "PTE Telemetry Event"): Text
    begin
        case Value of
            Value::AL0000CTV:
                exit('Email sent successfully');
            Value::AL0000CTE:
                exit('Sensitive field value has changed: {alfieldCaption} ({alFieldNumber}) in table {altableCaption} ({alTableNumber})');
            Value::AL0000CTP:
                exit('Failed to send email');
            Value::AL0000DD3:
                exit('Sensitive field monitor status has changed to {almonitorStatus}');
            Value::AL0000EMW:
                exit('Sensitive field added to or removed from monitor: {alfieldCaption} ({alFieldNumber}) in table {alTableCaption} ({alTableNumber})');
            Value::AL0000E2A:
                exit('User-defined permission set added: {alPermissionSetId}');
            Value::AL0000E2B:
                exit('User-defined permission set removed: {alPermissionSetId}');
            Value::AL0000E28:
                exit('Permission set link added: {alSourcePermissionSetId} -> {alLinkedPermissionSetId}');
            Value::AL0000E29:
                exit('Permission set link removed: {alSourcePermissionSetId} -> {alLinkedPermissionSetId}');
            Value::AL0000E2C:
                exit('Permission set assigned to user: {alPermissionSetId}');
            Value::AL0000E2D:
                exit('Permission set removed from user: {alPermissionSetId}');
            Value::AL0000E2E:
                exit('Permission set assigned to user group: {alPermissionSetId}');
            Value::AL0000E2F:
                exit('Permission set removed from user group: {alPermissionSetId}');
            Value::AL0000D3L:
                exit('Retention Policy Log Entry Logged: {alMessageType}');
            Value::AL0000D6H:
                exit('Records Deleted Using Retention Policy: Deleted {alRecordsDeleted} records from Table {alTableNo}, {alTableName}');
            Value::AL0000D6I:
                exit('First retention policy enabled on: {alCompanyName}');
            Value::AL0000D6J:
                exit('Last retention policy disabled on: {alCompanyName}');
            Value::AL0000E24:
                exit('Job queue entry enqueued: {alJobQueueId}');
            Value::AL0000E25:
                exit('Job queue entry started: {alJobQueueId}');
            Value::AL0000E26:
                exit('Job queue entry finished: {alJobQueueId}');
            Value::AL0000E3F:
                exit('Configuration package export started: {alPackageCode}');
            Value::AL0000E3G:
                exit('Configuration package exported successfully: {alPackageCode}');
            Value::AL0000E3H:
                exit('Configuration package import started: {alPackageCode}');
            Value::AL0000E3I:
                exit('Configuration package imported successfully: {alPackageCode}');
            Value::AL0000E3N:
                exit('Configuration package apply started: {alPackageCode}');
            Value::AL0000E3O:
                exit('Configuration package applied successfully: {alPackageCode}');
            Value::AL0000E3P:
                exit('Configuration package deleted successfully: {alPackageCode}');
            Value::AL0000EJ9:
                exit('Upgrade tag searched for: {AlUpgradeTag}');
            Value::AL0000EJA:
                exit('Upgrade tag set: {AlUpgradeTag}');
            Value::LC0001:
                exit('Company created: {companyName}');
            Value::LC0002:
                exit('Company creation canceled: {companyName}');
            Value::LC0003:
                exit('Company creation failed: {companyName}');
            Value::LC0004:
                exit('Company copied: {companyNameSource} to {companyNameDestination}');
            Value::LC0005:
                exit('Company copied canceled: {companyNameSource} to {companyNameDestination}');
            Value::LC0006:
                exit('Company copy failed: {companyNameSource} to {companyNameDestination}');
            Value::LC0007:
                exit('Company deleted: {companyName}');
            Value::LC0008:
                exit('Company deletion canceled: {companyName}');
            Value::LC0009:
                exit('Company deletion failed: {companyName}');
            Value::LC0010:
                exit('Extension installed successfully: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0011:
                exit('Extension failed to install: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0012:
                exit('Extension synchronized successfully: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId}');
            Value::LC0013:
                exit('Extension failed to synchronize: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0014:
                exit('Extension published successfully: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0015:
                exit('Extension failed to publish: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0016:
                exit('Extension un-installed successfully: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0017:
                exit('Extension failed to un-install: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0018:
                exit('Extension unpublished successfully: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0019:
                exit('Extension failed to un-publish: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0020:
                exit('Extension compiled successfully: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0021:
                exit('Extension failed to compile: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0022:
                exit('Extension updated successfully: {extensionName} version {extensionVersion} by {extensionPublisher}');
            Value::LC0023:
                exit('Extension failed to update: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0024:
                exit('Index enabled: {tableName}');
            Value::LC0025:
                exit('Index disabled: {tableName}');
            Value::LC0026:
                exit('Dependent Extension installed successfully: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0027:
                exit('Dependent extension un-installed successfully: {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0028:
                exit('AppSource submission validation request started: {validationRequestId}');
            Value::LC0029:
                exit('AppSource submission validation request completed successfully: {validationRequestId}');
            Value::LC0030:
                exit('(Version, country-region) validation started: version {version}, country/region {countryRegion}');
            Value::LC0031:
                exit('(Version, country-region) validation completed successfully: version {version}, country/region {countryRegion}');
            Value::LC0032:
                exit('Extension validation started: version {version}, country/region {countryRegion} for extension {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0033:
                exit('Extension validation completed successfully: version {version}, country/region {countryRegion} for extension {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0034:
                exit('Validation diagnostic reported: version {version}, country/region {countryRegion} for extension {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0035:
                exit('AppSource submission validation request completed with failures: {validationRequestId}');
            Value::LC0036:
                exit('(Version, country-region) validation completed with failures: version {version}, country-region {countryRegion}');
            Value::LC0037:
                exit('Extension validation completed with failures: version {version}, country-region {countryRegion} for extension {extensionName} version {extensionVersion} by {extensionPublisher} ({extensionId})');
            Value::LC0038:
                exit('Diagnostic reported on AppSource submission validation request: {validationRequestId}');
            Value::LC0040:
                exit('Task {taskId} created: {codeunitObjectId} scheduled to run after {notBefore}. Ready to run: {isReady}');
            Value::LC0041:
                exit('Task {taskId} ready: {codeunitObjectId} set ready to run after {notBefore}.');
            Value::LC0042:
                exit('Task {taskId} removed: {codeunitObjectId}.');
            Value::LC0043:
                exit('Task {taskId} main/failure codeunit {codeunitObjectId} completed.');
            Value::LC0044:
                exit('Task {taskId} main/failure codeunit {codeunitObjectId} canceled.');
            Value::LC0045:
                exit('Task {taskId} main/failure codeunit {codeunitObjectId} failed.');
            Value::RT0001:
                exit('Authorization Failed (Pre Open Company): {failure reason}');
            Value::RT0002:
                exit('Authorization Failed (Open Company): {failure reason}');
            Value::RT0003:
                exit('Authorization Succeeded (Pre Open Company)');
            Value::RT0004:
                exit('Authorization Succeeded (Open Company)');
            Value::RT0005:
                exit('Operation exceeded time threshold (SQL query)');
            Value::RT0006:
                exit('Status Report generation');
            Value::RT0007:
                exit('Cancellation report generation');
            Value::RT0008:
                exit('Web service called ({category of request}): {endpoint}');
            Value::RT0010:
                exit('Extension Update Failed: exception raised in extension {extensionName} by {extensionPublisher} (updating to version {extensionTargetedVersion})');
            Value::RT0011:
                exit('Report cancelled but a commit occurred');
            Value::RT0012:
                exit('Database lock timed out');
            Value::RT0013:
                exit('Database lock snapshot: {snapshotId}');
            Value::RT0014:
                exit('App Key Vault initialization succeeded: {keyVaultUri}');
            Value::RT0015:
                exit('App Key Vault initialization failed');
            Value::RT0016:
                exit('App Key Vault secret retrieval succeeded from key vault {keyVaultUri}');
            Value::RT0017:
                exit('App Key Vault secret retrieval failed from key vault: {keyVaultUri}');
            Value::RT0018:
                exit('Operation exceeded time threshold (AL method)');
            Value::RT0019:
                exit('Web Service Called (Outgoing): {endpoint}');
            Value::RT0020:
                exit('Authentication with Web Service Key succeeded: {endpoint}');
            Value::RT0021:
                exit('Authentication with Web Service Key failed: {endpoint}');
        end;
        exit('Unknown Event');
    end;

}

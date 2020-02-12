param($Request, $TriggerMetadata)

Import-Module nameit

Push-OutputBinding -Name Response -Value @{
    StatusCode = "ok"
    Body       = '{"name":"' + (Invoke-Generate "[adjective]-[verb]").tolower() + '"}'
}
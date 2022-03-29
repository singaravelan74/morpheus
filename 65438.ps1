$RDM = "<%= customOptions.fnRdm %>"
$instancename = "<%= customOptions.fnInstanceName %>"
$deploycloud = "SACLA300-SACF102"
$ApplicationLocation = "SAC"
$Application = "ECMp"
$AppPriOwner = "Ram"
$AppSecOwner = "ED"
$AppScope = "Global"
$AppCategory = "Infra"
$AppCLLevel = "CL4"
$DatastoreName = "SAC-SACF102-NIMBLE-SACSA034-FC-HF-vol27"
$platform = "windows"
$os = "windows"
$osversion = "WS2019"
$serviceplan = "GP.Bronze"
$serverenvironment = "Prod"
$serverrole = "Application"
$shutdown_optin_optout = "No"
$snc_req_create = "RITM123"
$support_provided_by = "Wintel"
$noofdrives = "2"
$sizeofdrive = "70,8"

[Array]$sizeofdrives = $sizeofdrive -split ","

Start-Transcript C:\temp\$instancename.txt

$date = Get-Date -Format 'MM/dd/yyyy hh:mm:ss'
write-output "Instance Name is : $($instancename)"

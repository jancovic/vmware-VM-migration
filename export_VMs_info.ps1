
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
 
Connect-VIServer <source Vcenter> 

Get-VM -Server <source Vcenter>  | Select-Object -Property *, @{N="vmx";E={$_.extensiondata.config.files.vmpathname}} | Export-Csv export.csv -NoTypeInformation


## Script will export all VMs info to export.csv file.




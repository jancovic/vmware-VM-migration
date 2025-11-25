

$csv = Import-Csv export.csv
 
# Loop through each VLAN and create it in the vDS
foreach ($line in $csv){
$line.Name, $line.PowerState

get-vm -Name $line.Name

get-vm -Server <source Vcenter> -Name $line.Name  | Remove-VM -Confirm:$false -Verbose

}


## Script wll unregister ( remove from inventory ) all VMs mentioned in export.csv file in source Vcenter.



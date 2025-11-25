
Connect-VIServer <destination Vcenter>

$csv = Import-Csv export.csv
 
# Loop through each VM and register on new VC
foreach ($line in $csv){
$line.Name, $line.PowerState
New-VM -Server <destination Vcenter>  -VMFilePath $line.vmx -ResourcePool <Cluster Name>

}


## script will register all VMs mentioned in export.csv file to destination Vcenter,
## must be specified also Cluster Name in -ResourcePool <Cluster Name>





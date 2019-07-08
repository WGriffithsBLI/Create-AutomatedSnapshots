#Script sequentially take snapshots for a defined list of VMs.
#Developed by Will Griffiths Email: wgriffiths@huskynet.ca
#Version 1.0
#Sources used: https://www.petri.com/use-powercli-create-snapshot

#Specify vCenter
$VIServer = Read-Host -Prompt "Please specify target vCenter Server" 

#User prompted to provide Input and Output Files-
$SnapshotName = Read-Host -Prompt "Please enter Ticket reference number"
$TargetVMs = Read-Host -Prompt "Please specify target file path containing VM names to have snapshots taken"

#Initiate Connection to Target vCenter
Connect-VIServer $VIserver

#Create a snapshot sequentially with 10 second gaps for each VM in the txt file. 
foreach ($line in Get-Content $TargetVMs) {
    Get-VM $line | New-Snapshot -Name $SnapshotName -Description "Created $(Get-Date)" -RunAsync
    Start-Sleep -Seconds 10
}
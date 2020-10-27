[console]::CursorSize=25

$reservedIP = New-AzureReservedIP -ReservedIPName "sub.domain.com" -Location "West US"

# Define String: Cloud Service Name
$serviceName = "service" 
# Define String: Location that services will be hosts. use "Get-AzureLocation | select name"
$location = "West US"
# Define String: Reserved IP name. use "Get-AzureReservedIP"
$reservedIP = "sub.domain.com"
# Define String: Virtual Machine Name.
$vmName = "vm"
# Define String: Virtual Machine Size
$vmSize = "Small"
# Define String: VM Image. Use “Get-AzureVMImage | select ImageName”
$ImageName = "image"

$linuxUser = "root"
$Password = "password"



# Create Virtual Machine Config file.
# This does not create a VM, but is called on by the VM creation process

$vm1 = New-AzureVMConfig -Name $vmName –ImageName $ImageName -InstanceSize $vmSize | 
                Add-AzureProvisioningConfig -Linux -LinuxUser $linuxUser –Password $Password
				
#Command to Create VM                                                                                                                                            
New-AzureVM -ServiceName $serviceName -Location $location `
            -VMs $vm1 `
            -ReservedIPName $reservedIP # Specify the reserved IP address for the external 
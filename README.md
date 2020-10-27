Create new Azure VM with reserved IP from image
===============================================

            

Create new Azure VM ($vm1) with reserved IP ($reservedIP)  from image ($ImageName) at specified region ($location) of specified size ($vmSize).


The example code is for a Linux image that requires user ($linuxUser) and password ($Password) parameters.


I suggest you use '[console]::CursorSize=25' so that the cursor is visible in the Azure PowerShell terminal screen.


PLEASE NOTE '-Linux' switch in the 'New-AzureVMConfig' line - you will need to change that if it's NOT a Linux image you are deploying.


 

 

        
    
TechNet gallery is retiring! This script was migrated from TechNet script center to GitHub by Microsoft Azure Automation product group. All the Script Center fields like Rating, RatingCount and DownloadCount have been carried over to Github as-is for the migrated scripts only. Note : The Script Center fields will not be applicable for the new repositories created in Github & hence those fields will not show up for new Github repositories.

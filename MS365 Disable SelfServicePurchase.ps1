##########
# 
# MS365 Disable Self Service Products
# 
# Created by: Peter
# Created on: 2025-03-26
# Updated on: 2025-03-26
#
##########

# Check for the MSCommerce PowerShell module and install it if necessary
if(!(Get-Module -ListAvailable -Name MSCommerce)){
    Write-Host "MSCommerce module not detected!"
    # Relaunch the script with administrator privileges
    If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
	    Write-Host "Requesting admin rights..."
        Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $PSCommandArgs" -WorkingDirectory $pwd -Verb RunAs
	    Exit
    }

    Write-Host "Requesting installation..."
    Install-Module -Name MSCommerce
}

# Import the MSCommerce module, sign in, and disable all self service products
if(Get-Module -ListAvailable -Name MSCommerce){
    Write-Host "MSCommerce module detected!"
    Write-Host "Importing MSCommerce module..."
    Import-Module -Name MSCommerce

    Write-Host "Please sign in with a Global Admin account..."
    Start-Sleep -Seconds 2
    Connect-MSCommerce
    
    Write-Host "Getting list of self service products..."
    $productlist = Get-MSCommerceProductPolicies -PolicyId AllowSelfServicePurchase
    
    Write-Host "Disabling all products from the AllowSelfServicePurchase policy..."
    ForEach($product in $productlist){
        Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $product.ProductId -Value Disabled
    }
    
    Write-Host "All self-service products disabled!"
} else {
    Write-Host "MSCommerce module not installed."
}

Write-Host "Quitting in 5 seconds..."
Start-Sleep -Seconds 5
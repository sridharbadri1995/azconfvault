Connect-AzAccount

$subscriName = (Get-AzSubscription | Select-Object -First 1 | Format-Table -Property Name )  ; $subscriName

#Set-AzContext $subscriName

$rgname = "rg-azconfvault"

#New-AzResourceGroup -Location "Central US" -Name $rgname

# New-AzResourceGroupDeployment -ResourceGroupName $rgname -TemplateFile $templateFile -Name addoutput

New-AzDeployment -Location "Central US" -TemplateFile .\resourcegrouptemplate.json

New-AzResourceGroupDeployment -Location "Central US" -ResourceGroupName $rgname -TemplateFile .\webAppTemplate.json -TemplateParameterFile .\webAppTemplate.parameters.json


Get-AzADUser -Mail salempp@live.com # to get object ID in ID coloum GUID
#4df9e21c-66d2-4f4f-a73b-202a90a6b18e

Get-AzSubscription # to get Tenant ID in TenantId coloum GUID
#01b695ba-6326-4daf-a9fc-629432404139

$subscriTenantId = (Get-AzSubscription | Select-Object -First 1 | Format-Table -Property TenantId )  ; $subscriTenantId


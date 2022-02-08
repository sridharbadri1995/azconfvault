Connect-AzAccount

$subscriName = (Get-AzSubscription | Select-Object -First 1 | Format-Table -Property Name )  ; $subscriName

Set-AzContext $subscriName

$rgname = "rg-azconfvault"

#New-AzResourceGroup -Location "Central US" -Name $rgname

# New-AzResourceGroupDeployment -ResourceGroupName $rgname -TemplateFile $templateFile -Name addoutput

New-AzDeployment -Location "Central US" -TemplateFile .\resourcegrouptemplate.json

New-AzResourceGroupDeployment -Location "Central US" -ResourceGroupName $rgname -TemplateFile $templateFile .\webAppTemplate.json .\webAppTemplate.parameters.json






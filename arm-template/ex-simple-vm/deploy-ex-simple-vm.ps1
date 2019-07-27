Connect-AzAccount
Get-AzSubscription
$subscriptionName = ""
Select-AzureSubscription -SubscriptionName $subscriptionName

$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
$location = Read-Host -Prompt "Enter the location (i.e. centralus)"

New-AzResourceGroup -Name $resourceGroupName -Location $location
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName `
    -TemplateUri "https://raw.githubusercontent.com/ntkduy/azure-rds/master/arm-template/ex-simple-vm/azuredeploy.json?token=AELOBJXN4FP7VOK74AUCMR25HP5FW" `
    -TemplateParameterUri "https://raw.githubusercontent.com/ntkduy/azure-rds/master/arm-template/ex-simple-vm/azuredeploy.parameters.json?token=AELOBJWVTWFSF5YUDRGOBP25HP5HW"
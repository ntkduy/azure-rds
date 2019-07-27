Connect-AzAccount
Get-AzSubscription

$subscriptionID = "2397c805-80dd-493a-be4a-b8998e36b9f7"
Select-AzSubscription -Subscription $subscriptionID

$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
$location = Read-Host -Prompt "Enter the location (i.e. centralus)"

New-AzResourceGroup -Name $resourceGroupName -Location $location
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName `
    -TemplateUri "https://raw.githubusercontent.com/ntkduy/azure-rds/master/arm-template/ex-simple-vm/azuredeploy.json" `
    -TemplateParameterUri "https://raw.githubusercontent.com/ntkduy/azure-rds/master/arm-template/ex-simple-vm/azuredeploy.parameters.json"
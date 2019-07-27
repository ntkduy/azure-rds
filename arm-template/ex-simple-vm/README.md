# Create an group of three VMs within an Availability Set.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fntkduy%2Fazure-rds%2Fmaster%2Farm-template%2Fex-simple-vm%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<!-- <a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-load-balancer-standard-create%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a> -->

**This template provides an example for how to deploy an availability set with three VMs.**

The template creates and configures the following Azure resources:

- a Public IP Address
- a availability set
- a virtual network
- three NICs associated with the backend pool of the load balancer
- three virtual machines with each vm in a different zone


environment_name = "prod"
location         = "eastus2"

# AKS
aks_node_count   = 3
aks_node_vm_size = "Standard_DS3_v2" // Larger cluster for prod

# VM
vm_size = "Standard_DS2_v2"   // Larger VM for production
ssh_public_key = "ssh-rsa AAAA...prodKey" // Prod public key
os_disk_type   = "Premium_LRS" // Use premium disk for production

vnet_name = "sms-prod-vnet"
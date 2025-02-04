<<<<<<< HEAD
environment_name = "dev"
location         = "eastus"

# AKS
aks_node_count   = 1
aks_node_vm_size = "Standard_DS2_v2" 

# VM
vm_size = "Standard_B1s" // Example smaller size for dev
ssh_public_key = "ssh-rsa AAAA...devKey" // Dev public key
os_disk_type   = "Standard_LRS"         // Cheaper disk for dev

vnet_name = "sms-dev-vnet"
=======
environment_name = "dev"
location         = "eastus"
>>>>>>> refs/remotes/origin/main

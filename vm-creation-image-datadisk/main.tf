
# Create network interface
resource "azurerm_network_interface" "my_terraform_nic" {
  name                = var.nic_name
  location            = var.resource_group_location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = var.nic_config_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "example" {
  network_interface_id      = azurerm_network_interface.my_terraform_nic.id
  network_security_group_id = var.nsg_id
}



# Create virtual machine
resource "azurerm_linux_virtual_machine" "my_terraform_vm" {
  name                  = var.vm_name
  location              = var.resource_group_location
  resource_group_name   = var.rg_name
  network_interface_ids = [azurerm_network_interface.my_terraform_nic.id]
  size                  = var.vm_size

  source_image_id = var.image_id
  os_disk {
    name                 = var.os_disk_name
    caching              = var.osdisk_caching
    storage_account_type = var.storage_account_type
  }

  computer_name                   = var.vm_name
  admin_username                  = var.azure_user
  disable_password_authentication = true

  admin_ssh_key {
    username   = var.azure_user
    public_key = file(var.ssh_key_location)
  }
}

resource "azurerm_managed_disk" "data_disk" {
  name                 = var.data_disk_name 
  location             = var.resource_group_location
  resource_group_name  = var.rg_name
  storage_account_type = var.data_storage_account_type
  create_option        = "Empty"
  disk_size_gb         = var.data_disk_size
}

resource "azurerm_virtual_machine_data_disk_attachment" "example" {
  managed_disk_id    = azurerm_managed_disk.data_disk.id
  virtual_machine_id = azurerm_linux_virtual_machine.my_terraform_vm.id
  lun                = var.lun_number
  caching            = var.datadisk_caching
}

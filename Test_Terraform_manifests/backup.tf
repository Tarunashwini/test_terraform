terraform {
   backend "azurerm" {
    resource_group_name = "test_tarun_rg" 
    storage_account_name = "testtarunstorageaccount"
    container_name = "test-tarun-container"
    key = "tarun-test-app-service.terraform.tfstate"
   
  }
}
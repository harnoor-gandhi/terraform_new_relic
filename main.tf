module "module1" {
  source  = "./child_module/browser_monitor"
  browser = var.data_browser

}

module "module2"{
    source="./child_module/api_monitor"
    api= var.data_api
}
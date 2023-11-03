terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.27.4"
    }
  }
}
 
provider "newrelic" {
  # Configuration options
  account_id = 4183933
  api_key    = "NRAK-XLXC0VARGPD5LYO06XW5Z1LO214"
  region     = "US"
}
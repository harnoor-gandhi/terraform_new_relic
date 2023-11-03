data_browser = {
  1 : {
    status           = "ENABLED"
    name             = "browser_monitor1"
    type             = "SCRIPT_BROWSER"
    locations_public = ["AP_SOUTH_1", "AP_EAST_1"]
    period           = "EVERY_HOUR"

    enable_screenshot_on_failure_and_script = false

    script = ("./child_module/api_monitor/file1.js")


    runtime_type_version = "100"
    runtime_type         = "CHROME_BROWSER"
    script_language      = "JAVASCRIPT"


  },
  2 : {
    status           = "ENABLED"
    name             = "browser_monitor2"
    type             = "SCRIPT_BROWSER"
    locations_public = ["AP_SOUTH_1", "AP_EAST_1"]
    period           = "EVERY_HOUR"

    enable_screenshot_on_failure_and_script = true

    script = ("./child_module/api_monitor/file2.js")

    runtime_type_version = "100"
    runtime_type         = "CHROME_BROWSER"
    script_language      = "JAVASCRIPT"

  }
}

data_api = {
  1 : {
    status           = "ENABLED"
    name             = "api_monitor3"
    type             = "SCRIPT_API"
    locations_public = ["AP_SOUTH_1", "AP_EAST_1"]
    period           = "EVERY_6_HOURS"

    script = ("./child_module/api_monitor/file1.js")

    script_language      = "JAVASCRIPT"
    runtime_type         = "NODE_API"
    runtime_type_version = "16.10"

  },
  2 : {
    status           = "ENABLED"
    name             = "api_monitor4"
    type             = "SCRIPT_API"
    locations_public = ["AP_SOUTH_1", "AP_EAST_1"]
    period           = "EVERY_DAY"

    script = ("./child_module/api_monitor/file2.js")

    script_language      = "JAVASCRIPT"
    runtime_type         = "NODE_API"
    runtime_type_version = "16.10"

  }

}

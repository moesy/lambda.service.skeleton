
module "lambda" {
        source                  = "./lambda"
        app_name                = "${var.app_name}"
        app_region		= "${var.app_region}"
        auth_profile		= "${var.auth_profile}"
        auth_credentials_file	= "${var.auth_credentials_file}"
}



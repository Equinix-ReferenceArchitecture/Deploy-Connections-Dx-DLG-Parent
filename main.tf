module "Deploy-DualNE2AWS-DualMetro-Parent" {
  source ="github.com/Equinix-ReferenceArchitecture/Deploy-Child-DualNE2AWS-VC.git"

equinix_client_id     = var.equinix_client_id
equinix_client_secret = var.equinix_client_secret
notifications = var.notifications
authentication_key    = var.authentication_key
seller_region         = var.seller_region
seller_region_sec = var.seller_region_sec
profile_uuid          = var.profile_uuid
aws_access_key = var.aws_access_key
aws_secret_key = var.aws_secret_key
aws_zside_seller_region = var.aws_zside_seller_region
bandwidth_1 = var.bandwidth_1
bandwidth_2 = var.bandwidth_2
purchase_order = var.purchase_order
Interface_AWS_VC_1 = var.Interface_AWS_VC_1
Interface_AWS_VC_2 = var.Interface_AWS_VC_2
Pri_AWS_Region = var.Pri_AWS_Region
Sec_AWS_Region = var.Sec_AWS_Region

}

module "Deploy-Redundant-DLG-Parent" {
  source = "github.com/Equinix-ReferenceArchitecture/Deploy-Child-Redundant-DLG.git"

equinix_client_id     = var.equinix_client_id
equinix_client_secret = var.equinix_client_secret
account_number = var.account_number
project_id = var.project_id
Pri-DLG_name = var.Pri-DLG_name
Sec-DLG_name = var.Sec-DLG_name
PriDLG_InterfacenumberNE1 = var.PriDLG_InterfacenumberNE1
PriDLG_InterfacenumberNE2 = var.PriDLG_InterfacenumberNE2
PriDLG-bandwidth-NE1 = var.PriDLG-bandwidth-NE1
PriDLG-bandwidth-NE2 = var.PriDLG-bandwidth-NE2
NE1-Metro = var.NE1-Metro
NE2-Metro = var.NE2-Metro
SecDLG_InterfacenumberNE1 = var.SecDLG_InterfacenumberNE1
SecDLG_InterfacenumberNE2 = var.SecDLG_InterfacenumberNE2
SecDLG-bandwidth-NE1 = var.SecDLG-bandwidth-NE1
SecDLG-bandwidth-NE2 = var.SecDLG-bandwidth-NE2

}

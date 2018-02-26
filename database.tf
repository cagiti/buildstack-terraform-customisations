module "bosh-db" {
  source = "github.com/migs/terraform-gcp-database"
  project = "${var.project_id}"
  region = "${var.region}"
  authorized_network_0 = "${module.terraform-gcp-natgateway.nat-gateway-ips["0"]}"
  authorized_network_1 = "${module.terraform-gcp-natgateway.nat-gateway-ips["0"]}"
  authorized_network_2 = "${module.terraform-gcp-natgateway.nat-gateway-ips["0"]}"
}

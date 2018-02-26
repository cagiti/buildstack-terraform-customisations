module "bosh-db" {
  source = "github.com/migs/terraform-gcp-database"
  project = "${var.project}"
  region = "${var.region}"
  authorized_network_0 = "${module.terraform-gcp-natgateway.nat-gateway-ips["0"]}"
}

module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.8.0"
  gcp_project = "my-gcp-jx-proj"
  cluster_name = "my-jx-cluster"
}

terraform {
  backend "gcs" {
    bucket = "jx-terraform-state-files"
	prefix = "terraform/state"
  }
}
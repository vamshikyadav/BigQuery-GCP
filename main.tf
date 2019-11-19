  #bellow is the code calling the module to create the terraform
  provider "google" {
  #uncomment below to use the service key file  
  #credentials = "${file("Key.json")}" 
}

module "bigquery" {
  source            = "terraform-google-modules/bigquery/google" # Path to the module
  dataset_id        = "dataset_id"
  dataset_name      = "include_dataset_name"
  description       = "sample-Bigquery" # updated the description accordingly
  project_id        = var.project_id
  tables            = var.tables
  time_partitioning = var.time_partitioning
  dataset_labels    = var.dataset_labels
} 
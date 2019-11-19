#Update with the project you are deploying module to
project_id = "Enter the project id here" 

#Time that 
time_partitioning = "DAY" 

#The labels for dataset being deployed
dataset_labels = {
  env   = "dev"
  billable   = "true"
  owner = "vamshi"
}

#List of the tables that you are 
tables = [
  {
    table_id = "table_name",
    schema = "sample_bq_schema.json",
    labels = {
      env = "dev"
      billable = "true"
      owner = "vamshi"
    },
  },
]
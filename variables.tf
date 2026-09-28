variable "create_s3_bucket" {
  type        = bool
  default     = true
  description = "Enabling or disabling the creatation of an S3 bucket for AWS MWAA"
}

variable "create_iam_role" {
  type        = bool
  default     = true
  description = "Enabling or disabling the creatation of a default IAM Role for AWS MWAA"
}

variable "additionals_managed_policy_arns" {
  type        = list(any)
  default     = []
  description = "List of managed policies to attach to the MWAA IAM role"
}

variable "additionals_policy_documents" {
  type        = list(any)
  default     = []
  description = "List of JSON IAM policy documents to attach to the MWAA IAM role"
}

variable "iam_policy_description" {
  type        = string
  default     = "Permissions for the Amazon MWAA execution role"
  description = "The description of the IAM policy created for AWS MWAA"
}

variable "iam_role_description" {
  type        = string
  default     = "Execution role for the Amazon MWAA environment"
  description = "The description of the IAM role created for AWS MWAA"
}

variable "source_bucket_arn" {
  type        = string
  default     = null
  description = "If `create_s3_bucket` is `false` then set this to the Amazon Resource Name (ARN) of your Amazon S3 storage bucket."
}

variable "execution_role_arn" {
  type        = string
  default     = ""
  description = "If `create_iam_role` is `false` then set this to the target MWAA execution role"
}

variable "airflow_configuration_options" {
  type        = any
  default     = null
  description = "The Airflow override options"
}

variable "airflow_version" {
  type        = string
  default     = ""
  description = "Airflow version of the MWAA environment, will be set by default to the latest version that MWAA supports."
}

variable "dag_s3_path" {
  type        = string
  default     = "dags"
  description = "The relative path to the DAG folder on your Amazon S3 storage bucket."
}

variable "environment_class" {
  type        = string
  default     = "mw1.small"
  description = "Environment class for the cluster. Possible options are mw1.small, mw1.medium, mw1.large."
}

variable "kms_key" {
  type        = string
  default     = null
  description = "The Amazon Resource Name (ARN) of your KMS key that you want to use for encryption. Will be set to the ARN of the managed KMS key aws/airflow by default."
}

variable "max_workers" {
  type        = number
  default     = 10
  description = "The maximum number of workers that can be automatically scaled up. Value need to be between 1 and 25."
}

variable "min_workers" {
  type        = number
  default     = 1
  description = "The minimum number of workers that you want to run in your environment."
}

variable "max_webservers" {
  type        = number
  default     = 2
  description = "The maximum number of web servers that you want to run in your environment."
}

variable "min_webservers" {
  type        = number
  default     = 2
  description = "The minimum number of web servers that you want to run in your environment."
}

variable "schedulers" {
  type        = number
  default     = 2
  description = "The number of schedulers that you want to run in your environment."
}

variable "plugins_s3_object_version" {
  type        = string
  default     = null
  description = "The plugins.zip file version you want to use."
}

variable "plugins_s3_path" {
  type        = string
  default     = null
  description = "The relative path to the plugins.zip file on your Amazon S3 storage bucket. For example, plugins.zip. If a relative path is provided in the request, then plugins_s3_object_version is required"
}

variable "requirements_s3_object_version" {
  type        = string
  default     = null
  description = "The requirements.txt file version you"
}

variable "requirements_s3_path" {
  type        = string
  default     = null
  description = "The relative path to the requirements.txt file on your Amazon S3 storage bucket. For example, requirements.txt. If a relative path is provided in the request, then requirements_s3_object_version is required"
}

variable "webserver_access_mode" {
  type        = string
  default     = "PRIVATE_ONLY"
  description = "Specifies whether the webserver should be accessible over the internet or via your specified VPC. Possible options: PRIVATE_ONLY (default) and PUBLIC_ONLY."
}

variable "weekly_maintenance_window_start" {
  type        = string
  default     = null
  description = "Specifies the start date for the weekly maintenance window."
}

variable "dag_processing_logs_enabled" {
  type        = bool
  default     = false
  description = "Enabling or disabling the collection of logs for processing DAGs"
}

variable "dag_processing_logs_level" {
  type        = string
  default     = "INFO"
  description = "DAG processing logging level. Valid values: CRITICAL, ERROR, WARNING, INFO, DEBUG"
}

variable "scheduler_logs_enabled" {
  type        = bool
  default     = false
  description = "Enabling or disabling the collection of logs for the schedulers"
}

variable "scheduler_logs_level" {
  type        = string
  default     = "INFO"
  description = "Schedulers logging level. Valid values: CRITICAL, ERROR, WARNING, INFO, DEBUG"
}

variable "task_logs_enabled" {
  type        = bool
  default     = false
  description = "Enabling or disabling the collection of logs for DAG tasks"
}

variable "task_logs_level" {
  type        = string
  default     = "INFO"
  description = "DAG tasks logging level. Valid values: CRITICAL, ERROR, WARNING, INFO, DEBUG"
}

variable "webserver_logs_enabled" {
  type        = bool
  default     = false
  description = "Enabling or disabling the collection of logs for the webservers"
}

variable "webserver_logs_level" {
  type        = string
  default     = "INFO"
  description = "Webserver logging level. Valid values: CRITICAL, ERROR, WARNING, INFO, DEBUG"
}

variable "worker_logs_enabled" {
  type        = bool
  default     = false
  description = "Enabling or disabling the collection of logs for the workers"
}

variable "worker_logs_level" {
  type        = string
  default     = "INFO"
  description = "Workers logging level. Valid values: CRITICAL, ERROR, WARNING, INFO, DEBUG"
}

variable "subnet_ids" {
  type        = list(string)
  description = "The private subnet IDs in which the environment should be created. MWAA requires two subnets"
}

variable "startup_script_s3_path" {
  type        = string
  default     = null
  description = "The relative path to the script hosted in your bucket. The script runs as your environment starts before starting the Apache Airflow process."
}

variable "startup_script_s3_object_version" {
  type        = string
  default     = null
  description = "The version of the startup shell script you want to use. You must specify the version ID that Amazon S3 assigns to the file every time you update the script."
}

variable "create_timeout" {
  type        = string
  default     = "120m"
  description = "Timeout for creating the environment. AWS documents environment creation as taking about twenty to thirty minutes."
}

variable "update_timeout" {
  type        = string
  default     = "90m"
  description = "Timeout for updating the environment. An Apache Airflow version change is documented as taking up to two hours, and a graceful worker replacement drains for up to twelve hours."
}

variable "delete_timeout" {
  type        = string
  default     = "90m"
  description = "Timeout for deleting the environment."
}

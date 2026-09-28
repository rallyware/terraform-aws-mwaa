variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones for VPC subnets"
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "webserver_access_mode" {
  type        = string
  description = "Specifies whether the webserver should be accessible over the internet or via your specified VPC. Possible options: PRIVATE_ONLY (default) and PUBLIC_ONLY."
}

variable "airflow_configuration_options" {
  type        = any
  description = "Airflow override options"
}

variable "airflow_version" {
  type        = string
  description = "Airflow version of the MWAA environment, will be set by default to the latest version that MWAA supports."
}

variable "dag_s3_path" {
  type        = string
  description = "The relative path to the DAG folder on your Amazon S3 storage bucket."
}

variable "environment_class" {
  type        = string
  description = "Environment class for the cluster. Possible options are mw1.small, mw1.medium, mw1.large."
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

variable "max_workers" {
  type        = number
  default     = 10
  description = "The maximum number of workers that can be automatically scaled up. Value needs to be between 1 and 25"
}

variable "min_workers" {
  type        = number
  default     = 1
  description = "The minimum number of workers that you want to run in your environment."
}

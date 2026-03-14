variable "eks_version" {
  description = "Desired Kubernetes master version."
  type        = string
}
variable "eks_id" {
  description = "EKS ID. Numeric ID (1-5) to identify this EKS implementation"
  type        = number
}
variable "subnet_ids" {
  description = "List of subnet IDs. Must be in at least two different availability zones."
  type        = list(string)
}
variable "node_iam_policies" {
  description = "List of IAM Policies to attach to EKS-managed nodes."
  type        = map(any)
  default = {
    1 = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
    2 = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
    3 = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    4 = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  }
}
variable "enable_irsa" {
  description = "Determines whether to create an OpenID Connect Provider for EKS to enable IRSA"
  type        = bool
  default     = true
}
variable "on-demand-node-groups" {
  description = "EKS node groups"
  type        = map(any)
}
variable "spot-instance-node-groups" {
  description = "EKS node groups"
  type        = map(any)
}
variable "addons" {
  type = list(object({
    name = string
  }))
}
variable "stage" {
  description = "Development stage. Use either dev/test/acc/prod"
  type        = string
}
variable "country_code" {
  description = "Country code, specifies for which country this environment is being run. (e.g. ken/tz/ug)"
  type        = string
}

variable "project" {
  description = "Project name"
  type        = string
}
variable "owner" {
  description = "Team that owns the project"
  type        = string
}

variable "application" {
  description = "The application name"
  type        = string
}


locals {
  environment = "${lower(var.country_code)}-${lower(var.stage)}"
  prefix      = "xp-${local.environment}"
  # EKS cluster prefix
  eks_prefix = "${local.prefix}-eks"

  # EKS cluster name
  eks_cluster_name = "${local.eks_prefix}-${var.eks_id}"

  tags = {
    Owner       = var.owner
    Stage       = var.stage
    Country     = var.country_code
    Project     = var.project
    Application = var.application
  }

}
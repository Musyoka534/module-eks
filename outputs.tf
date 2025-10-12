output "eks_name" {
  value = aws_eks_cluster.this.name

}
output "openid_provider_arn" {
  value = aws_iam_openid_connect_provider.this[0].arn
}
output "cluster_security_group_id" {
  value = aws_eks_cluster.this.vpc_config[0].cluster_security_group_id
}

output "oidc_provider_url" {
  value = aws_iam_openid_connect_provider.this[0].url
}
output "cluster_endpoint" {
  value = aws_eks_cluster.this.endpoint
}

output "cluster_certificate_authority_data" {
  value = aws_eks_cluster.this.certificate_authority[0].data
}
output "cluster_token" {
  value     = data.aws_eks_cluster_auth.this.token
  sensitive = true
}



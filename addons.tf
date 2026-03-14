# AddOns for EKS Cluster
resource "aws_eks_addon" "eks-addons" {
  for_each     = { for idx, addon in var.addons : idx => addon }
  cluster_name = aws_eks_cluster.this.name
  addon_name   = each.value.name
  depends_on = [
    aws_eks_node_group.on-demand-nodes,
    aws_eks_node_group.spot-node
  ]
}
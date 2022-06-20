resource "aws_eks_addon" "kube_proxy" {
  cluster_name      = var.cluster_name
  addon_name        = "kube-proxy"
  addon_version     = "v1.21.2-eksbuild.2"
  resolve_conflicts = "OVERWRITE"
}
resource "aws_eks_addon" "core_dns" {
  cluster_name      = var.cluster_name
  addon_name        = "coredns"
  addon_version     = "v1.8.4-eksbuild.1"
  resolve_conflicts = "OVERWRITE"
}



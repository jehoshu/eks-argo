resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = "3.35.4"
  values           = [file("values/argocd.yml")]
}

# C:\\Users\\jehos\\Documents\\migdal\\argo-cd-setup\\values\\argocd.yml
# helm install argocd -n argocd -f values/argocd.yml

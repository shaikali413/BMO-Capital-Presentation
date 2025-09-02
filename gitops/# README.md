# README.md

## ArgoCD Installation

1. **Install ArgoCD in your Kubernetes cluster:**
   ```sh
   kubectl create namespace argocd
   kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
   ```

---

## FluxCD Installation

1. **Install Flux CLI:**
   - [Download Flux CLI](https://fluxcd.io/docs/installation/#install-the-flux-cli)

2. **Bootstrap FluxCD to your cluster:**
   ```sh
   flux install
   ```

3. **Verify installation:**
   ```sh
   kubectl get pods -n flux-system
   ```

4. **Set up GitOps repository:**
   - Follow [FluxCD documentation](https://fluxcd.io/docs/get-started/) to connect your Git repository.

---

## References

- [ArgoCD Documentation](https://argo-cd.readthedocs.io/en/stable/getting_started/)
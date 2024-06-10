# flux-kustomize

<!-- From flux-infras -->

Bootstrap flux to sync Kustomize overlays with a Kubernetes cluster. Based on the official GitLab [walk-through].

The client uses GitLab so that's the current target. This can easily be reconfigured to use GitHub.

The GitLab walk-through process works. Some of the code associated with it no longer does. This repo is an attempt to correct/simplify that.

## Prerequisites

* Create a cluster
  * minikube will work until there are requirements for
    * LoadBalancers
    * Storage oddities
* Create a repo (or fork this one)
* Create a token; either:
  * A deploy token (recommended), or
  * An Access Token
* Install flux

```bash
brew install fluxcd/tap/flux
```

---

## Bootstrap flux

Based on the prerequisites above, edit the script and bootstrap flux:

```bash
./flux-inst.sh
```

## Next Steps

Deploy a [kustom-app].

<!-- External Refs/Docs -->

[walk-through]:https://youtu.be/EjPVRM-N_PQ?si=ugPB5moSZid2jJSq
[kustom-app]:https://github.com/todd-dsm/kustom-app
#!/usr/bin/env bash
# shellcheck disable=SC2317
#  PURPOSE: This script installs FluxCD and bootstraps it to a GitLab repo.
# -----------------------------------------------------------------------------
#  PREREQS: a) Create a new repo and copy the URL.
#                The repo name only has to make sense to you.
#                Replace 'flux-kustomize' with your repo name below.
#                Replace 'gitops-demo-stage' with your cluster name below.
#           b) Create a new GitLab 'Deploy Token' with 'api' and 'read_repository' scopes.
#           c)
# -----------------------------------------------------------------------------
#  EXECUTE: ./flux-inst.sh
# -----------------------------------------------------------------------------
#     TODO: 1)
#           2)
#           3)
# -----------------------------------------------------------------------------
#   AUTHOR: Todd E Thomas
# -----------------------------------------------------------------------------
#  CREATED: 2024/05/01
# -----------------------------------------------------------------------------
set -x


###----------------------------------------------------------------------------
### VARIABLES
###----------------------------------------------------------------------------
# ENV Stuff
#: "${1?  Wheres my first agument, bro!}"

# Data


###----------------------------------------------------------------------------
### FUNCTIONS
###----------------------------------------------------------------------------
function pMsg() {
    theMessage="$1"
    printf '%s\n' "$theMessage"
}


###----------------------------------------------------------------------------
### MAIN PROGRAM
###----------------------------------------------------------------------------
### Is FluxCD currently installed?
###---
if ! type -p flux; then
    pMsg "Installing FluxCD..."
    brew reinstall fluxcd/tap/flux
else
    pMsg "FluxCD is already installed"
fi


###---
### Perform the pre-check
###---
pMsg "Verifying the cluster meets FluxCD requirements..."
flux check --pre


###---
### Install/configure with the repo
###---
pMsg "Bootstrapping FluxCD..."
flux bootstrap gitlab \
  --token-auth \
  --owner=vstthomas \
  --repository=flux-kustomize \
  --branch=main \
  --path=clusters/gitops-demo-stage \
  --hostname=gitlab.com \

exit


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### fin~
###---
exit 0

#!/usr/bin/env bash
# shellcheck disable=SC2317
#  PURPOSE: Description
# -----------------------------------------------------------------------------
#  PREREQS: a)
#           b)
#           c)
# -----------------------------------------------------------------------------
#  EXECUTE:
# -----------------------------------------------------------------------------
#     TODO: 1)
#           2)
#           3)
# -----------------------------------------------------------------------------
#   AUTHOR: Todd E Thomas
# -----------------------------------------------------------------------------
#  CREATED: 2024/00/00
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
  --repository=flux-infras \
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

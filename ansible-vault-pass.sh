#!/bin/bash

_BW_ENTRY_ID="vc4all-ansible-vault-pass"
_bw_session="$(bw unlock --raw)"
echo "$(bw get password ${_BW_ENTRY_ID} --session ${_bw_session} --raw)"

#!/bin/bash

_BW_ENTRY_ID="ber.pam.vc4all.nl"
_bw_session="$(bw unlock --raw)"
echo "$(bw get password ${_BW_ENTRY_ID} --session ${_bw_session} --raw)"

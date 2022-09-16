#!/bin/bash

#set -x

ScriptDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${ScriptDir}/vars_roms.sh"
source "${ScriptDir}/functions.sh"

list_roms_dirs

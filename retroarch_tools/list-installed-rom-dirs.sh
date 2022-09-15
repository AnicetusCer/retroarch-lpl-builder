#!/bin/bash

#set -x

ScriptDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${ScriptDir}/vars_roms"
source "${ScriptDir}/functions"

list_roms_dirs

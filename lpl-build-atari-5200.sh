#!/bin/bash

#set -x

ScriptDir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${ScriptDir}/vars_cores.sh"
source "${ScriptDir}/vars_roms.sh"
source "${ScriptDir}/vars_playlists.sh"
source "${ScriptDir}/functions.sh"
RetroMachine="Atari - 5200"
TargetCore="${core_a5200}"
TargetCoreName="${core_a5200_name}"
TargetRomDir="${Atari5200}"
TargetLplFile="${PlaylistsDir}/${RetroMachine}.lpl"

echo "$RetroMachine"
check_if_rom_dir_exists "${TargetRomDir}"
lpl_build_header > "${TargetLplFile}"
generate_atari5200_image_list_from "${TargetRomDir}"
FCount="$(wc -l $TempRomsList | awk '{print $1}')"
NCount=1
printf "Total Entries: $FCount\n"
while read -r ImageFilePath
do
  ImageFileName=$(awk -F/ '{print $NF}' <<< $ImageFilePath)
  FileExt=$(awk -F. '{print "."$NF}' <<< "${ImageFileName}")
  LabelName=$(sed "s|${FileExt}$||" <<< "${ImageFileName}")
  if [ $NCount -lt $FCount ]
  then
    lpl_build_entry_generic "${ImageFilePath}" >> "${TargetLplFile}"
    let NCount++
  else
    lpl_build_last_entry_generic "${ImageFilePath}"  >> "${TargetLplFile}"
    let NCount++
  fi
  printf "\rGenerating Entry: $((${NCount}-1))"
done < "$TempRomsList"
printf "\nDone\n"
lpl_build_footer >> "${TargetLplFile}"

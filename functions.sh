list_installes_core_dirs()
{
ls -1 $CoresDir
}

list_roms_dirs()
{
ls -1 $RomsDir
}

generate_atari2600_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.a26" -o -iname "*.bin" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_atari5200_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.xfd" -o -iname "*.atr" -o -iname "*.atx" -o -iname "*.cdm" -o -iname "*.cas" -o -iname "*.bin" -o -iname "*.a52" -o -iname "*.xex" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_atari7800_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.a78" -o -iname "*.bin" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_atarist_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.st" -o -iname "*.msa" -o -iname "*.zip" -o -iname "*.stx" -o -iname "*.dim" -o -iname "*.ipf" \) -print > $TempRomsList
}

generate_vectrx_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.vec" -o -iname "*.bin" \) -print > $TempRomsList
}

generate_segamegadrive_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.bin" -o -iname "*.gen" -o -iname "*.smd" -o -iname "*.md" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_necpcenginercdsupergrafx_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.zip" -o -iname "*.pce" -o -iname "*.sgx" -o -iname "*.cue" -o -iname "*.ccd" -o -iname "*.chd" \) -print > $TempRomsList
}

generate_3doco3do_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.iso" -o -iname "*.bin" -o -iname "*.chd" -o -iname "*.cue" \) -print > $TempRomsList
}

generate_nintendogb_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.gb" -o -iname "*.gbc" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_nintendosnes_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.smc" -o -iname "*.sfc" -o -iname "*.swc" -o -iname "*.fig" -o -iname "*.bs" -o -iname "*.st" \) -print > $TempRomsList
}

generate_playstation2_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.elf" -o -iname "*.iso" -o -iname "*.ciso" -o -iname "*.chd" -o -iname "*.cso" -o -iname "*.bin" -o -iname "*.mdf" -o -iname "*.nrg" -o -iname "*.dump" -o -iname "*.gz" -o -iname "*.img" -o -iname "*.m3u"  \) -print > $TempRomsList
}

generate_saturn_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.cue" -o -iname "*.toc" -o -iname "*.m3u" -o -iname "*.ccd" -o -iname "*.chd" \) -print > $TempRomsList
}

lpl_build_header()
{
printf '{
  "version": "1.5",
  "default_core_path": "'"${TargetCore}"'",
  "default_core_name": "'"${TargetCoreName}"'",
  "label_display_mode": 0,
  "right_thumbnail_mode": 0,
  "left_thumbnail_mode": 0,
  "sort_mode": 0,
  "items": [
'
}

lpl_build_entry_generic()
{
RomFilePath="$1"
printf '    {
      "path": "'"${RomFilePath}"'",
      "label": "'"${LabelName}"'",
      "core_path": "DETECT",
      "core_name": "DETECT",
      "crc32": "",
      "db_name": "'"${TargetLplFile}"'"
    },
'
}

lpl_build_last_entry_generic()
{
RomFilePath="$1"
printf '    {
      "path": "'"${RomFilePath}"'",
      "label": "'"${LabelName}"'",
      "core_path": "DETECT",
      "core_name": "DETECT",
      "crc32": "",
      "db_name": "'"${TargetLplFile}"'"
    }
'
}

lpl_build_footer()
{
printf '  ]
}
'
}

make_rome_label_by_removing_file_ext()
{
# This is now defunct leave here for notes
FileExt=$(awk -F. '{print "."$NF}' <<< "${RomFile}")
LabelName=$(sed "s|${FileExt}$||" <<< "${RomFile}")
#LabelName=$(sed "s|\...*$||" <<< "${RomFile}")
}

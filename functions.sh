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
find "${TargetDir}" -type f \( -iname "*.a78" -o -iname "*.bin" -o -iname "*.zip" -o -iname "*.7z" \) -print > $TempRomsList
}

generate_atarijaguar_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.j64" -o -iname "*.jag" -o -iname "*.rom" -o -iname "*.abs" -o -iname "*.cof" -o -iname "*.bin" -o -iname "*.prg" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_atarilynx_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.lnx" -o -iname "*.o" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_atarist_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.st" -o -iname "*.msa"-o -iname "*.stx" -o -iname "*.dim" -o -iname "*.ipf" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_necpcenginercdsupergrafx_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.pce" -o -iname "*.sgx" -o -iname "*.cue" -o -iname "*.ccd" -o -iname "*.chd" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_3doco3do_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.iso" -o -iname "*.bin" -o -iname "*.chd" -o -iname "*.cue" \) -print > $TempRomsList
}

generate_nintendo3ds_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.3ds" -o -iname "*.3dsx"  -o -iname "*.3dsx" -o -iname "*.elf" -o -iname "*.axf" -o -iname "*.cci" -o -iname "*.cxi" -o -iname "*.app" -o -iname "*.zip" -o -iname "*.7z" \) -print > $TempRomsList
}

generate_nintendods_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.nds" -o -iname "*.dsi" -o -iname "*.zip" -o -iname "*.7z" \) -print > $TempRomsList
}

generate_nintendogb_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.gb" -o -iname "*.gbc" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_nintendogbc_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.gb" -o -iname "*.gbc" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_nintendogba_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.gb" -o -iname "*.gbc" -o -iname "*.gba" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_nintendogc_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.gcm" -o -iname "*.iso" -o -iname "*.wbfs" -o -iname "*.ciso" -o -iname "*.gcz" -o -iname "*.elf" -o -iname "*.dol" -o -iname "*.dff" -o -iname "*.tgc" -o -iname "*.wad" -o -iname "*.rvz" -o -iname "*.m3u" -o -iname "*.wia" \) -print > $TempRomsList
}

generate_nintendones_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.nes" -o -iname "*.fds" -o -iname "*.unf" -o -iname "*.unif" \) -print > $TempRomsList
}

generate_nintendon64_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.n64" -o -iname "*.v64" -o -iname "*.z64" -o -iname "*.bin" -o -iname "*.u1" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_nintendovb_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.vb" -o -iname "*.vboy" -o -iname "*.bin" \) -print > $TempRomsList
}

generate_nintendosnes_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.smc" -o -iname "*.sfc" -o -iname "*.swc" -o -iname "*.fig" -o -iname "*.bs" -o -iname "*.st" \) -print > $TempRomsList
}

generate_segadreamcast_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.chd" -o -iname "*.cdi" -o -iname "*.bin" -o -iname "*.cue" -o -iname "*.gdi" -o -iname "*.lst" -o -iname "*.dat" -o -iname "*.m3u" -o -iname "*.zip" -o -iname "*.7z" \) -print > $TempRomsList
}

generate_segamegadrive_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.bin" -o -iname "*.gen" -o -iname "*.smd" -o -iname "*.md" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_sega32x_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.bin" -o -iname "*.gen" -o -iname "*.gg" -o -iname "*.smd" -o -iname "*.pco" -o -iname "*.md" -o -iname "*.32x" -o -iname "*.chd" -o -iname "*.cue" -o -iname "*.iso" -o -iname "*.sms" -o -iname "*.68k" -o -iname "*.sgd" -o -iname "*.m3u" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_segacd_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.bin" -o -iname "*.gen" -o -iname "*.gg" -o -iname "*.smd" -o -iname "*.pco" -o -iname "*.md" -o -iname "*.32x" -o -iname "*.chd" -o -iname "*.cue" -o -iname "*.iso" -o -iname "*.sms" -o -iname "*.68k" -o -iname "*.sgd" -o -iname "*.m3u" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_segasms_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.sms" -o -iname "*.bin" -o -iname "*.rom" -o -iname "*.col" -o -iname "*.gg" -o -iname "*.sg" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_segagg_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.sms" -o -iname "*.gg" -o -iname "*.sg" -o -iname "*.bin" -o -iname "*.rom" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_segasg1000_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.sms" -o -iname "*.gg" -o -iname "*.sg" -o -iname "*.bin" -o -iname "*.rom" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_segasaturn_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.cue" -o -iname "*.toc" -o -iname "*.m3u" -o -iname "*.ccd" -o -iname "*.chd" \) -print > $TempRomsList
}

generate_snkngp_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.ngp" -o -iname "*.ngc" -o -iname "*.ngpc" -o -iname "*.npc" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_snkngpc_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.ngp" -o -iname "*.ngc" -o -iname "*.ngpc" -o -iname "*.npc" -o -iname "*.zip" \) -print > $TempRomsList
}

generate_sonyplaystation_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.exe" -o -iname "*.psexe" -o -iname "*.cue" -o -iname "*.bin" -o -iname "*.img" -o -iname "*.iso" -o -iname "*.chd" -o -iname "*.pbp" -o -iname "*.ecm" -o -iname "*.mds" -o -iname "*.psf" -o -iname "*.m3u" \) -print > $TempRomsList
}

generate_sonyplaystation2_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.elf" -o -iname "*.iso" -o -iname "*.ciso" -o -iname "*.chd" -o -iname "*.cso" -o -iname "*.bin" -o -iname "*.mdf" -o -iname "*.nrg" -o -iname "*.dump" -o -iname "*.img" -o -iname "*.m3u" -o -iname "*.gz" \) -print > $TempRomsList
}

generate_sonypsp_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.elf" -o -iname "*.iso" -o -iname "*.cso" -o -iname "*.prx" -o -iname "*.pbp" \) -print > $TempRomsList
}

generate_vectrx_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.vec" -o -iname "*.bin" \) -print > $TempRomsList
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

check_if_rom_dir_exists()
{
CheckDir="$1"
  if [ ! -d "$CheckDir" ]
  then
   echo "Notice: "${CheckDir}" not found, no playlist created for this retromachine."
   echo "done"
   exit
  fi
}

make_rom_label_by_removing_file_ext()
{
# This is now defunct leave here for notes
FileExt=$(awk -F. '{print "."$NF}' <<< "${RomFile}")
LabelName=$(sed "s|${FileExt}$||" <<< "${RomFile}")
#LabelName=$(sed "s|\...*$||" <<< "${RomFile}")
}

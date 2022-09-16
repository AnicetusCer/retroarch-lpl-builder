# Set the location of the base roms directory location, being the location where all your console directories are held, this variable will be used by the console directory variables below to build the full path of your rom locations for each system.
RomsDir=/home/deck/roms

# Below you need to set where your roms are kept, one location per console
# Nb. If you have spaces in your console directory name quote the entry using singe quotes. Eg. SegaMS=$RomsDir/'Sega-MasterSystem-Mark III' not SegaMS=$RomsDir/Sega-MasterSystem-Mark III
# Nb2. If expanding this script or changing the name of a variable don't use hyphens in the variable name itself Eg. "Atari2600=$RomsDir/some/dir" not "Atari-2600=$RomsDir/some/dir" bash does not like this.
#
# Atari - 2600
Atari2600=$RomsDir/Atari-2600
# Atari - 5200
Atari5200=$RomsDir/Atari-5200
# Atari - 7800
Atari7800=$RomsDir/Atari-7800
# Atari - Jaguar
AtariJaguar=$RomsDir/Atari-Jaguar
# Atari - Lynx
AtariLynx=$RomsDir/Atari-Lynx
# Atari - ST
AtariST=$RomsDir/Atari-ST
# Atari - STE
# Atari - TT
# Atari - Falcon
# GCE - Vectrex
Vectrex=$RomsDir/Vectrex
# NEC - PC Engine
NECPCEngine=$RomsDir/NEC-PCEngine
# NEC - PC Engine CD 
# NEC - PC Enginer SuperGrafx
# NEC - PC-8000 series
# NEC - PC-98 series
# NEC - PC-FX series
# Nintendo - 3DS
Nintendo3DS=$RomsDir/Nintendo-3DS
# Nintendo - DS
NintendoDS=$RomsDir/Nintendo-DS
# Nintendo - Game Boy
NintendoGB=$RomsDir/Nintendo-GameBoy
# Nintendo - Game Boy Color
NintendoGBC=$RomsDir/Nintendo-GameBoyColor
# Nintendo - Game Boy Advance
NintendoGBA=$RomsDir/Nintendo-GameBoyAdvance
# Nintendo - Gamecube
NintendoGC=$RomsDir/Nintendo-GameCube
# Nintendo - NES / Famicom
NintendoNES=$RomsDir/Nintendo-NintendoEntertainmentSystem
# Nintendo - Nintendo 64
NintendoN64=$RomsDir/Nintendo-N64
# Nintendo - SNES / SFC
NintendoSNES=$RomsDir/Nintendo-SuperNintendoEntertainmentSystem
# Nintendo - Virtual Boy
NintendoVB=$RomsDir/Nintendo-VirtualBoy
# Philips - CDi
# Sega - Dreamcast / NAOMI
SegaDreamcast=$RomsDir/Sega-Dreamcast
# Sega - Mega Drive / Genesis
SegaMD=$RomsDir/Sega-MegaDrive-Genesis
# Sega - 32x
Sega32X=$RomsDir/Sega-32X
# Sega - CD
SegaCD=$RomsDir/Sega-Sega-CD
# Sega - Master System
SegaMS=$RomsDir/'Sega-MasterSystem-Mark III'
# Sega - Game Gear
SegaGG=$RomsDir/Sega-GameGear
# Sega - SG-1000
SegaSG1000=$RomsDir/Sega-sg-1000
# Sega - Saturn
SegaSaturn=$RomsDir/Sega-Saturn
# Sega - STV
# Sharp - x68000
# Sharp - X1
# SNK - Neo Geo CD
# SNK - Neo Geo Pocket
SNKNGP=$RomsDir/SNK-NEOGEOPocket
# SNK - Neo Geo Pocket Color
SNKNGPC=$RomsDir/SNK-NEOGEOPocketColour
# Sony - Playstation
SonyPSX=$RomsDir/Sony-Playstation
# Sony - Playstation 2
SonyPSX2=$RomsDir/Sony-Playstation2
# Sony - Playstation Portable
SonyPSP=$RomsDir/Sony-PSP
# 3DO Company - 3DO
ThreeDOC3DO=$RomsDir/3DOCompany-3DO

# Below are temp file locations used for roms, you just don't need to change these , unless you are using a really odd version of linux that does not have a /tmp directory as standard. 
TempRomsList=/tmp/.tmpromslist
TempImageFilesList=/tmp/.tmpimagefileslist
TempImageFileRef=/tmp/.tmpimagefileref

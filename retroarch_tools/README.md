###Bash lpl builder script utility.  
Warning: This lpl build tool will simpily overwrite any existing .lpl files for any targeted system, you may want to backup any existing .lpl playlists you currently have. you have been warned on line 1.
  
##Intro  
Hello All  
I got a little bit peaved off with the retroarch need to build lpls from database references of known good images. The goal is laudible but world is very imperfect and people often have there own bad or simpily unreferenced copies of their games. So I wrote this simple utility to help build lpl lists for retroarch bases only on the file names in a given target directory.  
  
I'm not the greatest scripter in the world there are probably a hundred efficencies and improvments that could be made, but for now this achives my goals of using only bash.
  
## Expectations
Most people organise there roms into system dedicated directories, these scripts expect you do the same. 
For example:  
./megadrive  
  game1.md  
  game2.md  
./snes  
  game1.snes  
  game2.snes  
  
It does not matter what you call the rom directories or where you put them , these locations will be added to the  variables files when setting up.

# General script workflow
Once the variables are setup, the workflow is pretty straight forward, It will generate/overwrite a playlist file for the scripts target core, the script will then proceed to use a find command to look for all files in the targer rom directory of extention types that the target core will accept. A stanza is then generated for the filename in the .lpl playlist. As part of the entry generation the name of the file will be used for the name of the retroarch playlist entry, the extention will be stripped from the name to make it look more pretty. Eg.
A file named: Super Mario All-Stars (u).snes
would become: Super Mario All-Stars (u)
Like wise:
A file named: Rom-118293.zip
would become: Rom-118293

If you have badly named files, this is what will get listed in retroarch.
  
## Getting started  
# Setting Variables  

#The first thing you will need to do is tell the scripts where retroarch locations are:  
  
#To start you'll probably only need to set the location of where retroarch installs cores for your system.
Edit the ./var_cores file  
Set the retroarach cores directory variable:
  CoresDir=/path/to/retroarch/install/cores/directory  
  
#Tell the scripts where the retroarch playlists directory is
Edit the ./vars_playlists file
Set the retroarch plalists directory location variable:
  PlaylistsDir=/path/to/retroarch/install/cores/directory  
  
# Tell the scripts where all your roms are located.  
Edit the ./vars_roms file  
Set the base directory of where all your roms are strored.   
  RomsDir=/home/deck/roms  
Following this you will then need to update the individual directory locations for each system the way you have named those directories, for example:  
if you have snes roms held in a direcotry called "Nintendo SNES"  
you would change the default line  
from:  
  NintendoSNES=$RomsDir/Nintendo-SuperNintendoEntertainmentSystem  
to:  
  NintendoSNES=$RomsDir/'Nintendo SNES'  
Notice the use of singe quotes when a directory has a space in its name.  
  
# Core variable tweaking.  
I have set some very commonly used cores in the var_cores file, but if you prefer another core, change the core by setting the *_core_name and *_core variables to match the libretro library and core name currently installed on your system. Note, the offical names that retroarch team use for cores can be found in the retroarch git repo config files.  
  
# Running the scripts   
Warning: This lpl build tool will simpily overwrite any existing .lpl files for a given system, you may want to backup what you have already.   
Now we have finished the task of setting our variables set we just need to select a script to run. I have written one script per system, there is little difference in operation from one script to another, I split it up this way to allow the writing of minor tweaks per system and to make sure the write file types are looked for.  
  
example script run:  
```  
./lpl-build-atari-2600  
Total Entries: 3  
Generating Entry: 3  
Done  
```  
    
## Advanced users:
# What if you don't have a script for my core :(
Chillax, most of the functionality of these scripts is nearly identical, to add a new core you can figure it out from an existing script. Here are the step I took to add a script for gameboy roms
- copy an existing script.
cp lpl-build-atari-2600 lpl-build-gb
- Edit the copied files variables:
Here you can see I swap out the orginal atari 2600 variables and replace them with Nintendo GB variable entries i have in the var_cores and var_roms files. 
Nb. I get accurate "RetroMachine" names from https://github.com/libretro/libretro-database/tree/master/rdb

Original variables lines:
RetroMachine="Atari - 2600"
TargetCore="${core_stella2014}"
TargetCoreName="${core_stella2014_name}"
TargetRomDir="${Atari2600}"

New variables lines:
RetroMachine="Nintendo - Game Boy"
TargetCore="${core_sameboy}"
TargetCoreName="${core_sameboy_name}"
TargetRomDir="${NintendoGB}"

Now all that needs to be done is to write a new function to help us look up the correct file extentions from for the gb core, in this case i'm using sameboy which allows .gb , .gbc and .zip extenstions.
There are plenty of other examples in the functions file, just copy one of the existing stanzas, rename the function and modify the extntion lookups in the find command.

```
generate_nintendogb_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.gb" -o -iname "*.gbc" -o -iname "*.zip" \) -print > $TempRomsList
}
```

Now we have a new find function replace the existing function name in the script

Original function line:
generate_atari2600_image_list_from ${TargetRomDir}

New function line:
generate_nintendogb_image_list_from ${TargetRomDir}

Thats it, with just 5 name changes and the addition of a new find function to lookup the correct extention types for our GB core we are done, you can now run this script to generate a new .lpl for the gameboy.

## Happy lpl building.

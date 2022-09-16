# retroarch-lpl-builder

A utility to generate retroarch lpl playlists based on the rom files found in a users retromachine rom folders.

Warning: This lpl build tool will simpily overwrite any existing .lpl files for any targeted system, you may want to backup any existing .lpl playlists you currently have. you have been warned at the top of the readme.
  
## Intro

Hello All  
I got a little bit peaved off with the retroarch need to build lpl's from database references of known good images. The goal is laudible but world is very imperfect and people often have their own bad or simpily unreferenced copies of their games. So I wrote this simple utility to help build lpl lists for retroarch based only on the file names in a given retromachine rom directory.  
  
I'm not the greatest scripter in the world there are probably a hundred efficencies and improvments that could be made, but for now this achives my goals of using only bash and associated commands.
This will work on linux and should work on windows using windows subsytems for linux or a linux runtime emulator, like mobaXterm, Cygwin, MingGw-w64.
  
## Expectations

Most people organise their roms into system dedicated directories, these scripts expect that you do the same.
For example:  
./megadrive  
  game1.md  
  game2.md  
./snes  
  game1.snes  
  game2.snes  
  
It does not matter what you call the rom directories or where you put them on the local system, you will add these locations to the var_roms.sh file file when setting up.

## General script workflow

The first thing to do is setup your variable files, once the variable files are setup which is basically setting a bunch of file locations. You can then run one of 
the "lpl-build-{system}" scripts.  
The scripts all start with the prefix "lpl-build" followed by an idication of which retromachine they will generate a playlist for.
Eg.  
lpl-build-snes  
will generate a playlist in retroarch from the roms files it finds in your snes roms folder.  
The scripts workflow is pretty straight forward, it generates a new playlist file for the scripts targeted retromachine. It will then proceed to populate the playlist file (retroarch's .lpl files) by generating an entry for every rom file it finds in the scripts targeted rom directory.  
The find functions (found in the "./functions" file) will make sure the script will only process files of the extention types supported by the retromachines core/s.  
The script will use the filename of the rom as the playlist entry name but the extention will be stripped.
Eg.  
A file named: Super Mario All-Stars (u).snes  
would become: Super Mario All-Stars (u)  
Likewise:  
A file named: Rom-118293.zip  
would become: Rom-118293  

So If you have badly named files, you will get a poor looking retroarch playlist.
  
## Getting started  

### Setting Variables  

The first thing you will need to do is tell the scripts where retroarch locations are:  
  
To start set the location of where retroarch installs cores for your system.  
Edit the ./var_cores file  
Set the retroarach cores directory variable:  
  CoresDir=/path/to/retroarch/install/cores  
  
### Tell the scripts where the retroarch playlists directory is  

Edit the ./vars_playlists file  
Set the retroarch plalists directory location variable:  
  PlaylistsDir=/path/to/retroarch/playlists  
  
### Tell the scripts where all your roms are located  
  
Edit the ./vars_roms file  
Set the base directory of where all your roms are stored  
  RomsDir=/home/deck/roms  
Following this you will then need to update the individual directory locations for each retromachine the way you have named those directories, for example:  
if you have snes roms held in a direcotry called "Nintendo SNES"  
you would change the line  
from:  
  NintendoSNES=$RomsDir/Nintendo-SuperNintendoEntertainmentSystem  
to:  
  NintendoSNES=$RomsDir/'Nintendo SNES'  
Notice the use of singe quotes when a directory has a space in its name.  
  
### Core variable tweaking

I have created variables for all the most common cores and barring name changes and additions, you should not need to changed them.
They are however very useful as a reference when creating new lpl-build scripts. As each pair of core variables is places under a comment with the retromachine it is associated with.
It should be fairly obvious how to add a new core variables or make ammendments by add or changeing the \*_core_name and \*_core variables to match the libretro library and core name currently installed on your system.  
Note, the offical names that retroarch team use for cores can be found in the retroarch git repo config files here:  
<https://github.com/libretro/libretro-super/tree/master/dist/info>.  
  
## Running the scripts

Warning again: This lpl build tool will simpily overwrite any existing .lpl files for a given retromachine, you may want to backup any existing lpl files you have.  
Now we have finished the task of setting our variables, we just need to select a script to run. I have written the scripts per per retromachine, there is almost no ifference in operation from one script to another. This is a concious decision to help make it simple for end users and to allow the writing of minor tweaks per system if needed.  
  
example script run:
  
```bash

./lpl-build-atari-2600
Total Entries: 3
Generating Entry: 3
Done

```  
  
## Advanced users

## But what if you don't have a script for my core? :(  

Chillax, most of the functionality of these scripts is nearly identical, to add a new core you can figure it out from an existing script. Here are the step I took to add a script for gameboy roms  

- copy an existing script.  
  
```bash

cp lpl-build-atari-2600 lpl-build-gb

```  

- Edit the copied files variables:  

Here you can see I swap out the orginal atari 2600 variables and replace them with Nintendo GB variable entries i have in the var_cores and var_roms files.  
  
Original variables lines:  

```bash

RetroMachine="Atari - 2600"
TargetCore="${core_stella2014}"
TargetCoreName="${core_stella2014_name}"
TargetRomDir="${Atari2600}"

```

New variables lines:  

```bash

RetroMachine="Nintendo - Game Boy"
TargetCore="${core_sameboy}"
TargetCoreName="${core_sameboy_name}"
TargetRomDir="${NintendoGB}"

```

Now all that needs to be done is to write a new function to help us look up the correct file extentions from for the gb core we'll use, in this case i'm using sameboy which allows the extentions types .gb , .gbc and .zip extenstions. Feel free to add any other extention types you wish to use.
There are plenty of other examples in the functions file, just copy one of the existing retromachine find stanzas, rename the function and modify the extention lookups in the find command.  

```bash

generate_nintendogb_image_list_from()
{
TargetDir="$1"
find "${TargetDir}" -type f \( -iname "*.gb" -o -iname "*.gbc" -o -iname "*.zip" \) -print > $TempRomsList
}

```

Now we have a new find function called "generate_nintendogb_image_list_from" for the gameboy roms, we now replace the existing function call in the script.  

Original function line:  

```bash

generate_atari2600_image_list_from ${TargetRomDir}

```

New function line:  

```bash

generate_nintendogb_image_list_from ${TargetRomDir}

```

Thats it, by copying an existing script, writing a new find function, and modifying 5 lines, you can now run this script to generate a new .lpl for the gameboy.

## Happy lpl building

# Pseudoregalia Map Starter Project

<img src="https://github.com/user-attachments/assets/662be33d-3c17-4d6b-a70c-e93a4b74d64f" width="45%">

Use this Unreal project to create custom maps for Pseudoregalia.

### Instructions

1. Install Unreal Engine 5.1.1 using the Epic Games Launcher
1. Open this project
1. Make changes (for more details, see the section below)
1. Run deploy.bat
    1. Before running, verify that the variables at the top are set correctly
    1. The game should not be running while you are running this
    1. This script "cooks" the assets which may take a while the first time (30
       minutes on some machines) so if it seems frozen you might just need to
       wait
    1. At the end, this script should run the game automatically

### How to make changes

- If you plan to publish your map, you should rename a few things to avoid
  conflicting with other published maps:
    - The level asset (default: Content/Mods/Maps/MyLevel)
        - You may have to manually update Editor Startup Map and Game Default
          Map in Project Settings after you do this.
    - The level folder (default: Content/Mods/Maps/MyLevel/)
        - This may leave behind a bunch of redirectors in the old folder. These
          may be invisible until you enable Filters > Other Filters > Show
          Redirectors in your Content Browser. You should "fix up" these
          redirectors after renaming the folder.
    - The Primary Asset Label in the level folder (default:
      Content/Mods/Maps/MyLevel/Label_MyLevel)
        - Renaming this is not strictly necessary, as the parent folder has
          presumably already been renamed
    - The exported pak name in deploy.bat (default: my_level_p)
        - Keeping the "\_p" at the end tells the game to "prioritize" mounting
          the pak, whatever that means. It may or may not be necessary in this
          situation.
          [source](https://dev.epicgames.com/documentation/en-us/unreal-engine/how-to-create-a-patch-in-unreal-engine?application_version=5.1#installingapatch)
- You can create new geometry with the CubeGrid tool in Modeling mode. Any new
  assets you create needs to be added to the Primary Asset Label in the level
  folder, or they will not be added to the exported pak.

### FAQ

- Q: Why can't I see my level in the editor?
    - A: This starter project does not contain meshes, textures, or any other
      assets from the game. This is by design; we do not condone distributing
      assets from the game. This means the in-editor preview is going to be
      largely symbolic. Prefer previewing your map in-game.
- Q: How do I load my level in the game?
    - A: Install the [PseudoMenu
      mod](https://www.nexusmods.com/pseudoregalia/mods/36). Start the game
      normally, go to 'File Select', click an empty slot, and find your level
      in the dropdown.

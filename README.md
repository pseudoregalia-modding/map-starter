# Pseudoregalia Map Starter Template


<img src="https://github.com/pseudoregalia-modding/map-starter/assets/144861042/c57d9851-5370-4a97-b870-34b9e87cb473" width="45%">
<img src="https://github.com/pseudoregalia-modding/map-starter/assets/144861042/59735106-cc0f-406b-b7d1-3e2d374ad75a" width= 45%>


Use this Unreal project to create extremely basic levels which you can load into your copy of Pseudoregalia.

Features:

- Ambient global lighting
- Translate, rotate, and scale boxes

That's all there is for now.

### Instructions

1. Install Unreal Engine 5.1.1
1. Open this project
1. Make changes
1. Run deploy.bat
    1. Before running, verify that the variables at the top are set correctly
    1. The game should not be running while you are running this
1. Run the game

### Implementation notes

This is just the default Blank UE5.1 project with a few project settings changed so that the mod pak can be loaded. The changes are:

- Set "IOStore" to false
- Set "Generate chunks" to true
- Add to top of file `Config/DefaultEngine.ini`
```
[Core.System]
CanUseUnversionedPropertySerialization=False
```

In addition, two assets were dummied:

```
Game/Lighting/Blueprints/BP_Ambience.uasset
Game/Maps/_GENERATED/rittz/blockoutBigbox.uasset
```

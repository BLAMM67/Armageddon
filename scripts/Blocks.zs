import mods.vanilla.BlockProperty;
import mods.vanilla.HarvestLevel;

print("*** Tweaking Blocks ***");

// Nerf obsidian so the hardened blocks are the building material of choice
BlockProperty.set(<minecraft:obsidian>, 6.0, 35.0);

// Set the hardened block chain to increase durability gradually
BlockProperty.set(<immersiveengineering:stoneDecoration:5>, 8.0, 50.0);
BlockProperty.set(<immersiveengineering:stoneDecoration:7>, 10.0, 75.0);
BlockProperty.set(<ompd:hardened>, 20.0, 100.0);
BlockProperty.set(<ompd:hardened:1>, 25.0, 150.0);
BlockProperty.set(<ompd:hardened:2>, 30.0, 200.0);
BlockProperty.set(<ompd:hardened:3>, 35.0, 250.0);
BlockProperty.set(<ompd:hardened:4>, 40.0, 300.0);

// Need to break ethaxium so lower the harvest level to Dreadium
HarvestLevel.set(<abyssalcraft:ethaxium>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:ethaxiumbrick:*>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:ethaxiumpillar>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:ethaxiumbrickstairs>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:ethaxiumbrickslab1>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:ethaxiumblock>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:ethaxiumbrickslab2>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:darkethaxiumbrick:*>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:darkethaxiumpillar>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:darkethaxiumbrickstairs>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:darkethaxiumbrickslab1>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:darkethaxiumbrickslab2>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:ethaxiumfence>, "pickaxe", 6);
HarvestLevel.set(<abyssalcraft:darkethaxiumbrickfence>, "pickaxe", 6);



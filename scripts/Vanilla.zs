import mods.betterbeginnings.AdvancedCrafting;

print("*** Tweaking Vanilla ***");

// Villages are disabled so drop beet seeds from grass
vanilla.seeds.addSeed(<minecraft:beetroot_seeds>.weight(5));

// Someone is adding a 4 gravel recipe for flint. Drop it.
recipes.removeShaped(<minecraft:flint>);

//Drop durability on all vanilla tools in case players get access to one
mods.vanilla.Durability.set(<minecraft:wooden_axe>, 1);
mods.vanilla.Durability.set(<minecraft:wooden_hoe>, 1);
mods.vanilla.Durability.set(<minecraft:wooden_pickaxe>, 1);
mods.vanilla.Durability.set(<minecraft:wooden_shovel>, 1);
mods.vanilla.Durability.set(<minecraft:wooden_sword>, 1);
mods.vanilla.Durability.set(<minecraft:stone_axe>, 1);
mods.vanilla.Durability.set(<minecraft:stone_hoe>, 1);
mods.vanilla.Durability.set(<minecraft:stone_pickaxe>, 1);
mods.vanilla.Durability.set(<minecraft:stone_shovel>, 1);
mods.vanilla.Durability.set(<minecraft:stone_sword>, 1);
mods.vanilla.Durability.set(<minecraft:iron_axe>, 1);
mods.vanilla.Durability.set(<minecraft:iron_hoe>, 1);
mods.vanilla.Durability.set(<minecraft:iron_pickaxe>, 1);
mods.vanilla.Durability.set(<minecraft:iron_shovel>, 1);
mods.vanilla.Durability.set(<minecraft:iron_sword>, 1);
mods.vanilla.Durability.set(<minecraft:golden_axe>, 1);
mods.vanilla.Durability.set(<minecraft:golden_hoe>, 1);
mods.vanilla.Durability.set(<minecraft:golden_pickaxe>, 1);
mods.vanilla.Durability.set(<minecraft:golden_shovel>, 1);
mods.vanilla.Durability.set(<minecraft:golden_sword>, 1);
mods.vanilla.Durability.set(<minecraft:diamond_axe>, 1);
mods.vanilla.Durability.set(<minecraft:diamond_hoe>, 1);
mods.vanilla.Durability.set(<minecraft:diamond_pickaxe>, 1);
mods.vanilla.Durability.set(<minecraft:diamond_shovel>, 1);
mods.vanilla.Durability.set(<minecraft:diamond_sword>, 1);

// Remove the advanced crafting recipies for the vanilla tools
// WHY DOESN"T THIS WORK??
/*
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:stone_axe>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:stone_hoe>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:stone_pickaxe>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:stone_shovel>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:stone_sword>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:iron_axe>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:iron_hoe>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:iron_pickaxe>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:iron_shovel>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:iron_sword>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:golden_axe>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:golden_hoe>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:golden_pickaxe>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:golden_shovel>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:golden_sword>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:diamond_axe>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:diamond_hoe>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:diamond_pickaxe>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:diamond_shovel>);
mods.betterbeginnings.AdvancedCrafting.removeOutput(<minecraft:diamond_sword>);
*/


// The luck potion has no recipe and MT can't work with the brewing stand, so we'll just add a standard crafting recipe for it.
recipes.addShaped(<minecraft:potion>.withTag({Potion: "minecraft:luck"}), [
	[<ore:gemLapis>, <minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <ore:gemLapis>] 
]);

// Add a recipe for packed ice because it is needed for the thermoelectric generator
recipes.addShaped(<minecraft:packed_ice>, [
	[<toughasnails:ice_cube>, <toughasnails:freeze_rod>, <toughasnails:ice_cube>],
	[<toughasnails:freeze_rod>, <toughasnails:ice_cube>, <toughasnails:freeze_rod>],
	[<toughasnails:ice_cube>, <toughasnails:freeze_rod>, <toughasnails:ice_cube>] 
]);

// Nerf obsidian so the hardened blocks are the building material of choice
mods.vanilla.BlockProperty.set(<minecraft:obsidian>, 6.0, 35.0);

// Remove the vanilla furnace altogether
recipes.remove(<minecraft:furnace>);
mods.jei.JEI.hide(<minecraft:furnace>);
<minecraft:furnace>.addTooltip(format.red("DISABLED"));

// Replace the furnace with the kiln in recipies
recipes.remove(<minecraft:furnace_minecart>);
recipes.addShaped(<minecraft:furnace_minecart>, [
	[<betterbeginnings:kiln>], 
	[<minecraft:minecart>]
]);

// Remove ingots from the furnace
furnace.remove(<abyssalcraft:abyingot>);
furnace.remove(<abyssalcraft:cbrick>);
furnace.remove(<abyssalcraft:cingot>);
furnace.remove(<abyssalcraft:copperingot>);
furnace.remove(<abyssalcraft:dreadiumingot>);
furnace.remove(<abyssalcraft:ethaxiumingot>);
furnace.remove(<abyssalcraft:friedegg>);
furnace.remove(<abyssalcraft:nitre>);
furnace.remove(<abyssalcraft:tiningot>);
furnace.remove(<immersiveengineering:metal:1>);
furnace.remove(<immersiveengineering:metal:2>);
furnace.remove(<immersiveengineering:metal:3>);
furnace.remove(<immersiveengineering:metal:4>);
furnace.remove(<immersiveengineering:metal:5>);
furnace.remove(<immersiveengineering:metal:6>);
furnace.remove(<immersiveengineering:metal:7>);
furnace.remove(<immersiveengineering:metal:8>);
furnace.remove(<immersiveengineering:metal>);
furnace.remove(<minecraft:gold_ingot>);
furnace.remove(<minecraft:iron_ingot>);

//Leaving these in the furnace for now
//furnace.remove(<abyssalcraft:abybrick:2>);
//furnace.remove(<abyssalcraft:abydreadbrick:2>);
//furnace.remove(<abyssalcraft:abydreadstone>);
//furnace.remove(<abyssalcraft:abyssalsandglass>);
//furnace.remove(<abyssalcraft:abystone>);
//furnace.remove(<abyssalcraft:coralium>);
//furnace.remove(<abyssalcraft:cpearl>);
//furnace.remove(<abyssalcraft:cstone>);
//furnace.remove(<abyssalcraft:cstonebrick:2>);
//furnace.remove(<abyssalcraft:darkethaxiumbrick:2>);
//furnace.remove(<abyssalcraft:darkstone>);
//furnace.remove(<abyssalcraft:darkstone_brick:2>);
//furnace.remove(<abyssalcraft:dreadbrick:2>);
//furnace.remove(<abyssalcraft:dreadstone>);
//furnace.remove(<abyssalcraft:ethaxiumbrick:2>);
//furnace.remove(<abyssalcraft:ethbrick>);
//furnace.remove(<backpack:tanned_leather>);
//furnace.remove(<immersiveengineering:material:19>);
//furnace.remove(<minecraft:chorus_fruit_popped>);
//furnace.remove(<minecraft:leather>);
//furnace.remove(<minecraft:potion>.withTag({Potion: "minecraft:water"}));
//furnace.remove(<tconstruct:brownstone:4>);
//furnace.remove(<tconstruct:brownstone>);
//furnace.remove(<tconstruct:materials:10>);
//furnace.remove(<tconstruct:materials:11>);
//furnace.remove(<tconstruct:materials:9>);
//furnace.remove(<tconstruct:materials>);
//furnace.remove(<tconstruct:seared:4>);
//furnace.remove(<tconstruct:slime_channel:1>);
//furnace.remove(<tconstruct:slime_channel:2>);
//furnace.remove(<tconstruct:slime_channel:3>);
//furnace.remove(<tconstruct:slime_channel:4>);
//furnace.remove(<tconstruct:slime_channel>);
//furnace.remove(<tconstruct:soil:4>);


// Lets make a use for diamond tools
// Crusher: OutputStack1, InputStack, Energy, OutputStack2, OutputStack2Chance //Chance in Decimals
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <minecraft:diamond_shovel>, 8000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <minecraft:diamond_pickaxe>, 8000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <minecraft:diamond_axe>, 8000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <minecraft:diamond_hoe>, 8000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond>, <minecraft:diamond_sword>, 8000);

mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond> * 2, <minecraft:diamond_helmet>, 8000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond> * 4, <minecraft:diamond_chestplate>, 8000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond> * 3, <minecraft:diamond_leggings>, 8000);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:diamond> * 2, <minecraft:diamond_boots>, 8000);

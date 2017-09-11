import mods.betterbeginnings.AdvancedCrafting;

print("*** Tweaking Vanilla ***");

// Villages are disabled so drop beet seeds from grass
vanilla.seeds.addSeed(<minecraft:beetroot_seeds>.weight(5));

// Someone is adding a 4 gravel recipe for flint. Drop it.
recipes.removeShaped(<minecraft:flint>);

// Vanilla slime blocks should only be made with vanilla slime balls
recipes.removeShaped(<minecraft:slime>);
recipes.addShaped(<minecraft:slime>, [
	[<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>],
	[<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>],
	[<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>] 
]);

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
mods.vanilla.Durability.set(<minecraft:bow>, 1);

// Remove the advanced crafting recipies for the vanilla tools
AdvancedCrafting.removeOutput(<minecraft:stone_axe>);
AdvancedCrafting.removeOutput(<minecraft:stone_hoe>);
AdvancedCrafting.removeOutput(<minecraft:stone_pickaxe>);
AdvancedCrafting.removeOutput(<minecraft:stone_shovel>);
AdvancedCrafting.removeOutput(<minecraft:stone_sword>);
AdvancedCrafting.removeOutput(<minecraft:iron_axe>);
AdvancedCrafting.removeOutput(<minecraft:iron_hoe>);
AdvancedCrafting.removeOutput(<minecraft:iron_pickaxe>);
AdvancedCrafting.removeOutput(<minecraft:iron_shovel>);
AdvancedCrafting.removeOutput(<minecraft:iron_sword>);
AdvancedCrafting.removeOutput(<minecraft:golden_axe>);
AdvancedCrafting.removeOutput(<minecraft:golden_hoe>);
AdvancedCrafting.removeOutput(<minecraft:golden_pickaxe>);
AdvancedCrafting.removeOutput(<minecraft:golden_shovel>);
AdvancedCrafting.removeOutput(<minecraft:golden_sword>);
AdvancedCrafting.removeOutput(<minecraft:diamond_axe>);
AdvancedCrafting.removeOutput(<minecraft:diamond_hoe>);
AdvancedCrafting.removeOutput(<minecraft:diamond_pickaxe>);
AdvancedCrafting.removeOutput(<minecraft:diamond_shovel>);
AdvancedCrafting.removeOutput(<minecraft:diamond_sword>);
AdvancedCrafting.removeOutput(<minecraft:bow>);

// Add a recipe for packed ice because it is needed for the thermoelectric generator
recipes.addShaped(<minecraft:packed_ice>, [
	[<toughasnails:ice_cube>, <toughasnails:freeze_rod>, <toughasnails:ice_cube>],
	[<toughasnails:freeze_rod>, <toughasnails:ice_cube>, <toughasnails:freeze_rod>],
	[<toughasnails:ice_cube>, <toughasnails:freeze_rod>, <toughasnails:ice_cube>] 
]);

// Add a recipe for saddles and horse armor
AdvancedCrafting.addRecipe(<minecraft:saddle>, [
	[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
	[<minecraft:string>, <minecraft:carpet>, <minecraft:string>],
	[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]],
	[<betterbeginnings:leather_strip> * 2, <immersiveengineering:wirecoil:3>]);
AdvancedCrafting.addRecipe(<minecraft:iron_horse_armor>, [
	[null, null, <minecraft:iron_helmet>],
	[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
	[<minecraft:iron_leggings>, null, <minecraft:iron_leggings>]],
	[<ore:nuggetIron> * 6, <betterbeginnings:leather_strip> * 4, <minecraft:wool:*> * 2]);
AdvancedCrafting.addRecipe(<minecraft:golden_horse_armor>, [
	[null, null, <minecraft:golden_helmet>],
	[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
	[<minecraft:golden_leggings>, null, <minecraft:golden_leggings>]],
	[<ore:nuggetGold> * 6, <betterbeginnings:leather_strip> * 4, <minecraft:wool:*> * 2]);
AdvancedCrafting.addRecipe(<minecraft:diamond_horse_armor>, [
	[null, null, <minecraft:diamond_helmet>],
	[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
	[<minecraft:diamond_leggings>, null, <minecraft:diamond_leggings>]],
	[<minecraft:redstone> * 6, <minecraft:blaze_powder> * 3, <betterbeginnings:leather_strip> * 4, <minecraft:wool:*> * 2]);

// Remove the vanilla furnace altogether
recipes.remove(<minecraft:furnace>);
mods.jei.JEI.hide(<minecraft:furnace>); // THIS DOESN'T WORK!
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

// Leaving these in the furnace for now since the Tinkers furnace 
// does the same job as the vanilla furnace
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


// Lets make a use for diamond tools since a few mobs drop them
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

// Add an advanced recipe for chain armor
recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_boots>);
AdvancedCrafting.addRecipe(<minecraft:chainmail_helmet>,[
	[<betterbeginnings:chain>, <betterbeginnings:chain>, <betterbeginnings:chain>],
	[<betterbeginnings:chain>, null, <betterbeginnings:chain>]],
	[<ore:nuggetIron> * 2, <betterbeginnings:leather_strip> * 3, <minecraft:wool:*> * 2]);

AdvancedCrafting.addRecipe(<minecraft:chainmail_chestplate>,[
	[<betterbeginnings:chain>, null, <betterbeginnings:chain>],
	[<betterbeginnings:chain>, <betterbeginnings:chain>, <betterbeginnings:chain>],
	[<betterbeginnings:chain>, <betterbeginnings:chain>, <betterbeginnings:chain>]],
	[<ore:nuggetIron> * 6, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 4]);

AdvancedCrafting.addRecipe(<minecraft:chainmail_leggings>,[
	[<betterbeginnings:chain>, <betterbeginnings:chain>, <betterbeginnings:chain>],
	[<betterbeginnings:chain>, null, <betterbeginnings:chain>],
	[<betterbeginnings:chain>, null, <betterbeginnings:chain>]],
	[<ore:nuggetIron> * 4, <betterbeginnings:leather_strip> * 4, <minecraft:wool:*> * 1]);

AdvancedCrafting.addRecipe(<minecraft:chainmail_boots>,[
	[<betterbeginnings:chain>, null, <betterbeginnings:chain>],
	[<betterbeginnings:chain>, null, <betterbeginnings:chain>]],
	[<ore:nuggetIron> * 3, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 3]);

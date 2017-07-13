import mods.betterbeginnings.AdvancedCrafting;
import mods.immersiveengineering.MetalPress;
import mods.tconstruct.Casting;
import mods.tconstruct.Smeltery;

//http://minetweaker3.powerofbytes.com/wiki/ModTweaker:TConstruct_Support_1.10.2
print("*** Tweaking TConstruct ***");

// Replace vanilla workbench with BB workbench in tool table recipe
recipes.addShaped(<tconstruct:tooltables:3>,
	[ [<ore:pattern>], [<betterbeginnings:double_workbench>] ] );

//Replace vanilla furnace with kiln in furnace controller recipes
recipes.remove(<tconstruct:seared_furnace_controller>);
recipes.addShaped(<tconstruct:seared_furnace_controller>, [
	[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>], 
	[<tconstruct:materials>, <betterbeginnings:kiln>, <tconstruct:materials>], 
	[<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>]]);

Casting.removeBasinRecipe(<tconstruct:seared_furnace_controller>, <liquid:stone> * 576, <minecraft:furnace>);
Casting.addBasinRecipe(<tconstruct:seared_furnace_controller>, <liquid:stone> * 576, <betterbeginnings:kiln>, true, 204);

// Remove the stone torch since it doesn't follow the WTF torch mechanics
recipes.remove(<tconstruct:stone_torch>);

// Punji stick need to be more expensive
recipes.remove(<tconstruct:punji>);
recipes.addShaped(<tconstruct:punji> * 3, [
	[<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>], 
	[<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>], 
	[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);

// Add recipies for slime saplings
recipes.addShaped(<tconstruct:slime_sapling>, [
	[<tconstruct:edible:1>, <tconstruct:edible:1>, <tconstruct:edible:1>], 
	[<tconstruct:edible:1>, <ore:treeSapling>, <tconstruct:edible:1>], 
	[<tconstruct:edible:1>, <tconstruct:edible:1>, <tconstruct:edible:1>]]);

recipes.addShaped(<tconstruct:slime_sapling:1>, [
	[<tconstruct:edible:2>, <tconstruct:edible:2>, <tconstruct:edible:2>], 
	[<tconstruct:edible:2>, <ore:treeSapling>, <tconstruct:edible:2>], 
	[<tconstruct:edible:2>, <tconstruct:edible:2>, <tconstruct:edible:2>]]);

recipes.addShaped(<tconstruct:slime_sapling:2>, [
	[<tconstruct:edible:4>, <tconstruct:edible:4>, <tconstruct:edible:4>], 
	[<tconstruct:edible:4>, <ore:treeSapling>, <tconstruct:edible:4>], 
	[<tconstruct:edible:4>, <tconstruct:edible:4>, <tconstruct:edible:4>]]);

// We need recipies for the purple slime ball that no mob drops
recipes.addShapeless(<tconstruct:edible:2>, [<tconstruct:edible:1>, <tconstruct:edible:3>]);


// Move stone ladder to advanced crafting
recipes.remove(<tconstruct:stone_ladder>);
AdvancedCrafting.addRecipe(<tconstruct:stone_ladder> * 3,[
	[<ore:rodStone>, null, <ore:rodStone>],
	[<ore:rodStone>, <ore:rodStone>, <ore:rodStone>],
	[<ore:rodStone>, null, <ore:rodStone>]],
	[<immersiveengineering:wirecoil:3>]);


// Let's make a use for the vanilla tools
Smeltery.addMelting(<liquid:iron> * 144, <minecraft:iron_axe>, 200);
Smeltery.addMelting(<liquid:iron> * 144, <minecraft:iron_hoe>, 200);
Smeltery.addMelting(<liquid:iron> * 144, <minecraft:iron_pickaxe>, 200);
Smeltery.addMelting(<liquid:iron> * 144, <minecraft:iron_shovel>, 200);
Smeltery.addMelting(<liquid:iron> * 144, <minecraft:iron_sword>, 200);

Smeltery.addMelting(<liquid:iron> * 16, <minecraft:iron_axe:1>, 200);
Smeltery.addMelting(<liquid:iron> * 16, <minecraft:iron_hoe:1>, 200);
Smeltery.addMelting(<liquid:iron> * 16, <minecraft:iron_pickaxe:1>, 200);
Smeltery.addMelting(<liquid:iron> * 16, <minecraft:iron_shovel:1>, 200);
Smeltery.addMelting(<liquid:iron> * 16, <minecraft:iron_sword:1>, 200);

Smeltery.addMelting(<liquid:gold> * 144, <minecraft:golden_axe>, 3200);
Smeltery.addMelting(<liquid:gold> * 144, <minecraft:golden_hoe>, 200);
Smeltery.addMelting(<liquid:gold> * 144, <minecraft:golden_pickaxe>, 200);
Smeltery.addMelting(<liquid:gold> * 144, <minecraft:golden_shovel>, 200);
Smeltery.addMelting(<liquid:gold> * 144, <minecraft:golden_sword>, 200);

Smeltery.addMelting(<liquid:gold> * 16, <minecraft:golden_axe:1>, 200);
Smeltery.addMelting(<liquid:gold> * 16, <minecraft:golden_hoe:1>, 200);
Smeltery.addMelting(<liquid:gold> * 16, <minecraft:golden_pickaxe:1>, 200);
Smeltery.addMelting(<liquid:gold> * 16, <minecraft:golden_shovel:1>, 200);
Smeltery.addMelting(<liquid:gold> * 16, <minecraft:golden_sword:1>, 200);

// Making spaghetti
MetalPress.addRecipe(<tconstruct:spaghetti>, <ore:cropWheat>, <immersiveengineering:mold:2>, 500, 16);

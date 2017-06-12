import mods.betterbeginnings.AdvancedCrafting;

print("*** Tweaking Quark ***");

// The advanced crafting recipe for the oak chest uses orePlank
// Change it to use oak planks so the quark chests can have their own advanced crafting recipies
AdvancedCrafting.removeOutput(<minecraft:chest>);
recipes.remove(<quark:custom_chest>);
recipes.remove(<quark:custom_chest:1>);
recipes.remove(<quark:custom_chest:2>);
recipes.remove(<quark:custom_chest:3>);
recipes.remove(<quark:custom_chest:4>);
AdvancedCrafting.addRecipe(<minecraft:chest>,[
	[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
	[<minecraft:planks>, null, <minecraft:planks>],
	[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]
	, [<ore:nuggetIron> * 3, <betterbeginnings:leather_strip>]);
AdvancedCrafting.addRecipe(<quark:custom_chest>,[
	[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
	[<minecraft:planks:1>, null, <minecraft:planks:1>],
	[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]
	, [<ore:nuggetIron> * 3, <betterbeginnings:leather_strip>]);
AdvancedCrafting.addRecipe(<quark:custom_chest:1>,[
	[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
	[<minecraft:planks:2>, null, <minecraft:planks:2>],
	[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]]
	, [<ore:nuggetIron> * 3, <betterbeginnings:leather_strip>]);
AdvancedCrafting.addRecipe(<quark:custom_chest:2>,[
	[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
	[<minecraft:planks:3>, null, <minecraft:planks:3>],
	[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]]
	, [<ore:nuggetIron> * 3, <betterbeginnings:leather_strip>]);
AdvancedCrafting.addRecipe(<quark:custom_chest:3>,[
	[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
	[<minecraft:planks:4>, null, <minecraft:planks:4>],
	[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]]
	, [<ore:nuggetIron> * 3, <betterbeginnings:leather_strip>]);
AdvancedCrafting.addRecipe(<quark:custom_chest:4>,[
	[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
	[<minecraft:planks:5>, null, <minecraft:planks:5>],
	[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]]
	, [<ore:nuggetIron> * 3, <betterbeginnings:leather_strip>]);

// Add convience recipies for chests using logs
AdvancedCrafting.addRecipe(<minecraft:chest> * 4,[
	[<minecraft:log>, <minecraft:log>, <minecraft:log>],
	[<minecraft:log>, null, <minecraft:log>],
	[<minecraft:log>, <minecraft:log>, <minecraft:log>]]
	, [<ore:nuggetIron> * 12, <betterbeginnings:leather_strip> * 4]);
AdvancedCrafting.addRecipe(<quark:custom_chest> * 4,[
	[<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>],
	[<minecraft:log:1>, null, <minecraft:log:1>],
	[<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>]]
	, [<ore:nuggetIron> * 12, <betterbeginnings:leather_strip> * 4]);
AdvancedCrafting.addRecipe(<quark:custom_chest:1> * 4,[
	[<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>],
	[<minecraft:log:2>, null, <minecraft:log:2>],
	[<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>]]
	, [<ore:nuggetIron> * 12, <betterbeginnings:leather_strip> * 4]);
AdvancedCrafting.addRecipe(<quark:custom_chest:2> * 4,[
	[<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>],
	[<minecraft:log:3>, null, <minecraft:log:3>],
	[<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>]]
	, [<ore:nuggetIron> * 12, <betterbeginnings:leather_strip> * 4]);
AdvancedCrafting.addRecipe(<quark:custom_chest:3> * 4,[
	[<minecraft:log2>, <minecraft:log2>, <minecraft:log2>],
	[<minecraft:log2>, null, <minecraft:log2>],
	[<minecraft:log2>, <minecraft:log2>, <minecraft:log2>]],
	[<ore:nuggetIron> * 12, <betterbeginnings:leather_strip> * 4]);
AdvancedCrafting.addRecipe(<quark:custom_chest:4> * 4,[
	[<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>],
	[<minecraft:log2:1>, null, <minecraft:log2:1>],
	[<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>]],
	[<ore:nuggetIron> * 12, <betterbeginnings:leather_strip> * 4]);

// Change the recipes for quarks trapped chests for advanced recipies
recipes.remove(<quark:custom_chest_trap>);
recipes.remove(<quark:custom_chest_trap:1>);
recipes.remove(<quark:custom_chest_trap:2>);
recipes.remove(<quark:custom_chest_trap:3>);
recipes.remove(<quark:custom_chest_trap:4>);
AdvancedCrafting.addRecipe(<quark:custom_chest_trap>,[
	[<quark:custom_chest>],
	[<minecraft:tripwire_hook>]],
	[<betterbeginnings:thread> * 2, <minecraft:redstone> * 2]);
AdvancedCrafting.addRecipe(<quark:custom_chest_trap:1>,[
	[<quark:custom_chest:1>],
	[<minecraft:tripwire_hook>]],
	[<betterbeginnings:thread> * 2, <minecraft:redstone> * 2]);
AdvancedCrafting.addRecipe(<quark:custom_chest_trap:2>,[
	[<quark:custom_chest:2>],
	[<minecraft:tripwire_hook>]],
	[<betterbeginnings:thread> * 2, <minecraft:redstone> * 2]);
AdvancedCrafting.addRecipe(<quark:custom_chest_trap:3>,[
	[<quark:custom_chest:3>],
	[<minecraft:tripwire_hook>]],
	[<betterbeginnings:thread> * 2, <minecraft:redstone> * 2]);
AdvancedCrafting.addRecipe(<quark:custom_chest_trap:4>,[
	[<quark:custom_chest:4>],
	[<minecraft:tripwire_hook>]],
	[<betterbeginnings:thread> * 2, <minecraft:redstone> * 2]);

// Update bed recipes to use advanced recipes
AdvancedCrafting.removeOutput(<minecraft:bed>);
recipes.remove(<quark:colored_bed_item:*>);
AdvancedCrafting.addRecipe(<minecraft:bed>,[
	[<minecraft:wool:14>, <minecraft:wool:14>, <minecraft:wool:14>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:0>,[
	[<minecraft:wool:0>, <minecraft:wool:0>, <minecraft:wool:0>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:1>,[
	[<minecraft:wool:1>, <minecraft:wool:1>, <minecraft:wool:1>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:2>,[
	[<minecraft:wool:2>, <minecraft:wool:2>, <minecraft:wool:2>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:3>,[
	[<minecraft:wool:3>, <minecraft:wool:3>, <minecraft:wool:3>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:4>,[
	[<minecraft:wool:4>, <minecraft:wool:4>, <minecraft:wool:4>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:5>,[
	[<minecraft:wool:5>, <minecraft:wool:5>, <minecraft:wool:5>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:6>,[
	[<minecraft:wool:6>, <minecraft:wool:6>, <minecraft:wool:6>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:7>,[
	[<minecraft:wool:7>, <minecraft:wool:7>, <minecraft:wool:7>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:8>,[
	[<minecraft:wool:8>, <minecraft:wool:8>, <minecraft:wool:8>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:9>,[
	[<minecraft:wool:9>, <minecraft:wool:9>, <minecraft:wool:9>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:10>,[
	[<minecraft:wool:10>, <minecraft:wool:10>, <minecraft:wool:10>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:11>,[
	[<minecraft:wool:11>, <minecraft:wool:11>, <minecraft:wool:11>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:12>,[
	[<minecraft:wool:12>, <minecraft:wool:12>, <minecraft:wool:12>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:13>,[
	[<minecraft:wool:13>, <minecraft:wool:13>, <minecraft:wool:13>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);
AdvancedCrafting.addRecipe(<quark:colored_bed_item:14>,[
	[<minecraft:wool:15>, <minecraft:wool:15>, <minecraft:wool:15>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]],
	[<ore:nuggetIron> * 2]);

// Update bed recipes to use advanced recipes
AdvancedCrafting.removeOutput(<minecraft:bookshelf>);
recipes.remove(<quark:custom_bookshelf:*>);
AdvancedCrafting.addRecipe(<minecraft:bookshelf>,[
	[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
	[<minecraft:book>, <minecraft:book>, <minecraft:book>],
	[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]],
	[<ore:nuggetIron>]);
AdvancedCrafting.addRecipe(<quark:custom_bookshelf:0>,[
	[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
	[<minecraft:book>, <minecraft:book>, <minecraft:book>],
	[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]],
	[<ore:nuggetIron>]);
AdvancedCrafting.addRecipe(<quark:custom_bookshelf:1>,[
	[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
	[<minecraft:book>, <minecraft:book>, <minecraft:book>],
	[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]],
	[<ore:nuggetIron>]);
AdvancedCrafting.addRecipe(<quark:custom_bookshelf:2>,[
	[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
	[<minecraft:book>, <minecraft:book>, <minecraft:book>],
	[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]],
	[<ore:nuggetIron>]);
AdvancedCrafting.addRecipe(<quark:custom_bookshelf:3>,[
	[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
	[<minecraft:book>, <minecraft:book>, <minecraft:book>],
	[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]],
	[<ore:nuggetIron>]);
AdvancedCrafting.addRecipe(<quark:custom_bookshelf:4>,[
	[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
	[<minecraft:book>, <minecraft:book>, <minecraft:book>],
	[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]],
	[<ore:nuggetIron>]);

recipes.remove(<bookshelf:bookshelf:*>);
recipes.addShapeless(<bookshelf:bookshelf:0>, [<quark:custom_bookshelf:0>]);
recipes.addShapeless(<bookshelf:bookshelf:1>, [<quark:custom_bookshelf:1>]);
recipes.addShapeless(<bookshelf:bookshelf:2>, [<quark:custom_bookshelf:2>]);
recipes.addShapeless(<bookshelf:bookshelf:3>, [<quark:custom_bookshelf:3>]);
recipes.addShapeless(<bookshelf:bookshelf:4>, [<quark:custom_bookshelf:4>]);
recipes.addShapeless(<quark:custom_bookshelf:0>, [<bookshelf:bookshelf:0>]);
recipes.addShapeless(<quark:custom_bookshelf:1>, [<bookshelf:bookshelf:1>]);
recipes.addShapeless(<quark:custom_bookshelf:2>, [<bookshelf:bookshelf:2>]);
recipes.addShapeless(<quark:custom_bookshelf:3>, [<bookshelf:bookshelf:3>]);
recipes.addShapeless(<quark:custom_bookshelf:4>, [<bookshelf:bookshelf:4>]);

// Move iron ladder to advanced crafting
recipes.remove(<quark:iron_ladder>);
AdvancedCrafting.addRecipe(<quark:iron_ladder> * 8,[
	[<ore:ingotIron>, null, <ore:ingotIron>],
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<ore:ingotIron>, null, <ore:ingotIron>]],
	[<ore:nuggetIron> * 2]);

// Update trapdoor recipes to use advanced recipes
AdvancedCrafting.removeOutput(<minecraft:trapdoor>);
recipes.remove(<quark:spruce_trapdoor>);
recipes.remove(<quark:birch_trapdoor>);
recipes.remove(<quark:jungle_trapdoor>);
recipes.remove(<quark:acacia_trapdoor>);
recipes.remove(<quark:dark_oak_trapdoor>);
AdvancedCrafting.addRecipe(<minecraft:trapdoor> * 4,[
	[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
	[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]],
	[<betterbeginnings:leather_strip> * 2]);
AdvancedCrafting.addRecipe(<quark:spruce_trapdoor> * 4, [
	[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
	[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]],
	[<betterbeginnings:leather_strip> * 2]);
AdvancedCrafting.addRecipe(<quark:birch_trapdoor> * 4, [
	[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
	[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]],
	[<betterbeginnings:leather_strip> * 2]);
AdvancedCrafting.addRecipe(<quark:jungle_trapdoor> * 4, [
	[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
	[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]],
	[<betterbeginnings:leather_strip> * 2]);
AdvancedCrafting.addRecipe(<quark:acacia_trapdoor> * 4, [
	[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
	[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]],
	[<betterbeginnings:leather_strip> * 2]);
AdvancedCrafting.addRecipe(<quark:dark_oak_trapdoor> * 4, [
	[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
	[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]],
	[<betterbeginnings:leather_strip> * 2]);

import mods.betterbeginnings.AdvancedCrafting;

print("*** Tweaking ToughAsNails ***");

// Adding a recipe for lifeblood crystals. 
// Randomly finding them in the nether just doesn't cut it.
recipes.addShaped(<toughasnails:lifeblood_crystal>, [
	[null, <tconstruct:edible:3>, null],
	[<tconstruct:edible:3>, <souls:EnderJewel>, <tconstruct:edible:3>],
	[null, <tconstruct:edible:3>, null]
]);

// Add an advanced recipe for jellied armor
recipes.remove(<toughasnails:jelled_slime_helmet>);
recipes.remove(<toughasnails:jelled_slime_chestplate>);
recipes.remove(<toughasnails:jelled_slime_leggings>);
recipes.remove(<toughasnails:jelled_slime_boots>);
AdvancedCrafting.addRecipe(<toughasnails:jelled_slime_helmet>,[
	[<toughasnails:jelled_slime>, <toughasnails:jelled_slime>, <toughasnails:jelled_slime>],
	[<toughasnails:jelled_slime>, null, <toughasnails:jelled_slime>]],
	[<toughasnails:freeze_powder> * 2, <betterbeginnings:leather_strip> * 3, <minecraft:wool:*> * 2]);

AdvancedCrafting.addRecipe(<toughasnails:jelled_slime_chestplate>,[
	[<toughasnails:jelled_slime>, null, <toughasnails:jelled_slime>],
	[<toughasnails:jelled_slime>, <toughasnails:jelled_slime>, <toughasnails:jelled_slime>],
	[<toughasnails:jelled_slime>, <toughasnails:jelled_slime>, <toughasnails:jelled_slime>]],
	[<toughasnails:freeze_powder> * 6, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 4]);

AdvancedCrafting.addRecipe(<toughasnails:jelled_slime_leggings>,[
	[<toughasnails:jelled_slime>, <toughasnails:jelled_slime>, <toughasnails:jelled_slime>],
	[<toughasnails:jelled_slime>, null, <toughasnails:jelled_slime>],
	[<toughasnails:jelled_slime>, null, <toughasnails:jelled_slime>]],
	[<toughasnails:freeze_powder> * 3, <betterbeginnings:leather_strip> * 4, <minecraft:wool:*> * 1]);

AdvancedCrafting.addRecipe(<toughasnails:jelled_slime_boots>,[
	[<toughasnails:jelled_slime>, null, <toughasnails:jelled_slime>],
	[<toughasnails:jelled_slime>, null, <toughasnails:jelled_slime>]],
	[<toughasnails:freeze_powder> * 3, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 3]);

// Add an advanced recipe for wool armor
recipes.remove(<toughasnails:wool_helmet>);
recipes.remove(<toughasnails:wool_chestplate>);
recipes.remove(<toughasnails:wool_leggings>);
recipes.remove(<toughasnails:wool_boots>);
AdvancedCrafting.addRecipe(<toughasnails:wool_helmet>,[
	[<minecraft:wool:*>, <minecraft:wool:*>, <minecraft:wool:*>],
	[<minecraft:wool:*>, null, <minecraft:wool:*>]],
	[<ore:itemString> * 3, <minecraft:wool:*> * 2]);

AdvancedCrafting.addRecipe(<toughasnails:wool_chestplate>,[
	[<minecraft:wool:*>, null, <minecraft:wool:*>],
	[<minecraft:wool:*>, <minecraft:wool:*>, <minecraft:wool:*>],
	[<minecraft:wool:*>, <minecraft:wool:*>, <minecraft:wool:*>]],
	[<ore:itemString> * 2, <minecraft:wool:*> * 4]);

AdvancedCrafting.addRecipe(<toughasnails:wool_leggings>,[
	[<minecraft:wool:*>, <minecraft:wool:*>, <minecraft:wool:*>],
	[<minecraft:wool:*>, null, <minecraft:wool:*>],
	[<minecraft:wool:*>, null, <minecraft:wool:*>]],
	[<ore:itemString> * 4, <minecraft:wool:*> * 1]);

AdvancedCrafting.addRecipe(<toughasnails:wool_boots>,[
	[<minecraft:wool:*>, null, <minecraft:wool:*>],
	[<minecraft:wool:*>, null, <minecraft:wool:*>]],
	[<ore:itemString> * 4, <minecraft:wool:*> * 3]);


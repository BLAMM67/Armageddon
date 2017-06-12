import mods.betterbeginnings.AdvancedCrafting;
import mods.immersiveengineering.Squeezer;
import mods.tconstruct.Casting;

print("*** Tweaking Immersive Engineering ***");


// Add beet seeds to squeezer
Squeezer.addRecipe(null, <liquid:plantoil> * 80, <minecraft:beetroot_seeds>, 240);


// Update the Bayonet with a tinkers knife blade instead of a vanilla iron sword
recipes.remove(<immersiveengineering:toolupgrade:4>);
recipes.addShaped(<immersiveengineering:toolupgrade:4>, [
	[<tconstruct:sword_blade>.withTag({Material: "iron"}), <immersiveengineering:metal:8>], [<immersiveengineering:metal:8>, <ore:plankTreatedWood>]
]);


// Reduce output of the metal rod recipies to encourage the use of the Metal Press
recipes.remove(<immersiveengineering:material:1>);
recipes.remove(<immersiveengineering:material:2>);
recipes.remove(<immersiveengineering:material:3>);

recipes.addShaped(<immersiveengineering:material:1>, [
	[<ore:ingotIron>], 
	[<ore:ingotIron>]
]);
recipes.addShaped(<immersiveengineering:material:2>, [
	[<ore:ingotSteel>], 
	[<ore:ingotSteel>]
]);
recipes.addShaped(<immersiveengineering:material:3>, [
	[<ore:ingotAluminum>], 
	[<ore:ingotAluminum>]
]);


// Reduce output of the metal plate/engineer's hammer recipes to encourage the use of the Metal Press
val hammer = <immersiveengineering:tool>;
recipes.removeShapeless(<immersiveengineering:metal:30>, [<ore:ingotCopper>, hammer]);
recipes.removeShapeless(<immersiveengineering:metal:31>, [<ore:ingotAluminum>, hammer]);
recipes.removeShapeless(<immersiveengineering:metal:32>, [<ore:ingotLead>, hammer]);
recipes.removeShapeless(<immersiveengineering:metal:33>, [<ore:ingotSilver>, hammer]);
recipes.removeShapeless(<immersiveengineering:metal:34>, [<ore:ingotNickel>, hammer]);
recipes.removeShapeless(<immersiveengineering:metal:35>, [<ore:ingotUranium>, hammer]);
recipes.removeShapeless(<immersiveengineering:metal:36>, [<ore:ingotConstantan>, hammer]);
recipes.removeShapeless(<immersiveengineering:metal:37>, [<ore:ingotElectrum>, hammer]);
recipes.removeShapeless(<immersiveengineering:metal:38>, [<ore:ingotSteel>, hammer]);
recipes.removeShapeless(<immersiveengineering:metal:39>, [<ore:ingotIron>, hammer]);
recipes.removeShapeless(<immersiveengineering:metal:40>, [<ore:ingotGold>, hammer]);

// Also remove the ability to cast plates with the tinkers smeltry
Casting.removeTableRecipe(<immersiveengineering:metal:30>, <liquid:copper>, <tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<immersiveengineering:metal:31>, <liquid:aluminum>, <tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<immersiveengineering:metal:32>, <liquid:lead>, <tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<immersiveengineering:metal:33>, <liquid:silver>, <tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<immersiveengineering:metal:34>, <liquid:nickel>, <tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<immersiveengineering:metal:35>, <liquid:uranium>, <tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<immersiveengineering:metal:36>, <liquid:constantan>, <tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<immersiveengineering:metal:37>, <liquid:electrum>, <tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<immersiveengineering:metal:38>, <liquid:steel>, <tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<immersiveengineering:metal:39>, <liquid:iron>, <tconstruct:cast_custom:3>);
Casting.removeTableRecipe(<immersiveengineering:metal:40>, <liquid:gold>, <tconstruct:cast_custom:3>);

// Add plate recipes back with increased cost
recipes.addShaped(<immersiveengineering:metal:30>, [
	[null, <ore:ingotCopper>, null], 
	[<ore:ingotCopper>, hammer.transformDamage(), <ore:ingotCopper>],
	[null, <ore:ingotCopper>, null]]);
recipes.addShaped(<immersiveengineering:metal:31>, [
	[null, <ore:ingotAluminum>, null], 
	[<ore:ingotAluminum>, hammer.transformDamage(), <ore:ingotAluminum>],
	[null, <ore:ingotAluminum>, null]]);
recipes.addShaped(<immersiveengineering:metal:32>, [
	[null, <ore:ingotLead>, null], 
	[<ore:ingotLead>, hammer.transformDamage(), <ore:ingotLead>],
	[null, <ore:ingotLead>, null]]);
recipes.addShaped(<immersiveengineering:metal:33>, [
	[null, <ore:ingotSilver>, null], 
	[<ore:ingotSilver>, hammer.transformDamage(), <ore:ingotSilver>],
	[null, <ore:ingotSilver>, null]]);
recipes.addShaped(<immersiveengineering:metal:34>, [
	[null, <ore:ingotNickel>, null], 
	[<ore:ingotNickel>, hammer.transformDamage(), <ore:ingotNickel>],
	[null, <ore:ingotNickel>, null]]);
recipes.addShaped(<immersiveengineering:metal:35>, [
	[null, <ore:ingotUranium>, null], 
	[<ore:ingotUranium>, hammer.transformDamage(), <ore:ingotUranium>],
	[null, <ore:ingotUranium>, null]]);
recipes.addShaped(<immersiveengineering:metal:36>, [
	[null, <ore:ingotConstantan>, null], 
	[<ore:ingotConstantan>, hammer.transformDamage(), <ore:ingotConstantan>],
	[null, <ore:ingotConstantan>, null]]);
recipes.addShaped(<immersiveengineering:metal:37>, [
	[null, <ore:ingotElectrum>, null], 
	[<ore:ingotElectrum>, hammer.transformDamage(), <ore:ingotElectrum>],
	[null, <ore:ingotElectrum>, null]]);
recipes.addShaped(<immersiveengineering:metal:38>, [
	[null, <ore:ingotSteel>, null], 
	[<ore:ingotSteel>, hammer.transformDamage(), <ore:ingotSteel>],
	[null, <ore:ingotSteel>, null]]);
recipes.addShaped(<immersiveengineering:metal:39>, [
	[null, <ore:ingotIron>, null], 
	[<ore:ingotIron>, hammer.transformDamage(), <ore:ingotIron>],
	[null, <ore:ingotIron>, null]]);
recipes.addShaped(<immersiveengineering:metal:40>, [
	[null, <ore:ingotGold>, null], 
	[<ore:ingotGold>, hammer.transformDamage(), <ore:ingotGold>],
	[null, <ore:ingotGold>, null]]);


// Add an advanced recipe for Faraday armor
recipes.remove(<immersiveengineering:faradaySuit_head>);
recipes.remove(<immersiveengineering:faradaySuit_chest>);
recipes.remove(<immersiveengineering:faradaySuit_legs>);
recipes.remove(<immersiveengineering:faradaySuit_feet>);
AdvancedCrafting.addRecipe(<immersiveengineering:faradaySuit_head>,[
	[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>],
	[<ore:plateAluminum>, null, <ore:plateAluminum>]],
	[<ore:nuggetAluminum> * 2, <ore:wireCopper> * 3, <minecraft:wool:*> * 2]);

AdvancedCrafting.addRecipe(<immersiveengineering:faradaySuit_chest>,[
	[<ore:plateAluminum>, null, <ore:plateAluminum>],
	[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>],
	[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]],
	[<ore:nuggetAluminum> * 6, <ore:wireCopper> * 2, <minecraft:wool:*> * 4]);

AdvancedCrafting.addRecipe(<immersiveengineering:faradaySuit_legs>,[
	[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>],
	[<ore:plateAluminum>, null, <ore:plateAluminum>],
	[<ore:plateAluminum>, null, <ore:plateAluminum>]],
	[<ore:nuggetAluminum> * 4, <ore:wireCopper> * 4, <minecraft:wool:*> * 1]);

AdvancedCrafting.addRecipe(<immersiveengineering:faradaySuit_feet>,[
	[<ore:plateAluminum>, null, <ore:plateAluminum>],
	[<ore:plateAluminum>, null, <ore:plateAluminum>]],
	[<ore:nuggetAluminum> * 3, <ore:wireCopper> * 2, <minecraft:wool:*> * 3]);

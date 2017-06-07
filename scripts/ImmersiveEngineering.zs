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

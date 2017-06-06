import mods.betterbeginnings.AdvancedCrafting;
import mods.immersiveengineering.Squeezer;

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

// 
recipes.removeShapeless(<immersiveengineering:metal:30>);


var hammer = <immersiveengineering:tool>;
AdvancedCrafting.addRecipe(<immersiveengineering:metal:30>,[
	[<immersiveengineering:metal>, <immersiveengineering:metal>],
	[<immersiveengineering:metal>, <immersiveengineering:metal>]],
	[hammer.reuse()]);

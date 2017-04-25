print("*** Tweaking Immersive Engineering ***");


// Update the Bayonet with a tinkers knife blade instead of a vanilla iron sword
recipes.remove(<immersiveengineering:toolupgrade:4>);
recipes.addShaped(<immersiveengineering:toolupgrade:4>, [
	[<tconstruct:sword_blade>.withTag({Material: "iron"}), <immersiveengineering:metal:8>], [<immersiveengineering:metal:8>, <ore:plankTreatedWood>]
]);

// Remove the metal rod recipies to force the use of the Metal Press
recipes.remove(<immersiveengineering:material:1>);
recipes.remove(<immersiveengineering:material:2>);
recipes.remove(<immersiveengineering:material:3>);


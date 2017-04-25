print("*** Tweaking WTFExpedition ***");

// Add sulfur and nitre to oredict from AbyssalCraft
<ore:dustSulfur>.add(<wtfcore:itemSulfur>);
<ore:dustSaltpeter>.add(<wtfcore:itemNitre>);

// Drop the extra gunpowder recipe 
recipes.removeShapeless(<minecraft:gunpowder>,
	[<wtfcore:itemSulfur>,<minecraft:coal:1>,<wtfcore:itemNitre>,<wtfcore:itemNitre>,<wtfcore:itemNitre>]
);

// Add WTF sulfur to the crystalizer
// TODO: not working
// mods.abyssalcraft.Crystallizer.addSingleCrystallization(<wtfcore:itemSulfur>, <abyssalcraft:crystalshard:2> * 4, 0.1);

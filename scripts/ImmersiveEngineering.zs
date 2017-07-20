import mods.betterbeginnings.AdvancedCrafting;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Squeezer;
import mods.tconstruct.Casting;

//http://minetweaker3.powerofbytes.com/wiki/Mods:Immersive_Engineering_Support
print("*** Tweaking Immersive Engineering ***");


// Add beet seeds to squeezer
Squeezer.addRecipe(null, <liquid:plantoil> * 80, <minecraft:beetroot_seeds>, 240);


// Reduce cost of leaded concrete
recipes.remove(<immersiveengineering:stoneDecoration:7>);
recipes.addShaped(<immersiveengineering:stoneDecoration:7> * 8, [
	[<ore:concrete>, <ore:concrete>, <ore:concrete>], 
	[<ore:concrete>, <ore:dustLead>, <ore:concrete>], 
	[<ore:concrete>, <ore:concrete>, <ore:concrete>]
]);

// Update the Bayonet with a tinkers knife blade instead of a vanilla iron sword
recipes.remove(<immersiveengineering:toolupgrade:4>);
recipes.addShaped(<immersiveengineering:toolupgrade:4>, [
	[<tconstruct:sword_blade>.withTag({Material: "iron"}), <immersiveengineering:metal:8>], [<immersiveengineering:metal:8>, <ore:plankTreatedWood>]
]);

// Since there are no villagers to buy them from, add a recipe for blue prints
val bulletBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "bullet"});
recipes.remove(bulletBlueprint);
AdvancedCrafting.addRecipe(bulletBlueprint, [
	[<ore:gunpowder>, <ore:ingotAlubrass>, <ore:gunpowder>],
	[<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>],
	[<ore:paper>, <ore:paper>, <ore:paper>]],
	[<ore:feather>, <ore:dyeBlack>]);
AdvancedCrafting.addRecipe(<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}), [
	[<ore:gunpowder>, <ore:ingotAlubrass>, <ore:gunpowder>],
	[<ore:ingotAlubrass>, bulletBlueprint, <ore:ingotAlubrass>],
	[<ore:gunpowder>, <ore:ingotAlubrass>, <ore:gunpowder>]],
	[<ore:paper> * 2, <ore:dyeBlack> * 2]);
val damagedGraphiteRod = <immersiveengineering:graphiteElectrode:48000>.withTag({graphDmg: 48000});
AdvancedCrafting.addRecipe(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}), [
	[<ore:ingotHOPGraphite>, damagedGraphiteRod, <ore:ingotHOPGraphite>],
	[damagedGraphiteRod, bulletBlueprint, damagedGraphiteRod],
	[<ore:ingotHOPGraphite>, damagedGraphiteRod, <ore:ingotHOPGraphite>]],
	[<ore:paper> * 2, <ore:dyeBlack> * 2]);

// Brass should be made of brass
recipes.remove(<immersiveengineering:bullet>);
recipes.remove(<immersiveengineering:bullet:1>);
recipes.addShaped(<immersiveengineering:bullet> * 5, [
	[<ore:ingotAlubrass>, null, <ore:ingotAlubrass>], 
	[<ore:ingotAlubrass>, null, <ore:ingotAlubrass>], 
	[null, <ore:ingotAlubrass>, null]]);
recipes.addShaped(<immersiveengineering:bullet:1>, [
	[<minecraft:paper>, <ore:dyeRed>, <minecraft:paper>], 
	[<minecraft:paper>, <ore:dyeRed>, <minecraft:paper>], 
	[null, <ore:ingotAlubrass>, null]]);

MetalPress.removeRecipe(<immersiveengineering:bullet> * 2); // THIS DOESN"T WORK
MetalPress.addRecipe(<immersiveengineering:bullet> * 2, <ore:ingotAlubrass>, <immersiveengineering:mold:3>, 500, 1);



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

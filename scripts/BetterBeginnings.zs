import mods.betterbeginnings.Oven;
import mods.betterbeginnings.AdvancedCrafting;
import mods.betterbeginnings.Campfire;
import mods.betterbeginnings.Kiln;
import mods.betterbeginnings.Smelter;

print("*** Tweaking BetterBeginnings ***");

// Add some recipies from the furnace to the Kiln
Kiln.addRecipe(<tconstruct:materials>, <tconstruct:soil>);

// Add fried egg to the oven
Oven.addShapelessRecipe(<abyssalcraft:friedegg>, [<minecraft:egg>]);

// The smelter should be able to produce any ingot
Smelter.addRecipe(<abyssalcraft:abyingot>, <abyssalcraft:aboots>);
Smelter.addRecipe(<abyssalcraft:abyingot>, <abyssalcraft:abychunk>);
Smelter.addRecipe(<abyssalcraft:abyingot>, <abyssalcraft:abydreadore>);
Smelter.addRecipe(<abyssalcraft:abyingot>, <abyssalcraft:abyore>);
Smelter.addRecipe(<abyssalcraft:abyingot>, <abyssalcraft:ahelmet>);
Smelter.addRecipe(<abyssalcraft:abyingot>, <abyssalcraft:alegs>);
Smelter.addRecipe(<abyssalcraft:abyingot>, <abyssalcraft:aplate>);
Smelter.addRecipe(<abyssalcraft:abyingot>, <abyssalcraft:dreadchunk>);
Smelter.addRecipe(<abyssalcraft:abyingot>, <abyssalcraft:dreadore>);
Smelter.addRecipe(<abyssalcraft:abyingot>, <acintegration:dust>);
Smelter.addRecipe(<abyssalcraft:cbrick>, <abyssalcraft:cstone>);
Smelter.addRecipe(<abyssalcraft:cingot> * 2, <abyssalcraft:cchunk>);
Smelter.addRecipe(<abyssalcraft:cingot>, <abyssalcraft:corboots>);
Smelter.addRecipe(<abyssalcraft:cingot>, <abyssalcraft:corhelmet>);
Smelter.addRecipe(<abyssalcraft:cingot>, <abyssalcraft:corlegs>);
Smelter.addRecipe(<abyssalcraft:cingot>, <abyssalcraft:corplate>);
Smelter.addRecipe(<abyssalcraft:cingot>, <acintegration:dust:1>);
Smelter.addRecipe(<abyssalcraft:copperingot>, <abyssalcraft:abycopore>);
Smelter.addRecipe(<abyssalcraft:dreadiumingot>, <abyssalcraft:dreadiumboots>);
Smelter.addRecipe(<abyssalcraft:dreadiumingot>, <abyssalcraft:dreadiumhelmet>);
Smelter.addRecipe(<abyssalcraft:dreadiumingot>, <abyssalcraft:dreadiumlegs>);
Smelter.addRecipe(<abyssalcraft:dreadiumingot>, <abyssalcraft:dreadiumplate>);
Smelter.addRecipe(<abyssalcraft:dreadiumingot>, <acintegration:dust:2>);
Smelter.addRecipe(<abyssalcraft:ethaxiumingot>, <abyssalcraft:ethaxiumboots>);
Smelter.addRecipe(<abyssalcraft:ethaxiumingot>, <abyssalcraft:ethaxiumhelmet>);
Smelter.addRecipe(<abyssalcraft:ethaxiumingot>, <abyssalcraft:ethaxiumlegs>);
Smelter.addRecipe(<abyssalcraft:ethaxiumingot>, <abyssalcraft:ethaxiumplate>);
Smelter.addRecipe(<abyssalcraft:tiningot>, <abyssalcraft:abytinore>);
Smelter.addRecipe(<immersiveengineering:metal:11>, <immersiveengineering:metal:2>);
Smelter.addRecipe(<immersiveengineering:metal:1>, <immersiveengineering:metal:10>);
Smelter.addRecipe(<immersiveengineering:metal:1>, <immersiveengineering:ore:1>);
Smelter.addRecipe(<immersiveengineering:metal:2>, <immersiveengineering:ore:2>);
Smelter.addRecipe(<immersiveengineering:metal:3>, <immersiveengineering:metal:12>);
Smelter.addRecipe(<immersiveengineering:metal:3>, <immersiveengineering:ore:3>);
Smelter.addRecipe(<immersiveengineering:metal:4>, <immersiveengineering:metal:13>);
Smelter.addRecipe(<immersiveengineering:metal:4>, <immersiveengineering:ore:4>);
Smelter.addRecipe(<immersiveengineering:metal:5>, <immersiveengineering:metal:14>);
Smelter.addRecipe(<immersiveengineering:metal:5>, <immersiveengineering:ore:5>);
Smelter.addRecipe(<immersiveengineering:metal:6>, <immersiveengineering:metal:15>);
Smelter.addRecipe(<immersiveengineering:metal:7>, <immersiveengineering:metal:16>);
Smelter.addRecipe(<immersiveengineering:metal:8>, <immersiveengineering:metal:17>);
Smelter.addRecipe(<immersiveengineering:metal>, <immersiveengineering:metal:9>);
Smelter.addRecipe(<immersiveengineering:metal>, <immersiveengineering:ore>);
Smelter.addRecipe(<minecraft:gold_ingot>, <immersiveengineering:metal:19>);
Smelter.addRecipe(<minecraft:iron_ingot>, <immersiveengineering:metal:18>);

// Don't need or want this
recipes.remove(<betterbeginnings:noob_wood_sword>);

mods.jei.JEI.hide(<betterbeginnings:campfire>); //THIS DOESN'T WORK!

/*
val potion = <minecraft:potion>;
val waterBottle = potion.withTag({Potion:"minecraft:water"});
Smelter.addRecipe(<abyssalcraft:abybrick:2>, <abyssalcraft:abybrick>);
Smelter.addRecipe(<abyssalcraft:abydreadbrick:2>, <abyssalcraft:abydreadbrick>);
Smelter.addRecipe(<abyssalcraft:abydreadstone>, <abyssalcraft:abyssalnitecobblestone>);
Smelter.addRecipe(<abyssalcraft:abyssalsandglass>, <abyssalcraft:abyssalsand>);
Smelter.addRecipe(<abyssalcraft:abystone>, <abyssalcraft:abyssalcobblestone>);
Smelter.addRecipe(<abyssalcraft:coralium>, <abyssalcraft:abycorore>);
Smelter.addRecipe(<abyssalcraft:coralium>, <abyssalcraft:coraliumore>);
Smelter.addRecipe(<abyssalcraft:cpearl>, <abyssalcraft:abypcorore>);
Smelter.addRecipe(<abyssalcraft:cpearl>, <abyssalcraft:coraliumstone>);
Smelter.addRecipe(<abyssalcraft:cstone>, <abyssalcraft:coraliumcobblestone>);
Smelter.addRecipe(<abyssalcraft:cstonebrick:2>, <abyssalcraft:cstonebrick>);
Smelter.addRecipe(<abyssalcraft:darkethaxiumbrick:2>, <abyssalcraft:darkethaxiumbrick>);
Smelter.addRecipe(<abyssalcraft:darkstone>, <abyssalcraft:darkstone_cobble>);
Smelter.addRecipe(<abyssalcraft:darkstone_brick:2>, <abyssalcraft:darkstone_brick>);
Smelter.addRecipe(<abyssalcraft:dreadbrick:2>, <abyssalcraft:dreadbrick>);
Smelter.addRecipe(<abyssalcraft:dreadstone>, <abyssalcraft:dreadstonecobblestone>);
Smelter.addRecipe(<abyssalcraft:ethaxiumbrick:2>, <abyssalcraft:ethaxiumbrick>);
Smelter.addRecipe(<abyssalcraft:ethbrick>, <abyssalcraft:ethaxium>);
Smelter.addRecipe(<backpack:tanned_leather>, <backpack:bound_leather>);
Smelter.addRecipe(<immersiveengineering:material:19>, <immersiveengineering:material:18>);
Smelter.addRecipe(<minecraft:chorus_fruit_popped>, <minecraft:chorus_fruit>);
Smelter.addRecipe(<minecraft:leather>, <minecraft:leather_boots>);
Smelter.addRecipe(<minecraft:leather>, <minecraft:leather_chestplate>);
Smelter.addRecipe(<minecraft:leather>, <minecraft:leather_helmet>);
Smelter.addRecipe(<minecraft:leather>, <minecraft:leather_leggings>);
Smelter.addRecipe(<tconstruct:brownstone:4>, <tconstruct:brownstone:3>);
Smelter.addRecipe(<tconstruct:brownstone>, <tconstruct:brownstone:1>);
Smelter.addRecipe(<tconstruct:materials:10>, <tconstruct:soil:2>);
Smelter.addRecipe(<tconstruct:materials:11>, <tconstruct:soil:5>);
Smelter.addRecipe(<tconstruct:materials:9>, <tconstruct:soil:1>);
Smelter.addRecipe(<tconstruct:seared:4>, <tconstruct:seared:3>);
Smelter.addRecipe(<tconstruct:slime_channel:1> * 3, <tconstruct:slime_congealed:1>);
Smelter.addRecipe(<tconstruct:slime_channel:2> * 3, <tconstruct:slime_congealed:2>);
Smelter.addRecipe(<tconstruct:slime_channel:3> * 3, <tconstruct:slime_congealed:3>);
Smelter.addRecipe(<tconstruct:slime_channel:4> * 3, <tconstruct:slime_congealed:4>);
Smelter.addRecipe(<tconstruct:slime_channel> * 3, <tconstruct:slime_congealed>);
Smelter.addRecipe(<tconstruct:soil:4>, <tconstruct:soil:3>);
Smelter.addRecipe(waterBottle, <toughasnails:water_bottle:1>);
*/

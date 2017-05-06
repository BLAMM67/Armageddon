import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

// AbyssalCraft Integration
// https://github.com/Shinoow/AbyssalCraft-Integration/wiki/MineTweaker-methods
print("*** Tweaking AbyssalCraft ***");

// Having the statues in an ore makes quests easier
val oreStatue = <ore:statue>;
oreStatue.add(<abyssalcraft:cthulhustatue>);
oreStatue.add(<abyssalcraft:hasturstatue>);
oreStatue.add(<abyssalcraft:jzaharstatue>);
oreStatue.add(<abyssalcraft:azathothstatue>);
oreStatue.add(<abyssalcraft:nyarlathotepstatue>);
oreStatue.add(<abyssalcraft:yogsothothstatue>);
oreStatue.add(<abyssalcraft:shubniggurathstatue>);

// Add a ritual to create the Souls gauntlet
// mods.abyssalcraft.EnchantmentRitual.addRitual(<unlocalizedName>, <bookType>, <dimension>, <requiredEnergy>, <remnantHelp>, <enchantment>, [offerings], nbt*)
var bookType = 0;         //(0 = Normal, 1 = Abyssal Wasteland, 2 = Dreadlands, 3 = Omothol and 4 = Abyssalnomicon)
var dimension = -1;       //Abyssal_Wasteland: 50, The_Dreadlands: 51, Omothol: 52, The_Dark_Realm: 53, Any: -1
var requiredEnergy = 0.0;
var remnantHelp = false;
mods.abyssalcraft.InfusionRitual.addRitual("soul.gauntlet",
	bookType, dimension, requiredEnergy, remnantHelp, <souls:PickpocketGauntlet>, <minecraft:ender_pearl>, 
	[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>, null, <minecraft:iron_ingot>,null ,<minecraft:iron_ingot>]);

// Drop the ODB, and modify the ODB Core
recipes.remove(<abyssalcraft:odb>);
recipes.remove(<abyssalcraft:odbcore>);
bookType = 4;
dimension = 53;
requiredEnergy = 5000.0;
mods.abyssalcraft.InfusionRitual.addRitual("abyssalcraft.odbcore",
	bookType, dimension, requiredEnergy, remnantHelp, <abyssalcraft:odbcore>, <immersiveengineering:storage:5>, 
	[<abyssalcraft:abyblock>, <abyssalcraft:platec>, <abyssalcraft:abyblock>, <abyssalcraft:platec>, <abyssalcraft:abyblock>, <abyssalcraft:platec>,<abyssalcraft:abyblock> ,<abyssalcraft:platec>]);

// Add ritual to destroy Sacthoth's sword
bookType = 4;
dimension = 53;
requiredEnergy = 10000.0;
mods.abyssalcraft.InfusionRitual.addRitual("abyssalcraft.exreaper",
	bookType, dimension, requiredEnergy, remnantHelp, 
	<minecraft:stick>.withTag({ench: [], display: {Lore: ["The transformed sword of Sacthoth"], color: "red", Name: "Ex-Reaper"}}), 
	<abyssalcraft:soulreaper>.withTag({souls: 1024}), 
	[<minecraft:nether_star>, 
	<abyssalcraft:interdimensionalcage>.withTag({EntityName: "Grue"}), 
	<abyssalcraft:tieredenergycontainer:3>.withTag({PotEnergy: 0.0 as float}), 
	<abyssalcraft:interdimensionalcage>.withTag({EntityName: "Grue"}), 
	<abyssalcraft:abyssalnomicon>.withTag({PotEnergy: 100000.0 as float}), 
	<abyssalcraft:interdimensionalcage>.withTag({EntityName: "Grue"}),
	<minecraft:dragon_egg>,
	<abyssalcraft:interdimensionalcage>.withTag({EntityName: "Grue"})
]);


// Adding recipies so the necronomicons can be upgraded by copying from an already upgraded version
recipes.remove(<abyssalcraft:necronomicon>);
recipes.addShapeless(<abyssalcraft:necronomicon>, [<abyssalcraft:necronomicon>.reuse(), <minecraft:book>]);
recipes.addShapeless(<abyssalcraft:necronomicon_cor>, [<abyssalcraft:necronomicon_cor>.reuse(), <abyssalcraft:necronomicon>]);
recipes.addShapeless(<abyssalcraft:necronomicon_dre>, [<abyssalcraft:necronomicon_dre>.reuse(), <abyssalcraft:necronomicon_cor>]);
recipes.addShapeless(<abyssalcraft:abyssalnomicon>, [<abyssalcraft:abyssalnomicon>.reuse(), <abyssalcraft:necronomicon_dre>]);

// The baseline necronomicon can only be found in desert pyramids
val pyramidTable = LootTables.getTable("minecraft:chests/desert_pyramid");
val mainPool = pyramidTable.getPool("main");
mainPool.addItemEntryHelper(<abyssalcraft:necronomicon>, 20, 1, [Functions.setCount(1, 1)], []);

// Add recipes to duplicate keys
recipes.addShaped(<abyssalcraft:gatewaykey>, [
	[null, <abyssalcraft:cpearl>, <abyssalcraft:cpearl>],
	[null, <abyssalcraft:gatewaykey>.reuse(), <abyssalcraft:cpearl>],
	[<ore:rodBlaze>,null, null]
]);
recipes.addShaped(<abyssalcraft:gatewaykeydl>, [
	[null, <abyssalcraft:dreadshard>, <abyssalcraft:dreadshard>],
	[null, <abyssalcraft:gatewaykeydl>.reuse(), <abyssalcraft:dreadshard>],
	[<abyssalcraft:dreadshard>, null, null]
]);
recipes.addShaped(<abyssalcraft:gatewaykeyjzh>, [
	[null, <ore:ingotEthaxiumBrick>, <ore:ingotEthaxiumBrick>],
	[null, <abyssalcraft:gatewaykeyjzh>.reuse(), <ore:ingotEthaxiumBrick>],
	[<ore:ingotEthaxiumBrick>, null, null]
]);


// Replacing the vanilla furnace with the kiln in all recipies
recipes.remove(<abyssalcraft:crystallizer>);
recipes.addShaped(<abyssalcraft:crystallizer>, [
	[<abyssalcraft:dreadbrick>, <abyssalcraft:dreadbrick>, <abyssalcraft:dreadbrick>], 
	[<abyssalcraft:dreadiumblock>, <betterbeginnings:kiln>, <abyssalcraft:dreadiumblock>], 
	[<abyssalcraft:dreadbrick>, <abyssalcraft:dreadbrick>, <abyssalcraft:dreadbrick>]]);


// Replace recipies for coins and engravings
recipes.remove(<abyssalcraft:coin>);
recipes.remove(<abyssalcraft:engraving_blank>);

var castPan = <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"});
var clayCastPan = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:pan_head"});
var castSign = <tconstruct:cast>.withTag({PartType: "tconstruct:sign_head"});
var clayCastSign = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:sign_head"});

//Metal Press
//OutputStack, InputStack, MoldStack, Energy, SizeValue
mods.immersiveengineering.MetalPress.addRecipe(<abyssalcraft:coin>, <ore:ingotSilver>, castPan, 500, 1);
mods.immersiveengineering.MetalPress.addRecipe(<abyssalcraft:coin>, <ore:ingotSilver>, clayCastPan, 500, 1);
mods.immersiveengineering.MetalPress.addRecipe(<abyssalcraft:engraving_blank>, <ore:ingotSteel>, castSign, 500, 1);
mods.immersiveengineering.MetalPress.addRecipe(<abyssalcraft:engraving_blank>, <ore:ingotSteel>, clayCastSign, 500, 1);

// Replace the recipe for plates
recipes.remove(<abyssalcraft:ironp>);
mods.immersiveengineering.MetalPress.addRecipe(<abyssalcraft:ironp>, <ore:ingotIron>, castPan, 500, 1);
mods.immersiveengineering.MetalPress.addRecipe(<abyssalcraft:ironp>, <ore:ingotIron>, clayCastPan, 500, 1);


// Update the recipe for a chunk of corelium so it needs an Abyssalnite Coralium Ore instead of just Abyssalnite Stone.
// This gates the Abyssalnite pick behind the Obsidian mining level.
recipes.remove(<abyssalcraft:cchunk>);
recipes.addShaped(<abyssalcraft:cchunk>, [
	[<abyssalcraft:ccluster9>, <abyssalcraft:ccluster9>, <abyssalcraft:ccluster9>], 
	[<abyssalcraft:ccluster9>, <abyssalcraft:abycorore>, <abyssalcraft:ccluster9>], 
	[<abyssalcraft:ccluster9>, <abyssalcraft:ccluster9>, <abyssalcraft:ccluster9>]]);

// Remove the vanilla style tools
recipes.remove(<abyssalcraft:dsword>);
recipes.remove(<abyssalcraft:dpick>);
recipes.remove(<abyssalcraft:daxe>);
recipes.remove(<abyssalcraft:dshovel>);
recipes.remove(<abyssalcraft:dhoe>);
recipes.remove(<abyssalcraft:apick>);
recipes.remove(<abyssalcraft:asword>);
recipes.remove(<abyssalcraft:aaxe>);
recipes.remove(<abyssalcraft:ashovel>);
recipes.remove(<abyssalcraft:ahoe>);
recipes.remove(<abyssalcraft:corsword>);
recipes.remove(<abyssalcraft:corpick>);
recipes.remove(<abyssalcraft:coraxe>);
recipes.remove(<abyssalcraft:corshovel>);
recipes.remove(<abyssalcraft:corhoe>);
recipes.remove(<abyssalcraft:dreadiumsword>);
recipes.remove(<abyssalcraft:dreadiumpickaxe>);
recipes.remove(<abyssalcraft:dreadiumaxe>);
recipes.remove(<abyssalcraft:dreadiumshovel>);
recipes.remove(<abyssalcraft:dreadiumhoe>);
recipes.remove(<abyssalcraft:ethaxiumsword>);
recipes.remove(<abyssalcraft:ethaxiumpickaxe>);
recipes.remove(<abyssalcraft:ethaxiumaxe>);
recipes.remove(<abyssalcraft:ethaxiumshovel>);
recipes.remove(<abyssalcraft:ethaxiumhoe>);
recipes.remove(<abyssalcraft:dreadhilt>);
recipes.remove(<abyssalcraft:dreadkatana>);
recipes.remove(<abyssalcraft:dreadblade>);
recipes.remove(<abyssalcraft:corbow>);


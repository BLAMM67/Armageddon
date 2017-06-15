import mods.abyssalcraft.necronomicon.internal;
import mods.betterbeginnings.AdvancedCrafting;

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
mods.abyssalcraft.InfusionRitual.addRitual("soul_gauntlet",
	bookType, dimension, requiredEnergy, remnantHelp, <souls:PickpocketGauntlet>, <minecraft:ender_pearl>, 
	[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>, null, <minecraft:iron_ingot>, null, <minecraft:iron_ingot>]);

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


// Replace recipes for the machines
recipes.remove(<abyssalcraft:transmutator>);
recipes.remove(<abyssalcraft:crystallizer>);
recipes.remove(<abyssalcraft:materializer>);
recipes.addShaped(<abyssalcraft:transmutator>, [
		[<immersiveengineering:metalDecoration0:4>, <abyssalcraft:transmutationgem>, <immersiveengineering:metalDecoration0:4>],
		[<abyssalcraft:cbrick>, <immersiveengineering:metalDecoration0:3>, <abyssalcraft:cbrick>],
		[<abyssalcraft:corblock>, <forge:bucketFilled>.withTag({FluidName: "liquidantimatter", Amount: 1000}), <abyssalcraft:corblock>]]);
recipes.addShaped(<abyssalcraft:crystallizer>, [
		[<immersiveengineering:metalDecoration0:3>, <abyssalcraft:dreadbrick>, <immersiveengineering:metalDecoration0:3>],
		[<immersiveengineering:metalDecoration0:4>, <immersiveengineering:metalDevice1:1>, <immersiveengineering:metalDecoration0:4>],
		[<abyssalcraft:dreadiumblock>, <abyssalcraft:dreadbrick>, <abyssalcraft:dreadiumblock>]]);
recipes.addShaped(<abyssalcraft:materializer>, [
		[<immersiveengineering:metalDecoration0:1>, <abyssalcraft:ethbrick>, <immersiveengineering:metalDecoration0:1>],
		[<abyssalcraft:ethbrick>, <immersiveengineering:metalDecoration0:5>, <abyssalcraft:ethbrick>],
		[<abyssalcraft:ethaxiumblock>, <forge:bucketFilled>.withTag({FluidName: "liquidantimatter", Amount: 1000}), <abyssalcraft:ethaxiumblock>]]);


// Adding recipies so the necronomicons can be upgraded by copying from an already upgraded version
recipes.remove(<abyssalcraft:necronomicon>);
recipes.addShapeless(<abyssalcraft:necronomicon>, [<abyssalcraft:necronomicon>.reuse(), <minecraft:book>]);
recipes.addShapeless(<abyssalcraft:necronomicon_cor>, [<abyssalcraft:necronomicon_cor>.reuse(), <abyssalcraft:necronomicon>]);
recipes.addShapeless(<abyssalcraft:necronomicon_dre>, [<abyssalcraft:necronomicon_dre>.reuse(), <abyssalcraft:necronomicon_cor>]);
recipes.addShapeless(<abyssalcraft:abyssalnomicon>, [<abyssalcraft:abyssalnomicon>.reuse(), <abyssalcraft:necronomicon_dre>]);

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
recipes.removeShaped(<abyssalcraft:ironp>, [[<ore:ingotIron>],[<ore:ingotIron>]]);
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

//Remove the upgrade kits
recipes.remove(<abyssalcraft:cobbleu>);
recipes.remove(<abyssalcraft:ironu>);
recipes.remove(<abyssalcraft:goldu>);
recipes.remove(<abyssalcraft:diamondu>);
recipes.remove(<abyssalcraft:abyssalniteu>);
recipes.remove(<abyssalcraft:coraliumu>);
recipes.remove(<abyssalcraft:dreadiumu>);
recipes.remove(<abyssalcraft:ethaxiumu>);


// Add an advanced recipe for dreadium armor
recipes.remove(<abyssalcraft:dreadiumhelmet>);
recipes.remove(<abyssalcraft:dreadiumplate>);
recipes.remove(<abyssalcraft:dreadiumlegs>);
recipes.remove(<abyssalcraft:dreadiumboots>);
AdvancedCrafting.addRecipe(<abyssalcraft:dreadiumhelmet>,[
	[<abyssalcraft:dreadiumingot>, <abyssalcraft:dreadiumingot>, <abyssalcraft:dreadiumingot>],
	[<abyssalcraft:dreadiumingot>, null, <abyssalcraft:dreadiumingot>]],
	[<ore:nuggetDreadium> * 2, <betterbeginnings:leather_strip> * 3, <minecraft:wool:*> * 2]);

AdvancedCrafting.addRecipe(<abyssalcraft:dreadiumplate>,[
	[<abyssalcraft:dreadiumingot>, null, <abyssalcraft:dreadiumingot>],
	[<abyssalcraft:dreadiumingot>, <abyssalcraft:dreadiumingot>, <abyssalcraft:dreadiumingot>],
	[<abyssalcraft:dreadiumingot>, <abyssalcraft:dreadiumingot>, <abyssalcraft:dreadiumingot>]],
	[<ore:nuggetDreadium> * 6, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 4]);

AdvancedCrafting.addRecipe(<abyssalcraft:dreadiumlegs>,[
	[<abyssalcraft:dreadiumingot>, <abyssalcraft:dreadiumingot>, <abyssalcraft:dreadiumingot>],
	[<abyssalcraft:dreadiumingot>, null, <abyssalcraft:dreadiumingot>],
	[<abyssalcraft:dreadiumingot>, null, <abyssalcraft:dreadiumingot>]],
	[<ore:nuggetDreadium> * 4, <betterbeginnings:leather_strip> * 4, <minecraft:wool:*> * 1]);

AdvancedCrafting.addRecipe(<abyssalcraft:dreadiumboots>,[
	[<abyssalcraft:dreadiumingot>, null, <abyssalcraft:dreadiumingot>],
	[<abyssalcraft:dreadiumingot>, null, <abyssalcraft:dreadiumingot>]],
	[<ore:nuggetDreadium> * 3, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 3]);

// Add an advanced recipe for dreadium samurai armor
recipes.remove(<abyssalcraft:dreadiumsamuraihelmet>);
recipes.remove(<abyssalcraft:dreadiumsamuraiplate>);
recipes.remove(<abyssalcraft:dreadiumsamurailegs>);
recipes.remove(<abyssalcraft:dreadiumsamuraiboots>);
AdvancedCrafting.addRecipe(<abyssalcraft:dreadiumsamuraihelmet>,[
	[null, <abyssalcraft:dreadiumingot>, null],
	[<abyssalcraft:dreadplate>, <abyssalcraft:dreadiumhelmet>, <abyssalcraft:dreadplate>]],
	[<ore:nuggetDreadium> * 1, <betterbeginnings:leather_strip> * 2]);

AdvancedCrafting.addRecipe(<abyssalcraft:dreadiumsamuraiplate>,[
	[<abyssalcraft:dreadplate>, <abyssalcraft:dreadiumingot>, <abyssalcraft:dreadplate>],
	[<abyssalcraft:dreadplate>, <abyssalcraft:dreadiumplate>, <abyssalcraft:dreadplate>],
	[<abyssalcraft:dreadcloth>, <abyssalcraft:dreadcloth>, <abyssalcraft:dreadcloth>]],
	[<ore:nuggetDreadium> * 3, <betterbeginnings:leather_strip> * 2]);

AdvancedCrafting.addRecipe(<abyssalcraft:dreadiumsamurailegs>,[
	[<abyssalcraft:dreadplate>, <abyssalcraft:dreadiumlegs>, <abyssalcraft:dreadplate>],
	[<abyssalcraft:dreadcloth>, <abyssalcraft:dreadcloth>, <abyssalcraft:dreadcloth>],],
	[<ore:nuggetDreadium> * 2, <betterbeginnings:leather_strip> * 2]);

AdvancedCrafting.addRecipe(<abyssalcraft:dreadiumsamuraiboots>,[
	[<abyssalcraft:dreadcloth>, <abyssalcraft:dreadiumboots>, <abyssalcraft:dreadcloth>],
	[<abyssalcraft:dreadplanks>, <abyssalcraft:dreadplanks>, <abyssalcraft:dreadplanks>]],
	[<ore:nuggetDreadium> * 2, <betterbeginnings:leather_strip> * 2]);


// Add an advanced recipe for abyssalnite armor
recipes.remove(<abyssalcraft:ahelmet>);
recipes.remove(<abyssalcraft:aplate>);
recipes.remove(<abyssalcraft:alegs>);
recipes.remove(<abyssalcraft:aboots>);
AdvancedCrafting.addRecipe(<abyssalcraft:ahelmet>,[
	[<abyssalcraft:abyingot>, <abyssalcraft:abyingot>, <abyssalcraft:abyingot>],
	[<abyssalcraft:abyingot>, null, <abyssalcraft:abyingot>]],
	[<ore:nuggetAbyssalnite> * 2, <betterbeginnings:leather_strip> * 3, <minecraft:wool:*> * 2]);

AdvancedCrafting.addRecipe(<abyssalcraft:aplate>,[
	[<abyssalcraft:abyingot>, null, <abyssalcraft:abyingot>],
	[<abyssalcraft:abyingot>, <abyssalcraft:abyingot>, <abyssalcraft:abyingot>],
	[<abyssalcraft:abyingot>, <abyssalcraft:abyingot>, <abyssalcraft:abyingot>]],
	[<ore:nuggetAbyssalnite> * 6, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 4]);

AdvancedCrafting.addRecipe(<abyssalcraft:alegs>,[
	[<abyssalcraft:abyingot>, <abyssalcraft:abyingot>, <abyssalcraft:abyingot>],
	[<abyssalcraft:abyingot>, null, <abyssalcraft:abyingot>],
	[<abyssalcraft:abyingot>, null, <abyssalcraft:abyingot>]],
	[<ore:nuggetAbyssalnite> * 4, <betterbeginnings:leather_strip> * 4, <minecraft:wool:*> * 1]);

AdvancedCrafting.addRecipe(<abyssalcraft:aboots>,[
	[<abyssalcraft:abyingot>, null, <abyssalcraft:abyingot>],
	[<abyssalcraft:abyingot>, null, <abyssalcraft:abyingot>]],
	[<ore:nuggetAbyssalnite> * 3, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 3]);

// Add an advanced recipe for refined coralium armor
recipes.remove(<abyssalcraft:corhelmet>);
recipes.remove(<abyssalcraft:corplate>);
recipes.remove(<abyssalcraft:corlegs>);
recipes.remove(<abyssalcraft:corboots>);
AdvancedCrafting.addRecipe(<abyssalcraft:corhelmet>,[
	[<abyssalcraft:cingot>, <abyssalcraft:cingot>, <abyssalcraft:cingot>],
	[<abyssalcraft:cingot>, null, <abyssalcraft:cingot>]],
	[<ore:nuggetLiquifiedCoralium> * 2, <betterbeginnings:leather_strip> * 3, <minecraft:wool:*> * 2]);

AdvancedCrafting.addRecipe(<abyssalcraft:corplate>,[
	[<abyssalcraft:cingot>, null, <abyssalcraft:cingot>],
	[<abyssalcraft:cingot>, <abyssalcraft:cingot>, <abyssalcraft:cingot>],
	[<abyssalcraft:cingot>, <abyssalcraft:cingot>, <abyssalcraft:cingot>]],
	[<ore:nuggetLiquifiedCoralium> * 6, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 4]);

AdvancedCrafting.addRecipe(<abyssalcraft:corlegs>,[
	[<abyssalcraft:cingot>, <abyssalcraft:cingot>, <abyssalcraft:cingot>],
	[<abyssalcraft:cingot>, null, <abyssalcraft:cingot>],
	[<abyssalcraft:cingot>, null, <abyssalcraft:cingot>]],
	[<ore:nuggetLiquifiedCoralium> * 4, <betterbeginnings:leather_strip> * 4, <minecraft:wool:*> * 1]);

AdvancedCrafting.addRecipe(<abyssalcraft:corboots>,[
	[<abyssalcraft:cingot>, null, <abyssalcraft:cingot>],
	[<abyssalcraft:cingot>, null, <abyssalcraft:cingot>]],
	[<ore:nuggetLiquifiedCoralium> * 3, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 3]);

// Add an advanced recipe for plated coralium armor
recipes.remove(<abyssalcraft:corhelmetp>);
recipes.remove(<abyssalcraft:corplatep>);
recipes.remove(<abyssalcraft:corlegsp>);
recipes.remove(<abyssalcraft:corbootsp>);
AdvancedCrafting.addRecipe(<abyssalcraft:corhelmetp>,[
	[<abyssalcraft:cpearl>, <abyssalcraft:platec>, <abyssalcraft:cpearl>],
	[<abyssalcraft:platec>, <abyssalcraft:corhelmet>, <abyssalcraft:platec>],
	[<abyssalcraft:cingot>, <abyssalcraft:cingot>, <abyssalcraft:cingot>]],
	[<ore:nuggetLiquifiedCoralium> * 2, <betterbeginnings:leather_strip> * 3, <minecraft:wool:*> * 2]);

AdvancedCrafting.addRecipe(<abyssalcraft:corplatep>,[
	[<abyssalcraft:platec>, null, <abyssalcraft:platec>],
	[<abyssalcraft:cingot>, <abyssalcraft:corplate>, <abyssalcraft:cingot>],
	[<abyssalcraft:cingot>, <abyssalcraft:platec>, <abyssalcraft:cingot>]],
	[<ore:nuggetLiquifiedCoralium> * 6, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 4]);

AdvancedCrafting.addRecipe(<abyssalcraft:corlegsp>,[
	[<abyssalcraft:platec>, <abyssalcraft:corlegs>, <abyssalcraft:platec>],
	[<abyssalcraft:cingot>, null, <abyssalcraft:cingot>],
	[<abyssalcraft:cingot>, null, <abyssalcraft:cingot>]],
	[<ore:nuggetLiquifiedCoralium> * 4, <betterbeginnings:leather_strip> * 4, <minecraft:wool:*> * 1]);

AdvancedCrafting.addRecipe(<abyssalcraft:corbootsp>,[
	[<abyssalcraft:platec>, null, <abyssalcraft:platec>],
	[<abyssalcraft:cingot>, <abyssalcraft:corboots>, <abyssalcraft:cingot>]],
	[<ore:nuggetLiquifiedCoralium> * 3, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 3]);

// Add an advanced recipe for refined ethaxium armor
recipes.remove(<abyssalcraft:ethaxiumhelmet>);
recipes.remove(<abyssalcraft:ethaxiumplate>);
recipes.remove(<abyssalcraft:ethaxiumlegs>);
recipes.remove(<abyssalcraft:ethaxiumboots>);
AdvancedCrafting.addRecipe(<abyssalcraft:ethaxiumhelmet>,[
	[<abyssalcraft:ethaxiumingot>, <abyssalcraft:ethaxiumingot>, <abyssalcraft:ethaxiumingot>],
	[<abyssalcraft:ethaxiumingot>, null, <abyssalcraft:ethaxiumingot>]],
	[<ore:nuggetEthaxium> * 2, <betterbeginnings:leather_strip> * 3, <minecraft:wool:*> * 2]);

AdvancedCrafting.addRecipe(<abyssalcraft:ethaxiumplate>,[
	[<abyssalcraft:ethaxiumingot>, null, <abyssalcraft:ethaxiumingot>],
	[<abyssalcraft:ethaxiumingot>, <abyssalcraft:ethaxiumingot>, <abyssalcraft:ethaxiumingot>],
	[<abyssalcraft:ethaxiumingot>, <abyssalcraft:ethaxiumingot>, <abyssalcraft:ethaxiumingot>]],
	[<ore:nuggetEthaxium> * 6, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 4]);

AdvancedCrafting.addRecipe(<abyssalcraft:ethaxiumlegs>,[
	[<abyssalcraft:ethaxiumingot>, <abyssalcraft:ethaxiumingot>, <abyssalcraft:ethaxiumingot>],
	[<abyssalcraft:ethaxiumingot>, null, <abyssalcraft:ethaxiumingot>],
	[<abyssalcraft:ethaxiumingot>, null, <abyssalcraft:ethaxiumingot>]],
	[<ore:nuggetEthaxium> * 4, <betterbeginnings:leather_strip> * 4, <minecraft:wool:*> * 1]);

AdvancedCrafting.addRecipe(<abyssalcraft:ethaxiumboots>,[
	[<abyssalcraft:ethaxiumingot>, null, <abyssalcraft:ethaxiumingot>],
	[<abyssalcraft:ethaxiumingot>, null, <abyssalcraft:ethaxiumingot>]],
	[<ore:nuggetEthaxium> * 3, <betterbeginnings:leather_strip> * 2, <minecraft:wool:*> * 3]);



// Update the crystalizer page in the nomicon
mods.abyssalcraft.necronomicon.internal.addCraftingPage(3, <abyssalcraft:crystallizer>,
	[<abyssalcraft:dreadbrick>, <abyssalcraft:dreadbrick>, <abyssalcraft:dreadbrick>, <abyssalcraft:dreadiumblock>, <betterbeginnings:kiln>, <abyssalcraft:dreadiumblock>, <abyssalcraft:dreadbrick>, <abyssalcraft:dreadbrick>, <abyssalcraft:dreadbrick>],
	"A crystallizer is crafted using Dreadstone Bricks, blocks of Dreadium, and a Kiln.", 
	"specialmaterials", "dreadlands");
	
mods.abyssalcraft.necronomicon.internal.addImagePage(5, "armageddon:textures/blank_coin_engraving.png", 
	"A Blank Coin Engraving is crafted by putting a steel ingot through a metal press with a sign plate cast.", 
	"specialmaterials", "omothol");
mods.abyssalcraft.necronomicon.internal.addImagePage(7, "armageddon:textures/coin.png", 
	"A Coin is crafted by putting an iron ingot through a metal press with a pan cast.", 
	"specialmaterials", "omothol");

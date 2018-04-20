print("*** Tweaking Potion Gems ***");

val potentiaGem = <ytgems:gem_potentia>;

// Creating AbyssalCraft rituals for porion gems to increase the "magicalness" of both mods

recipes.remove(potentiaGem);
recipes.addShaped(potentiaGem, [
	[<ore:blockQuartz>, <ore:crystalHydrogen>, <ore:blockQuartz>], 
	[<ore:crystalSilica>, <ore:gemDiamond>, <ore:crystalOxygen>], 
	[<ore:blockQuartz>, <ore:crystalNitrogen>, <ore:blockQuartz>]]);

val bookType = 2; // Dreadlands
val dimension = -1; // Any
val requiredEnergy = 100.0;

recipes.remove(<ytgems:gem_speed>);
mods.abyssalcraft.InfusionRitual.addRitual("gem_speed", 
	bookType, dimension, requiredEnergy, false, <ytgems:gem_speed>, potentiaGem,
	[<abyssalcraft:crystalcluster:13>, 
	<minecraft:sugar>, 
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), 
	<minecraft:sugar>,
	<abyssalcraft:crystalcluster:13>, 
	<minecraft:sugar>, 
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), 
	<minecraft:sugar>]);

recipes.remove(<ytgems:gem_haste>);
mods.abyssalcraft.InfusionRitual.addRitual("gem_haste", 
	bookType, dimension, requiredEnergy, false, <ytgems:gem_haste>, potentiaGem,
	[<abyssalcraft:crystalcluster:1>, 
	<ore:dustRedstone>, 
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), 
	<ore:dustRedstone>,
	<abyssalcraft:crystalcluster:1>, 
	<ore:dustRedstone>, 
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), 
	<ore:dustRedstone>]);

recipes.remove(<ytgems:gem_strength>);
mods.abyssalcraft.InfusionRitual.addRitual("gem_strength", 
	bookType, dimension, requiredEnergy, false, <ytgems:gem_strength>, potentiaGem,
	[<abyssalcraft:crystalcluster:14>, 
	<minecraft:blaze_powder>, 
	<minecraft:potion>.withTag({Potion: "minecraft:strength"}), 
	<minecraft:blaze_powder>,
	<abyssalcraft:crystalcluster:14>, 
	<minecraft:blaze_powder>, 
	<minecraft:potion>.withTag({Potion: "minecraft:strength"}), 
	<minecraft:blaze_powder>]);

recipes.remove(<ytgems:gem_regeneration>);
mods.abyssalcraft.InfusionRitual.addRitual("gem_regeneration", 
	bookType, dimension, requiredEnergy, false, <ytgems:gem_regeneration>, potentiaGem,
	[<abyssalcraft:crystalcluster:11>, 
	<minecraft:ghast_tear>, 
	<minecraft:potion>.withTag({Potion: "minecraft:regeneration"}), 
	<minecraft:ghast_tear>,
	<abyssalcraft:crystalcluster:11>, 
	<minecraft:ghast_tear>, 
	<minecraft:potion>.withTag({Potion: "minecraft:regeneration"}), 
	<minecraft:ghast_tear>]);

recipes.remove(<ytgems:gem_resistance>);
mods.abyssalcraft.InfusionRitual.addRitual("gem_resistance", 
	bookType, dimension, requiredEnergy, false, <ytgems:gem_resistance>, potentiaGem,
	[<abyssalcraft:crystalcluster:7>, 
	<ore:ingotGold>, 
	<minecraft:golden_apple:1>, 
	<ore:ingotGold>,
	<abyssalcraft:crystalcluster:7>, 
	<ore:ingotGold>, 
	<minecraft:golden_apple:1>, 
	<ore:ingotGold>]);

recipes.remove(<ytgems:gem_resistance_fire>);
mods.abyssalcraft.InfusionRitual.addRitual("gem_resistance_fire", 
	bookType, dimension, requiredEnergy, false, <ytgems:gem_resistance_fire>, potentiaGem,
	[<abyssalcraft:crystalcluster:15>, 
	<minecraft:magma_cream>, 
	<minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}), 
	<minecraft:magma_cream>,
	<abyssalcraft:crystalcluster:15>, 
	<minecraft:magma_cream>, 
	<minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}), 
	<minecraft:magma_cream>]);

recipes.remove(<ytgems:gem_invisibility>);
mods.abyssalcraft.InfusionRitual.addRitual("gem_invisibility", 
	bookType, dimension, requiredEnergy, false, <ytgems:gem_invisibility>, potentiaGem,
	[<abyssalcraft:crystalcluster>, 
	<minecraft:fermented_spider_eye>, 
	<minecraft:potion>.withTag({Potion: "minecraft:invisibility"}), 
	<minecraft:fermented_spider_eye>,
	<abyssalcraft:crystalcluster>, 
	<minecraft:fermented_spider_eye>, 
	<minecraft:potion>.withTag({Potion: "minecraft:invisibility"}), 
	<minecraft:fermented_spider_eye>]);

recipes.remove(<ytgems:gem_absorption>);
mods.abyssalcraft.InfusionRitual.addRitual("gem_absorption", 
	bookType, dimension, requiredEnergy, false, <ytgems:gem_absorption>, potentiaGem,
	[<abyssalcraft:crystalcluster:2>, 
	<ore:ingotGold>, 
	<minecraft:golden_apple>, 
	<ore:ingotGold>,
	<abyssalcraft:crystalcluster:2>, 
	<ore:ingotGold>, 
	<minecraft:golden_apple>, 
	<ore:ingotGold>]);

recipes.remove(<ytgems:gem_night_vision>);
mods.abyssalcraft.InfusionRitual.addRitual("gem_night_vision", 
	bookType, dimension, requiredEnergy, false, <ytgems:gem_night_vision>, potentiaGem,
	[<abyssalcraft:crystalcluster:9>, 
	<minecraft:golden_carrot>, 
	<minecraft:potion>.withTag({Potion: "minecraft:night_vision"}), 
	<minecraft:golden_carrot>,
	<abyssalcraft:crystalcluster:9>, 
	<minecraft:golden_carrot>, 
	<minecraft:potion>.withTag({Potion: "minecraft:night_vision"}), 
	<minecraft:golden_carrot>]);

recipes.remove(<ytgems:gem_jump_boost>);
mods.abyssalcraft.InfusionRitual.addRitual("gem_jump_boost", 
	bookType, dimension, requiredEnergy, false, <ytgems:gem_jump_boost>, potentiaGem,
	[<abyssalcraft:crystalcluster:10>, 
	<minecraft:rabbit_foot>, 
	<minecraft:potion>.withTag({Potion: "minecraft:leaping"}), 
	<minecraft:rabbit_foot>,
	<abyssalcraft:crystalcluster:10>, 
	<minecraft:rabbit_foot>, 
	<minecraft:potion>.withTag({Potion: "minecraft:leaping"}), 
	<minecraft:rabbit_foot>]);

recipes.remove(<ytgems:gem_luck>);
mods.abyssalcraft.InfusionRitual.addRitual("gem_luck", 
	bookType, dimension, requiredEnergy, false, <ytgems:gem_luck>, potentiaGem,
	[<abyssalcraft:crystalcluster:10>, 
	<ore:gemLapis>, 
	<minecraft:potion>.withTag({Potion: "minecraft:luck"}), 
	<ore:gemLapis>,
	<abyssalcraft:crystalcluster:10>, 
	<ore:gemLapis>, 
	<minecraft:potion>.withTag({Potion: "minecraft:luck"}), 
	<ore:gemLapis>]);



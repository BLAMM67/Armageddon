import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

//https://github.com/Leviathan143/LootTweaker/wiki
print("*** Tweaking Loot Tables ***");

// The baseline necronomicon can only be found in desert pyramids
val pyramidTable = LootTables.getTable("minecraft:chests/desert_pyramid");
val pyramidMainPool = pyramidTable.getPool("main");
pyramidMainPool.addItemEntryHelper(<abyssalcraft:necronomicon>, 20, 1, [Functions.setCount(1, 1)], []);

// Replace the vanilla bow with tinkers wooden bow in fishing loot
val fishingTreasureTable = LootTables.getTable("minecraft:gameplay/fishing/treasure");
val fishingTreasurePool = fishingTreasureTable.getPool("main");
fishingTreasurePool.removeEntry("minecraft:bow");
val woodenBow = <tconstruct:shortbow>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, DrawSpeed: 1.0 as float, FreeModifiers: 3, ProjectileBonusDamage: 0.0 as float, Durability: 35, HarvestLevel: 0, Attack: 2.0 as float, Range: 1.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, DrawSpeed: 1.0 as float, FreeModifiers: 3, ProjectileBonusDamage: 0.0 as float, Durability: 35, HarvestLevel: 0, Attack: 2.0 as float, Range: 1.0 as float}, Special: {Categories: ["launcher", "tool"]}, TinkerData: {Materials: ["wood", "wood", "string"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "toolleveling"]});
fishingTreasurePool.addItemEntryHelper(woodenBow, 1, 1, [Functions.setCount(1, 1)], []);


// Add a blue slime ball drop to the blue slime
val blueSlimeTable = LootTables.getTable("tconstruct:entities/blueslime");
val blueSlimeballPool = blueSlimeTable.addPool("slimeball", 0, 1, 0, 0);
val blueSlimeBall = <tconstruct:edible:1>;
blueSlimeballPool.addItemEntry(blueSlimeBall, 1);

// Add an orange slime ball drop to the magma slime
val magmaCubeTable = LootTables.getTable("minecraft:entities/magma_cube");
val orangeSlimeballPool = magmaCubeTable.addPool("slimeball", 0, 1, 0, 0);
val orangeSlimeBall = <tconstruct:edible:4>;
orangeSlimeballPool.addItemEntry(orangeSlimeBall, 1);

// Add biotite drop to endermen
val endermenTable = LootTables.getTable("minecraft:entities/enderman");
val biotitePool = endermenTable.addPool("biotite", 0, 1, 0, 0);
val biotite = <quark:biotite>;
biotitePool.addItemEntry(biotite, 1);


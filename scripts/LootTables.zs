import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

print("*** Tweaking Loot Tables ***");

// The baseline necronomicon can only be found in desert pyramids
val pyramidTable = LootTables.getTable("minecraft:chests/desert_pyramid");
val mainPool = pyramidTable.getPool("main");
mainPool.addItemEntryHelper(<abyssalcraft:necronomicon>, 20, 1, [Functions.setCount(1, 1)], []);

// Replace the vanilla bow with tinkers wooden bow in fishing loot
val fishingTreasureTable = LootTables.getTable("minecraft:gameplay/fishing/treasure");
val fishingTreasurePool = fishingTreasureTable.getPool("main");
fishingTreasurePool.removeEntry("minecraft:bow");
val woodenBow = <tconstruct:shortbow>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, DrawSpeed: 1.0 as float, FreeModifiers: 3, ProjectileBonusDamage: 0.0 as float, Durability: 35, HarvestLevel: 0, Attack: 2.0 as float, Range: 1.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, DrawSpeed: 1.0 as float, FreeModifiers: 3, ProjectileBonusDamage: 0.0 as float, Durability: 35, HarvestLevel: 0, Attack: 2.0 as float, Range: 1.0 as float}, Special: {Categories: ["launcher", "tool"]}, TinkerData: {Materials: ["wood", "wood", "string"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "toolleveling"]});
fishingTreasurePool.addItemEntryHelper(woodenBow, 1, 1, [Functions.setCount(1, 1)], []);


import mods.tconstruct.Casting;

print("*** Tweaking OpenModularPassiveDefense ***");

// Replace hardened block recipies
recipes.remove(<ompd:hardened>);
recipes.remove(<ompd:hardened:1>);
recipes.remove(<ompd:hardened:2>);
recipes.remove(<ompd:hardened:3>);
recipes.remove(<ompd:hardened:4>);


recipes.addShaped(<ompd:hardened>, [
	[<ore:gravel>, <ore:cobblestone>, <ore:gravel> ],
	[<ore:cobblestone>, <immersiveengineering:stoneDecoration:7>, <ore:cobblestone>],
	[<ore:gravel>, <ore:cobblestone>, <ore:gravel>]
]);

Casting.addBasinRecipe(<ompd:hardened:1>,   <liquid:stone> * 144, <ompd:hardened>, true, 40);
Casting.addBasinRecipe(<ompd:hardened:2>, <liquid:clay> * 576,      <ompd:hardened:1>, true, 20);
Casting.addBasinRecipe(<ompd:hardened:3>, <liquid:obsidian> * 144,  <ompd:hardened:2>, true, 20);
Casting.addBasinRecipe(<ompd:hardened:4>, <liquid:manyullyn> * 144, <ompd:hardened:3>, true, 20);


// Replace hardened fence recipies
recipes.remove(<ompd:fence>);
recipes.remove(<ompd:fence:1>);
recipes.remove(<ompd:fence:2>);
recipes.remove(<ompd:fence:3>);
recipes.remove(<ompd:fence:4>);

recipes.addShaped(<ompd:fence>, [
	[<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1> ],
	[<immersiveengineering:material:1>, <immersiveengineering:woodenDecoration>, <immersiveengineering:material:1>],
	[<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>]
]);

recipes.addShaped(<ompd:fence:1>, [
	[<immersiveengineering:material:3>, <immersiveengineering:material:3>, <immersiveengineering:material:3> ],
	[<immersiveengineering:material:3>, <ompd:fence>, <immersiveengineering:material:3>],
	[<immersiveengineering:material:3>, <immersiveengineering:material:3>, <immersiveengineering:material:3>]
]);

val electrumRod = <tconstruct:tool_rod>.withTag({Material: "electrum"});
recipes.addShaped(<ompd:fence:2>, [
	[electrumRod, electrumRod, electrumRod ],
	[electrumRod, <ompd:fence:1>, electrumRod],
	[electrumRod, electrumRod, electrumRod]
]);

val cobaltRod = <tconstruct:tool_rod>.withTag({Material: "cobalt"});
recipes.addShaped(<ompd:fence:3>, [
	[cobaltRod, cobaltRod, cobaltRod ],
	[cobaltRod, <ompd:fence:2>, cobaltRod],
	[cobaltRod, cobaltRod, cobaltRod]
]);

val manyullynRod = <tconstruct:tool_rod>.withTag({Material: "manyullyn"});
recipes.addShaped(<ompd:fence:4>, [
	[manyullynRod, manyullynRod, manyullynRod ],
	[manyullynRod, <ompd:fence:3>, manyullynRod],
	[manyullynRod, manyullynRod, manyullynRod]
]);

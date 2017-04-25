import mods.betterbeginnings.AdvancedCrafting;

print("*** Tweaking Backpacks ***");

recipes.remove(<backpack:backpack_frame>);
recipes.remove(<backpack:backpack_frame:1>);
recipes.remove(<backpack:backpack_frame:2>);
recipes.remove(<backpack:backpack_piece>.withTag({leather_tier: "III", frame_tier: "III"}));
recipes.remove(<backpack:backpack_piece:1>.withTag({leather_tier: "III", frame_tier: "III"}));
recipes.remove(<backpack:backpack_piece:2>.withTag({leather_tier: "III", frame_tier: "III"}));

recipes.addShaped(<backpack:backpack_frame>,
	[[<minecraft:stick>, <betterbeginnings:twine>, <minecraft:stick>],
	[<betterbeginnings:twine>, null, <betterbeginnings:twine>],
	[<minecraft:stick>, <betterbeginnings:twine>, <minecraft:stick>]]
);
recipes.addShaped(<backpack:backpack_frame:1>,
	[[<ore:stickTreatedWood>, <immersiveengineering:wirecoil:3>, <ore:stickTreatedWood>],
	 [<immersiveengineering:wirecoil:3>, null, <immersiveengineering:wirecoil:3>],
	 [<ore:stickTreatedWood>, <immersiveengineering:wirecoil:3>, <ore:stickTreatedWood>]]
);
recipes.addShaped(<backpack:backpack_frame:2>,
	[[<ore:stickSteel>, <betterbeginnings:thread>, <ore:stickSteel>],
	[<betterbeginnings:thread>, null, <betterbeginnings:thread>],
	[<ore:stickSteel>, <betterbeginnings:thread>, <ore:stickSteel>]]
);

recipes.addShaped(<backpack:backpack_piece>.withTag({leather_tier: "III", frame_tier: "III"}),
	[[<immersiveengineering:material:5>,<immersiveengineering:material:5>,<immersiveengineering:material:5>],
	[<immersiveengineering:material:5>,<backpack:backpack_frame:1>,<immersiveengineering:material:5>],
	[<immersiveengineering:material:5>,null,<immersiveengineering:material:5>]]
);

recipes.addShaped(<backpack:backpack_piece:1>.withTag({leather_tier: "III", frame_tier: "III"}),
	[[<betterbeginnings:cloth>,<betterbeginnings:cloth>,<betterbeginnings:cloth>],
	[<betterbeginnings:cloth>,<backpack:backpack_frame:2>,<betterbeginnings:cloth>],
	[<betterbeginnings:cloth>,<betterbeginnings:cloth>,<betterbeginnings:cloth>]]
);

recipes.addShaped(<backpack:backpack_piece:2>.withTag({leather_tier: "III", frame_tier: "III"}),
	[[<immersiveengineering:material:5>,null,<immersiveengineering:material:5>],
	[<immersiveengineering:material:5>,<backpack:backpack_frame:1>,<immersiveengineering:material:5>],
	[<immersiveengineering:material:5>,<immersiveengineering:material:5>,<immersiveengineering:material:5>]]
);


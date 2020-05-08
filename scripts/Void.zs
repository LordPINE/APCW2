import mods.botaniatweaks.Agglomeration;

val Bucket = <minecraft:bucket>;
val VoidBucket = <forge:bucketfilled>.withTag({FluidName: "condensed_void", Amount: 1000});

Agglomeration.addRecipe(VoidBucket, [Bucket], 100000, 0x888888, 0x000000, <minecraft:bedrock>, <botania:quartztypedark>, <botania:quartztypedark>);
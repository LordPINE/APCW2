import mods.bloodmagic.AlchemyArray;

val LuminousRefined = <contenttweaker:luminous_refined>;
val AurorianPortalFrame = <theaurorian:aurorianportalframebricks>;
val AurorianStone = <theaurorian:aurorianstone>;

recipes.remove(AurorianPortalFrame);
AlchemyArray.addRecipe(AurorianPortalFrame, AurorianStone, LuminousRefined);
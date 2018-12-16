import mods.extendedcrafting.CombinationCrafting;
import mods.skyresources.combustion;

val EbonyIngot = <ore:ingotEbonyPsi>;
val DarkMatter = <skyresources:baseitemcomponent:3>;
val SteadfastWill = <bloodmagic:monster_soul:4>;
val CorruptedTear = <evilcraft:corrupted_tear>;
val MournerEssence = <defiledlands:essence_mourner>;
val DarkPearl = <midnight:dark_pearl>;
val CorruptedIngot = <soulshardstow:materials>;
val AntiSeptic = <bloodmagic:component:26>;
val FireDragonBlood = <iceandfire:fire_dragon_blood>;
val GarmonBozia = <evilcraft:garmonbozia>;
val HardenedCoalBlock = <skyresources:compressedcoalblock>;

combustion.removeRecipe(DarkMatter);
CombinationCrafting.addRecipe(DarkMatter * 4, 10000, HardenedCoalBlock, [CorruptedIngot,EbonyIngot,SteadfastWill,CorruptedTear,MournerEssence,DarkPearl,CorruptedIngot,EbonyIngot,AntiSeptic,FireDragonBlood,GarmonBozia,DarkPearl]);
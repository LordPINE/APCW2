import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.astralsorcery.Utils;
import mods.astralsorcery.Altar;

val SkyRootTools = [
    <aether_legacy:skyroot_pickaxe>,
    <aether_legacy:skyroot_axe>,
    <aether_legacy:skyroot_shovel>,
    <aether_legacy:skyroot_sword>
] as IItemStack[];

val AetherAltar = <aether_legacy:enchanter>;
val SkyrootPlank = <aether_legacy:skyroot_plank>;
val HolyStone = <aether_legacy:holystone>;
val Zanite = <aether_legacy:zanite_gemstone>;
val MarblePillar = <astralsorcery:blockmarble:2>;
val CelestialCrystal = Utils.getCrystalORIngredient(true, false) as IIngredient;

for i, item in SkyRootTools {
    recipes.remove(item);
    item.addTooltip(format.red("Disabled. These things are a dupe bug waiting to happen."));
}

<aether_legacy:sun_altar>.addTooltip(format.red("Disabled. No free time changing."));

recipes.remove(AetherAltar);
Altar.addAttunementAltarRecipe("ct/altar/aether_altar", AetherAltar, 1400, 1200, [SkyrootPlank,SkyrootPlank,SkyrootPlank,MarblePillar,CelestialCrystal,MarblePillar,HolyStone,Zanite,HolyStone,SkyrootPlank,SkyrootPlank,HolyStone,HolyStone]);

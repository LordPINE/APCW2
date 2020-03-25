import mods.astralsorcery.Altar;
import crafttweaker.item.IItemStack;

val AlfGlass = <botania:elfglass>;
val AlchemicalBrass = <embers:ingot_dawnstone>;
val LookingGlass = <astralsorcery:itemhandtelescope>;
val GlassLens = <astralsorcery:itemcraftingcomponent:3>;
val IronRod = <ore:rodIron>;
val Telecope = <astralsorcery:blockmachine>;
val ManaDiamond = <botania:manaresource:2>;
val MarblePillar = <astralsorcery:blockmarble:2>;
val RockCrystal = <astralsorcery:itemrockcrystalsimple>;
val StarlightBucket = <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000});
val StarlightAltar = <astralsorcery:blockaltar:1>;
val DawnStonePlate = <ore:plateDawnstone>;
val RemedyBucket = <aether_legacy:skyroot_bucket:3>;
val Aquamarine = <ore:gemAquamarine>;
val EngravedMarble = <astralsorcery:blockmarble:5>;
val ManaRune = <botania:rune:8>;
val ThaumiumPlate = <ore:plateDawnstone>;
val StarmetalIngot = <astralsorcery:itemcraftingcomponent:1>;
val CelestialAltar = <astralsorcery:blockaltar:2>;
val IridescentAltar = <astralsorcery:blockaltar:3>;
val SeasonRunes = [<botania:rune:7>,<botania:rune:6>,<botania:rune:5>,<botania:rune:4>] as IItemStack[];
val CelestialCrystal = <astralsorcery:itemcelestialcrystal>;
val ResonatingGem = <astralsorcery:itemcraftingcomponent:4>;
val AetheriumPlate = <ore:plateAether>;
val RunedMarble = <astralsorcery:blockmarble:6>;
val SootyMarble = <astralsorcery:blockblackmarble>;

Altar.addConstellationAltarRecipe("internal/altar/telescope", Telecope, 3000, 200, [AlfGlass,AlchemicalBrass,null,AlchemicalBrass,LookingGlass,GlassLens,IronRod,IronRod,IronRod,AlfGlass,null,IronRod,IronRod,AlchemicalBrass,null,AlchemicalBrass,null,null,null,null,null]);

Altar.addDiscoveryAltarRecipe("internal/altar/upgrade_tier2", StarlightAltar, 700, 400, [MarblePillar,StarlightBucket,MarblePillar,ManaDiamond,AlchemicalBrass,ManaDiamond,MarblePillar,RockCrystal,MarblePillar]);

Altar.addAttunementAltarRecipe("internal/altar/upgrade_tier3", CelestialAltar, 1400, 1200, [RemedyBucket,Aquamarine,RemedyBucket,MarblePillar,ManaRune,MarblePillar,EngravedMarble,ThaumiumPlate,EngravedMarble,DawnStonePlate,DawnStonePlate,StarmetalIngot,StarmetalIngot]);

Altar.addConstellationAltarRecipe("internal/altar/upgrade_tier4", IridescentAltar, 3200, 500, [SeasonRunes[0],GlassLens,SeasonRunes[1],ResonatingGem, CelestialCrystal, ResonatingGem,SeasonRunes[2],GlassLens,SeasonRunes[3], AetheriumPlate, AetheriumPlate, AetheriumPlate, AetheriumPlate, RunedMarble, RunedMarble, RunedMarble, RunedMarble, SootyMarble, SootyMarble, SootyMarble, SootyMarble]);
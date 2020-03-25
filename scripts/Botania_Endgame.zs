import mods.astralsorcery.Altar;
import mods.botania.RuneAltar;
import crafttweaker.item.IItemStack;

val ElvenGateway = <botania:alfheimportal>;
val TerraSteel = <botania:manaresource:4>;
val AetheriumGem = <aetherworks:item_resource:5>;
val AevitasStar = <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.aevitas"}});
val LivingWood = <botania:livingwood>;
val EagleBone = <silentgems:craftingmaterial:8>;
val ShimmerPetal = <midnight:ghost_plant>;
val CelestialGateway = <astralsorcery:blockcelestialgateway>;
val GlimmeringLivingWood = <botania:livingwood:5>;
val GaiaPylon = <botania:pylon:2>;
val ElementiumIngot = <botania:manaresource:7>;
val SuperChargedRoseQuartz = <silentgems:gemsuper:45>;
val PixieDust = <botania:manaresource:8>;
val PinkNitor = <defiledlands:scarlite>;
val RedMiddleGem = <thebetweenlands:crimson_middle_gem>;
val EnchantedGravitite = <aether_legacy:enchanted_gravitite>;
val NaturaPylon = <botania:pylon:1>;
val SinRunes = [<botania:rune:9>,<botania:rune:10>,<botania:rune:11>,<botania:rune:12>,<botania:rune:13>,<botania:rune:14>,<botania:rune:15>] as IItemStack[];
val SeasonRunes = [<botania:rune:7>,<botania:rune:6>,<botania:rune:5>,<botania:rune:4>] as IItemStack[];
val BasicRunes = [<botania:rune:1>,<botania:rune>,<botania:rune:2>,<botania:rune:3>] as IItemStack[];
val EnrichedChaos = <silentgems:craftingmaterial:1>;
val TerraSteelNugget = <botania:manaresource:18>;

recipes.remove(ElvenGateway);
Altar.addTraitAltarRecipe("elven_gateway_altar", ElvenGateway, 7500, 1200,
 [AetheriumGem,ShimmerPetal,AetheriumGem,AevitasStar,CelestialGateway,AevitasStar,AetheriumGem,EagleBone,AetheriumGem, //Inner part
 TerraSteel,TerraSteel,TerraSteel,TerraSteel,LivingWood,LivingWood,LivingWood,LivingWood,LivingWood,LivingWood,LivingWood,LivingWood,GlimmeringLivingWood,GlimmeringLivingWood,GlimmeringLivingWood,GlimmeringLivingWood, //Outer part
 <botania:rune:9>,<botania:rune:10>,<botania:rune:11>,<botania:rune:12>,<botania:rune:13>,<botania:rune:14>,<botania:rune:15>],"astralsorcery.constellation.aevitas"); //Extra items

recipes.remove(GaiaPylon);
Altar.addTraitAltarRecipe("gaia_pylon_altar", GaiaPylon, 7500, 600,
 [SuperChargedRoseQuartz,PinkNitor,SuperChargedRoseQuartz,PixieDust,NaturaPylon,PixieDust,SuperChargedRoseQuartz,PinkNitor,SuperChargedRoseQuartz, //Inner part
 null,null,null,null,ElementiumIngot,ElementiumIngot,null,null,null,null,ElementiumIngot,ElementiumIngot,RedMiddleGem,null,null,RedMiddleGem, //Outer part
 EnchantedGravitite,EnchantedGravitite,EnchantedGravitite,EnchantedGravitite],"astralsorcery.constellation.pelotrio"); //Extra items

for i, item in SinRunes {
    RuneAltar.removeRecipe(item);
}

RuneAltar.addRecipe(SinRunes[0],[BasicRunes[3],SeasonRunes[2],EnrichedChaos,TerraSteelNugget,AetheriumGem],12000);
RuneAltar.addRecipe(SinRunes[1],[BasicRunes[0],SeasonRunes[0],EnrichedChaos,TerraSteelNugget,AetheriumGem],12000);
RuneAltar.addRecipe(SinRunes[2],[BasicRunes[1],SeasonRunes[3],EnrichedChaos,TerraSteelNugget,AetheriumGem],12000);
RuneAltar.addRecipe(SinRunes[3],[BasicRunes[3],SeasonRunes[1],EnrichedChaos,TerraSteelNugget,AetheriumGem],12000);
RuneAltar.addRecipe(SinRunes[4],[BasicRunes[2],SeasonRunes[0],EnrichedChaos,TerraSteelNugget,AetheriumGem],12000);
RuneAltar.addRecipe(SinRunes[5],[BasicRunes[1],SeasonRunes[0],EnrichedChaos,TerraSteelNugget,AetheriumGem],12000);
RuneAltar.addRecipe(SinRunes[6],[BasicRunes[0],SeasonRunes[2],EnrichedChaos,TerraSteelNugget,AetheriumGem],12000);
import mods.embers.Mixer;
import mods.botaniatweaks.Agglomeration;
import mods.evilcraft.BloodInfuser;

val StarLight = <liquid:astralsorcery.liquidstarlight>;
val Blood = <liquid:evilcraftblood>;
val AlchemicalBase = <liquid:alchemical_base>;
val ResonantQuartz = <contenttweaker:resonant_quartz>;
val ManaPearl = <botania:manaresource:1>;
val Quartz = <minecraft:quartz>;
val AlchemicalSlurry = <liquid:alchemical_redstone>;

Mixer.add(AlchemicalBase * 16,[Blood*8, StarLight*8, AlchemicalSlurry * 32]);

Agglomeration.addRecipe(ResonantQuartz, [Quartz, ManaPearl], 100000, 0xFFFFFF, 0x0000FF, <botania:quartztypedark>, <botania:quartztypemana>, <botania:quartztypeelf>);

BloodInfuser.addRecipe(Quartz, Blood*10000, 3, ResonantQuartz, 800, 0); 

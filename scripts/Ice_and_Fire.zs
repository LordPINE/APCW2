import mods.embers.Alchemy;
import mods.modularmachinery.RecipeBuilder;

Alchemy.add(<iceandfire:dragonegg_red>, [<iceandfire:fire_dragon_heart>,<iceandfire:dragonbone>,<iceandfire:dragonbone>,<iceandfire:dragonbone>,<contenttweaker:igneous_turbocharged>], {"igneous":192 to 256, "luminous":64 to 128});

RecipeBuilder.newBuilder("ice_dragon_egg", "aquatic_aether_processor", 200)
    .addStormWeatherRequirement()
    .addItemInput(<iceandfire:dragonbone> * 3)
    .addItemInput(<iceandfire:ice_dragon_heart>)
    .addItemInput(<contenttweaker:aqueous_turbocharged>)
    .addFluidInput(<liquid:glacium> * 20000)
    .addItemOutput(<iceandfire:dragonegg_blue>)
    .build();

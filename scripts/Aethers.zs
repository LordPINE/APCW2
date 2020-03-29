import crafttweaker.item.IItemStack;
import mods.rustic.CrushingTub;
val WhitePlants = [
    <plants2:cosmetic_4:12>,
    <plants2:cosmetic_3:9>,
    <plants2:cosmetic_2:15>,
    <plants2:cosmetic_2:2>,
    <plants2:cosmetic_2:1>,
    <plants2:cosmetic_1:12>,
    <plants2:cosmetic_1:8>,
    <plants2:cosmetic_0>,
    <plants2:cosmetic_0:2>,
    <plants2:double_0:4>,
    <plants2:double_0>,
    <plants2:cosmetic_6>,
    <plants2:cosmetic_5:12>,
    <plants2:cosmetic_5:9>
] as IItemStack[];
val PurplePlants = [
    <plants2:cosmetic_3:11>,
    <plants2:cosmetic_4:3>,
    <plants2:cosmetic_4:15>,
    <plants2:cosmetic_5:6>,
    <plants2:cosmetic_5:13>,
    <plants2:desert_0>,
    <plants2:desert_0:4>,
    <plants2:desert_1>,
    <plants2:double_0:1>,
    <plants2:cosmetic_0:9>,
    <plants2:cosmetic_1:4>,
    <plants2:cosmetic_1:9>,
    <plants2:cosmetic_3:8>
] as IItemStack[];
val BluePlants = [
    <plants2:cosmetic_1>,
    <plants2:cosmetic_1:7>,
    <plants2:cosmetic_2:6>,
    <plants2:cosmetic_4:4>,
    <plants2:cosmetic_5:1>,
    <plants2:cosmetic_5:3>,
    <plants2:desert_0:12>
] as IItemStack[];
val RedPlants = [
    <plants2:cosmetic_0:14>,
    <plants2:cosmetic_1:13>,
    <plants2:cosmetic_1:14>,
    <plants2:cosmetic_3>,
    <plants2:cosmetic_3:2>,
    <plants2:cosmetic_3:6>,
    <plants2:cosmetic_5:7>,
    <plants2:cosmetic_5:8>,
    <plants2:double_0:5>,
    <plants2:cosmetic_0:1>,
    <plants2:cosmetic_0:5>,
    <plants2:cosmetic_0:7>,
    <plants2:cosmetic_0:8>,
    <plants2:cosmetic_0:13>
] as IItemStack[];
val BrownPlants = [
    <plants2:cosmetic_1:6>,
    <plants2:cosmetic_2:14>,
    <plants2:cosmetic_4:10>,
    <plants2:desert_0:8>,
    <plants2:desert_0:15>,
    <plants2:desert_1:1>
] as IItemStack[];
val YellowPlants = [
    <plants2:cosmetic_3:15>,
    <plants2:cosmetic_3:10>,
    <plants2:cosmetic_3:4>,
    <plants2:cosmetic_2:12>,
    <plants2:cosmetic_2:10>,
    <plants2:cosmetic_2:4>,
    <plants2:cosmetic_2:3>,
    <plants2:cosmetic_2>,
    <plants2:cosmetic_1:11>,
    <plants2:desert_0:14>,
    <plants2:double_0:3>,
    <plants2:desert_0:7>,
    <plants2:desert_0:5>,
    <plants2:desert_0:1>,
    <plants2:cosmetic_5:4>,
    <plants2:cosmetic_5:2>,
    <plants2:cosmetic_4:8>,
    <plants2:cosmetic_4:7>,
    <plants2:cosmetic_4:6>,
    <plants2:cosmetic_4>
] as IItemStack[];
val PlantMatters = [
    <contenttweaker:luminous_plant_matter>,
    <contenttweaker:tenebrous_plant_matter>,
    <contenttweaker:aqueous_plant_matter>,
    <contenttweaker:igneous_plant_matter>,
    <contenttweaker:terronous_plant_matter>,
    <contenttweaker:aeronous_plant_matter>
] as IItemStack[];
val CrudeAethers = [
    <contenttweaker:luminous_crude>,
    <contenttweaker:tenebrous_crude>,
    <contenttweaker:aqueous_crude>,
    <contenttweaker:igneous_crude>,
    <contenttweaker:terronous_crude>,
    <contenttweaker:aeronous_crude>
] as IItemStack[];

for plant in WhitePlants {
    CrushingTub.addRecipe(<liquid:water> * 100, PlantMatters[0], plant);
}
for plant in PurplePlants {
    CrushingTub.addRecipe(<liquid:water> * 100, PlantMatters[1], plant);
}
for plant in BluePlants {
    CrushingTub.addRecipe(<liquid:water> * 100, PlantMatters[2], plant);
}
for plant in RedPlants {
    CrushingTub.addRecipe(<liquid:water> * 100, PlantMatters[3], plant);
}
for plant in BrownPlants {
    CrushingTub.addRecipe(<liquid:water> * 100, PlantMatters[4], plant);
}
for plant in YellowPlants {
    CrushingTub.addRecipe(<liquid:water> * 100, PlantMatters[5], plant);
}
for i,matter in PlantMatters {
    recipes.addShapeless(CrudeAethers[i],[matter,<ore:dustRedstone>]);
}
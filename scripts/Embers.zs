import mods.thaumcraft.ArcaneWorkbench;

val IronPlate = <ore:plateIron>;
val ThaumiumPlate = <ore:plateThaumium>;
val SimpleMechanism = <thaumcraft:mechanism_simple>;
val Alumentum = <thaumcraft:alumentum>;
val MechanicalCore = <embers:mech_core>;
val EmberBore = <embers:ember_bore>;
val BrassPlate = <ore:plateBrass>;
val CaminiteStairs = <embers:stairs_caminite_brick>;
val MotiveCore = <embers:ancient_motive_core>;

recipes.remove(MechanicalCore);
ArcaneWorkbench.registerShapedRecipe("embers_mechanical_core", "", 50, [<aspect:ignis>, <aspect:ordo>], MechanicalCore, [[IronPlate,ThaumiumPlate,IronPlate],[SimpleMechanism,Alumentum,SimpleMechanism],[IronPlate,ThaumiumPlate,IronPlate]]);

recipes.remove(EmberBore);
ArcaneWorkbench.registerShapedRecipe("embers_ember_bore", "", 150, [<aspect:ignis>, <aspect:perditio>], EmberBore, [[CaminiteStairs,MotiveCore,CaminiteStairs],[SimpleMechanism,MechanicalCore,SimpleMechanism],[BrassPlate,BrassPlate,BrassPlate]]);
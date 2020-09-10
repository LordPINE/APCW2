val EmberBore = <embers:ember_bore>;
val SilverPlate = <ore:plateSilver>;
val SawBlade = <thermalfoundation:material:657>;
val MechanicalCore = <embers:mech_core>;
val IgneousCrude = <contenttweaker:igneous_crude>;
val LeadPlate = <ore:plateLead>;
val TinyGoldDust = <mysticalworld:gold_dust_tiny>;
val IronIngot = <ore:ingotIron>;
val CaminiteStairs = <embers:stairs_caminite_brick>;

recipes.remove(MechanicalCore);
recipes.addShaped(MechanicalCore, [[IronIngot,IgneousCrude,IronIngot],[LeadPlate,TinyGoldDust,LeadPlate],[IronIngot,LeadPlate,IronIngot]]);

recipes.remove(EmberBore);
recipes.addShaped(EmberBore, [[CaminiteStairs, IgneousCrude, CaminiteStairs],[SilverPlate, MechanicalCore, SilverPlate],[SawBlade, SawBlade, SawBlade]]);
val EmberBore = <embers:ember_bore>;
val SilverPlate = <ore:plateSilver>;
val SawBlade = <thermalfoundation:material:657>;
val MechanicalCore = <embers:mech_core>;
val IgneousCrude = <contenttweaker:igneous_crude>;
val IgneousRefined = <contenttweaker:igneous_refined>;
val LeadPlate = <ore:plateLead>;
val TinyGoldDust = <mysticalworld:gold_dust_tiny>;
val IronIngot = <ore:ingotIron>;
val CaminiteStairs = <embers:stairs_caminite_brick>;
val CaminitePlate = <embers:plate_caminite>;
val CopperIngot = <ore:ingotCopper>;
val GoldNugget = <ore:nuggetGold>;
val EmberEmitter = <embers:ember_emitter>;
val EmberReceptor = <embers:ember_receiver>;

recipes.remove(MechanicalCore);
recipes.addShaped(MechanicalCore, [[IronIngot,IgneousCrude,IronIngot],[LeadPlate,TinyGoldDust,LeadPlate],[IronIngot,LeadPlate,IronIngot]]);

recipes.remove(EmberBore);
recipes.addShaped(EmberBore, [[CaminiteStairs, IgneousCrude, CaminiteStairs],[SilverPlate, MechanicalCore, SilverPlate],[SawBlade, SawBlade, SawBlade]]);

recipes.remove(EmberEmitter);
recipes.addShaped(EmberEmitter * 4, [[IgneousRefined, GoldNugget, IgneousRefined],[LeadPlate, CopperIngot, LeadPlate],[CaminitePlate, CopperIngot, CaminitePlate]]);

recipes.remove(EmberReceptor);
recipes.addShaped(EmberReceptor * 4, [[CaminitePlate, IgneousRefined, CaminitePlate],[LeadPlate, GoldNugget, LeadPlate]]);
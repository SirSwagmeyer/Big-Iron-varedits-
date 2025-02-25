
/datum/chemical_reaction/formaldehyde
	name = "formaldehyde"
	id = /datum/reagent/toxin/formaldehyde
	results = list(/datum/reagent/toxin/formaldehyde = 3)
	required_reagents = list(/datum/reagent/consumable/ethanol = 1, /datum/reagent/oxygen = 1, /datum/reagent/silver = 1)
	required_temp = 420

/datum/chemical_reaction/fentanyl
	name = "fentanyl"
	id = /datum/reagent/toxin/fentanyl
	results = list(/datum/reagent/toxin/fentanyl = 1)
	required_reagents = list(/datum/reagent/drug/space_drugs = 1)
	required_temp = 674

/datum/chemical_reaction/cyanide
	name = "Cyanide"
	id = /datum/reagent/toxin/cyanide
	results = list(/datum/reagent/toxin/cyanide = 3)
	required_reagents = list(/datum/reagent/oil = 1, /datum/reagent/ammonia = 1, /datum/reagent/oxygen = 1)
	required_temp = 380

/datum/chemical_reaction/itching_powder
	name = "Itching Powder"
	id = /datum/reagent/toxin/itching_powder
	results = list(/datum/reagent/toxin/itching_powder = 3)
	required_reagents = list(/datum/reagent/fuel = 1, /datum/reagent/ammonia = 1, /datum/reagent/medicine/charcoal = 1)

/datum/chemical_reaction/facid
	name = "Fluorosulfuric acid"
	id = /datum/reagent/toxin/acid/fluacid
	results = list(/datum/reagent/toxin/acid/fluacid = 4)
	required_reagents = list(/datum/reagent/toxin/acid = 1, /datum/reagent/fluorine = 1, /datum/reagent/hydrogen = 1, /datum/reagent/potassium = 1)
	required_temp = 380

/datum/chemical_reaction/fantiacid
	name = "Fluoroantimonic acid"
	id = /datum/reagent/toxin/acid/fantiacid
	results = list(/datum/reagent/toxin/acid/fantiacid = 1)
	required_reagents = list(/datum/reagent/toxin/acid/fluacid = 30, /datum/reagent/fluorine = 30, /datum/reagent/hydrogen = 30)
	required_temp = 580

/datum/chemical_reaction/sulfonal
	name = "sulfonal"
	id = /datum/reagent/toxin/sulfonal
	results = list(/datum/reagent/toxin/sulfonal = 3)
	required_reagents = list(/datum/reagent/acetone = 1, /datum/reagent/diethylamine = 1, /datum/reagent/sulfur = 1)

/datum/chemical_reaction/lipolicide
	name = "lipolicide"
	id = /datum/reagent/toxin/lipolicide
	results = list(/datum/reagent/toxin/lipolicide = 3)
	required_reagents = list(/datum/reagent/mercury = 1, /datum/reagent/diethylamine = 1, /datum/reagent/medicine/ephedrine = 1)

/datum/chemical_reaction/mutagen
	name = "Unstable mutagen"
	id = /datum/reagent/toxin/mutagen
	results = list(/datum/reagent/toxin/mutagen = 3)
	required_reagents = list(/datum/reagent/radium = 1, /datum/reagent/phosphorus = 1, /datum/reagent/chlorine = 1)

/datum/chemical_reaction/lexorin
	name = "Lexorin"
	id = /datum/reagent/toxin/lexorin
	results = list(/datum/reagent/toxin/lexorin = 3)
	required_reagents = list(/datum/reagent/toxin/plasma = 1, /datum/reagent/hydrogen = 1, /datum/reagent/oxygen = 1)

/datum/chemical_reaction/chloralhydrate
	name = "Chloral Hydrate"
	id = /datum/reagent/toxin/chloralhydrate
	results = list(/datum/reagent/toxin/chloralhydrate = 1)
	required_reagents = list(/datum/reagent/consumable/ethanol = 1, /datum/reagent/chlorine = 3, /datum/reagent/water = 1)

/datum/chemical_reaction/mutetoxin //i'll just fit this in here snugly between other unfun chemicals :v
	name = "Mute Toxin"
	id = /datum/reagent/toxin/mutetoxin
	results = list(/datum/reagent/toxin/mutetoxin = 2)
	required_reagents = list(/datum/reagent/uranium = 2, /datum/reagent/water = 1, /datum/reagent/carbon = 1)

/datum/chemical_reaction/mindbreaker
	name = "Mindbreaker Toxin"
	id = /datum/reagent/toxin/mindbreaker
	results = list(/datum/reagent/toxin/mindbreaker = 5)
	required_reagents = list(/datum/reagent/silicon = 1, /datum/reagent/hydrogen = 1, /datum/reagent/medicine/charcoal = 1)

/datum/chemical_reaction/heparin
	name = "Heparin"
	id = /datum/reagent/toxin/heparin
	results = list(/datum/reagent/toxin/heparin = 4)
	required_reagents = list(/datum/reagent/toxin/formaldehyde = 1, /datum/reagent/sodium = 1, /datum/reagent/chlorine = 1, /datum/reagent/lithium = 1)
	mix_message = "<span class='danger'>The mixture thins and loses all color.</span>"

/datum/chemical_reaction/rotatium
	name = "Rotatium"
	id = /datum/reagent/toxin/rotatium
	results = list(/datum/reagent/toxin/rotatium = 3)
	required_reagents = list(/datum/reagent/toxin/mindbreaker = 1, /datum/reagent/teslium = 1, /datum/reagent/toxin/fentanyl = 1)
	mix_message = "<span class='danger'>After sparks, fire, and the smell of mindbreaker, the mix is constantly spinning with no stop in sight.</span>"

/datum/chemical_reaction/skewium
	name = "Skewium"
	id = /datum/reagent/toxin/skewium
	results = list(/datum/reagent/toxin/skewium = 5)
	required_reagents = list(/datum/reagent/toxin/rotatium = 2, /datum/reagent/toxin/plasma = 2, /datum/reagent/toxin/acid = 1)
	mix_message = "<span class='danger'>Wow! it turns out if you mix rotatium with some plasma and sulphuric acid, it gets even worse!</span>"

/datum/chemical_reaction/anacea
	name = "Anacea"
	id = /datum/reagent/toxin/anacea
	results = list(/datum/reagent/toxin/anacea = 3)
	required_reagents = list(/datum/reagent/medicine/haloperidol = 1, /datum/reagent/impedrezene = 1, /datum/reagent/radium = 1)

/datum/chemical_reaction/bonehurtingjuice
	name = "Bone Hurting Juice"
	id = /datum/reagent/toxin/bonehurtingjuice
	results = list(/datum/reagent/toxin/bonehurtingjuice = 5)
	required_reagents = list(/datum/reagent/toxin/mutagen = 1, /datum/reagent/toxin/itching_powder = 3, /datum/reagent/consumable/milk = 1)
	mix_message = "<span class='danger'>The mixture suddenly becomes clear and looks a lot like water. You feel a strong urge to drink it.</span>"

/datum/chemical_reaction/spewium
	name = "Spewium"
	id = /datum/reagent/toxin/spewium
	results = list(/datum/reagent/toxin/spewium = 5)
	required_reagents = list (/datum/reagent/toxin/skewium = 1, /datum/reagent/consumable/ethanol/buffalo = 2, /datum/reagent/consumable/ethanol/yellowpulque = 2)
	mix_message = "<span class='danger'>The mixture gives off a nauseating odor.</span>"

/datum/chemical_reaction/silversting
	name = "Silver Sting"
	id = /datum/reagent/toxin/silversting
	results = list(/datum/reagent/toxin/silversting = 3)
	required_reagents = list (/datum/reagent/toxin/radscorp = 2, /datum/reagent/silver = 1)
	mix_message = "<span class='danger'>The mixture shines in the light.</span>"

/datum/chemical_reaction/bleakvenom
	name = "Bleak Venom"
	id = /datum/reagent/toxin/bleakvenom
	results = list(/datum/reagent/toxin/bleakvenom = 6)
	required_reagents = list (/datum/reagent/toxin/radscorp = 3, /datum/reagent/toxin/cazador_venom = 3)
	mix_message = "<span class='danger'>The mixture hisses and inspires hopelessness.</span>"

/datum/chemical_reaction/motherdarkness
	name = "Mother Darkness"
	id = /datum/reagent/toxin/motherdarkness
	results = list(/datum/reagent/toxin/motherdarkness = 5)
	required_reagents = list (/datum/reagent/toxin/radscorp = 4, /datum/reagent/consumable/ethanol/daturatea = 1)
	mix_message = "<span class='danger'>The mixture fizzes and bubbles as it darkens.</span>"

/datum/chemical_reaction/darkdatura
	name = "Dark Datura"
	id = /datum/reagent/toxin/darkdatura
	results = list(/datum/reagent/toxin/darkdatura = 10)
	required_reagents = list (/datum/reagent/consumable/ethanol/daturatea = 8, /datum/reagent/acetone = 2)
	mix_message = "<span class='danger'>The mixture bubbles and gives off noxious fumes.</span>"

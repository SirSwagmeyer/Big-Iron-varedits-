#define BLACKLISTED_BOARDS list(/obj/item/circuitboard/machine/gramophone_recorder,\
								/obj/machinery/computer/custom_shuttle,\
								/obj/item/circuitboard/computer/syndicate_shuttle,\
								/obj/item/circuitboard/computer/labor_shuttle,\
								/obj/item/circuitboard/computer/bos_control,\
								/obj/item/circuitboard/computer/bos_entry_control,\
								/obj/item/circuitboard/computer/enclave_control,\
								/obj/item/circuitboard/computer/vault_control,\
								/obj/item/circuitboard/computer/bunker_control,\
								/obj/item/circuitboard/computer/northbunker_control,\
								/obj/item/circuitboard/computer/mining_control,\
								/obj/item/circuitboard/computer/vault113_control,\
								/obj/item/circuitboard/computer/monastery_shuttle,\
								/obj/item/circuitboard/computer/mining_shuttle,\
								/obj/item/circuitboard/computer/shuttle)

/obj/structure/wreck
	anchored = 1
	density = 1
	layer = MOB_LAYER + 1

/obj/structure/wreck/car
	name = "wrecked car"
	desc = "An old pre-war car, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/medium_vehicles.dmi'
	icon_state = "derelict"
	var/list/allchassis
	var/obj/item/mecha_parts/chassis/chassis = /obj/item/mecha_parts/chassis/phazon/car
	bound_width = 64

/obj/structure/wreck/car/welder_act(mob/living/user, obj/item/I)
	I.play_tool_sound(src)
	user.visible_message("<span class='notice'>[user] starts preparing the [src] for a makeover...</span>", \
						"<span class='notice'>You start preparing the [src] for a makeover...</span>")
	if(!I.use_tool(src, user, 50))
		return
	playsound(get_turf(src), 'sound/items/deconstruct.ogg', 50, 1)
	user.visible_message("<span class='notice'>[user] dexterly opens up [src]'s space .</span>", \
						"<span class='notice'>You dexterly open up [src]'s space.</span>")
	new /obj/item/mecha_parts/chassis/phazon/car(loc)
	qdel(src)
	return TRUE


/obj/structure/wreck/car/crowbar_act(mob/living/user, obj/item/I)
	I.play_tool_sound(src)
	user.visible_message("<span class='notice'>[user] starts taking the [src] appart for materials...</span>", \
						"<span class='notice'>You start taking the [src] appart for materials...</span>")
	if(!I.use_tool(src, user, 50))
		return
	playsound(get_turf(src), 'sound/items/deconstruct.ogg', 50, 1)
	user.visible_message("<span class='notice'>[user] wreck open the [src] and take the metal appart .</span>", \
						"<span class='notice'>You wreck open the [src] and take the metal appart.</span>")
	new /obj/item/stack/sheet/metal/ten(loc)
	new /obj/item/stack/rods/ten(loc)
	qdel(src)
	return TRUE

	
/obj/structure/wreck/car/welder_act(mob/living/user, obj/item/I)
	I.play_tool_sound(src)
	user.visible_message("<span class='notice'>[user] starts preparing the [src] for a makeover...</span>", \
						"<span class='notice'>You start preparing the [src] for a makeover...</span>")
	if(!I.use_tool(src, user, 50))
		return
	playsound(get_turf(src), 'sound/items/deconstruct.ogg', 50, 1)
	user.visible_message("<span class='notice'>[user] dexterly opens up [src]'s space .</span>", \
						"<span class='notice'>You dexterly open up [src]'s space.</span>")
	new chassis(loc)
	qdel(src)
	return TRUE

/obj/structure/wreck/car/wrench_act(mob/living/user, obj/item/I)
	I.play_tool_sound(src)
	allchassis = subtypesof(/obj/item/mecha_parts/chassis/phazon/car)
	user.visible_message("<span class='notice'>[user] changes the chassis type [src]...</span>", \
						"<span class='notice'>You change the chassis type of [src]...</span>")
	chassis = pick(allchassis)
	user.visible_message("<span class='notice'>[initial(chassis.name)]!...</span>")
	return TRUE
	
/obj/structure/wreck/car/bike
	name = "wrecked motorcycle"
	desc = "An old pre-war motorcycle, rusted and destroyed with age and weathering."
	icon_state = "rust_light_no_wheels"
	chassis = /obj/item/mecha_parts/chassis/phazon/bike

/obj/structure/wreck/car/bike/wrench_act(mob/living/user, obj/item/I)
	return
	

/obj/structure/wreck/bus
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	bound_width = 192
	bound_height = 64
	icon = 'icons/obj/vehicles/bus1.dmi'

/obj/structure/wreck/bus/blue
	icon_state = "blue"

/obj/structure/wreck/bus/blue/alt
	icon = 'icons/obj/vehicles/bus2.dmi'
	bound_width = 192
	bound_height = 64

/obj/structure/wreck/bus/orange
	icon_state = "orange"

/obj/structure/wreck/bus/orange/alt
	icon = 'icons/obj/vehicles/bus2.dmi'
	bound_width = 192
	bound_height = 64

/obj/structure/wreck/bus/rusted
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybus.dmi'
	icon_state = "bus"
	bound_width = 192
	bound_height = 64

/obj/structure/wreck/bus/rusted/segmented
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus1"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented1
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus2"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented2
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus3"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented3
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus4"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented4
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus5"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented5
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus6"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented6
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus7"
	density = 0
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented7
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus8"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented8
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus9"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented9
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus10"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented10
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus11"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented11
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus12"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented12
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus13"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented13
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus14"
	density = 0
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented14
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus15"
	density = 0
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented15
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus16"
	density = 0
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented16
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus17"
	density = 0
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented17
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus18"
	density = 0
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented18
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus19"
	density = 0
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented19
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus20"
	density = 0
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/bus/rusted/segmented20
	name = "wrecked bus"
	desc = "An old pre-war vehicle, rusted and destroyed with age and weathering."
	icon = 'icons/obj/vehicles/rustybussegmented.dmi'
	icon_state = "bus21"
	density = 0
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/trash/five_tires
	name = "Tire Pile"
	desc = "A pile of tires."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "five_t"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/trash/five_tires/attackby(obj/item/I, mob/living/user, params)
	if(I.tool_behaviour == TOOL_ANALYZER)
		I.play_tool_sound(src)
		user.visible_message("<span class='notice'>[user] is checking the [src] for ones of appropiate pressure...</span>", \
							"<span class='notice'>You start checking the [src] for ones of appropiate pressure...</span>")
		if(!I.use_tool(src, user, 50))
			return
		playsound(get_turf(src), 'sound/items/deconstruct.ogg', 50, 1)
		user.visible_message("<span class='notice'>[user] finished checking both [src].</span>", \
							"<span class='notice'>You finish checking both[src].</span>")
		new /obj/item/mecha_parts/part/Car_tire(loc)
		new /obj/item/mecha_parts/part/Car_tire(loc)
		new /obj/item/mecha_parts/part/Car_tire(loc)
		new /obj/item/mecha_parts/part/Car_tire(loc)
		new /obj/item/mecha_parts/part/Car_tire(loc)
		qdel(src)
		return
	. = ..()

/obj/structure/wreck/trash/two_tire
	name = "Tires"
	desc = "A set of two tires, now where are the other two?"
	icon = 'icons/fallout/trash.dmi'
	icon_state = "two_t"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/trash/two_tire/attackby(obj/item/I, mob/living/user, params)
	if(I.tool_behaviour == TOOL_ANALYZER)
		I.play_tool_sound(src)
		user.visible_message("<span class='notice'>[user] is checking the [src] for ones of appropiate pressure...</span>", \
							"<span class='notice'>You start checking the [src] for ones of appropiate pressure...</span>")
		if(!I.use_tool(src, user, 50))
			return
		playsound(get_turf(src), 'sound/items/deconstruct.ogg', 50, 1)
		user.visible_message("<span class='notice'>[user] finished checking both [src].</span>", \
							"<span class='notice'>You finish checking both[src].</span>")
		new /obj/item/mecha_parts/part/Car_tire(loc)
		new /obj/item/mecha_parts/part/Car_tire(loc)
		qdel(src)
		return
	. = ..()

/obj/structure/wreck/trash/one_tire
	name = "Tire"
	desc = "A single tire."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "one_t"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/trash/one_tire/attackby(obj/item/I, mob/living/user, params)
	if(I.tool_behaviour == TOOL_ANALYZER)
		I.play_tool_sound(src)
		user.visible_message("<span class='notice'>[user] is checking the [src] for pressure...</span>", \
							"<span class='notice'>You start checking the [src] for pressure...</span>")
		if(!I.use_tool(src, user, 50))
			return
		playsound(get_turf(src), 'sound/items/deconstruct.ogg', 50, 1)
		user.visible_message("<span class='notice'>[user] finished checking [src].</span>", \
							"<span class='notice'>You finish checking [src].</span>")
		new /obj/item/mecha_parts/part/Car_tire(loc)
		qdel(src)
		return
	. = ..()

/obj/structure/wreck/trash/halftire
	name = "Buried Tire"
	desc = "Its not treasure, but it is partially buried."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "half_t"
	bound_width = 32
	bound_height = 32
	density = 0
	layer = TURF_LAYER

/obj/structure/wreck/trash/four_barrels
	name = "Barrels"
	desc = "Some metal barrels."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "four_b"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/trash/three_barrels
	name = "Barrels"
	desc = "Some metal barrels."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "three_b"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/trash/two_barrels
	name = "Barrels"
	desc = "Some metal barrels."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "two_b"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/trash/one_barrel
	name = "Barrels"
	desc = "Some metal barrels."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "one_b"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/trash/engine
	name = "Engine"
	desc = "If only you picked the automechanics perk."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "engine"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/trash/engine/attackby(obj/item/I, mob/living/user, params)
	if(I.tool_behaviour == TOOL_WRENCH)
		I.play_tool_sound(src)
		user.visible_message("<span class='notice'>[user] starts disassambling the [src] for easier transport...</span>", \
							"<span class='notice'>You start disassambling the [src] for easier transport...</span>")
		if(!I.use_tool(src, user, 50))
			return
		playsound(get_turf(src), 'sound/items/deconstruct.ogg', 50, 1)
		user.visible_message("<span class='notice'>[user] finishes dissasambling the [src].</span>", \
							"<span class='notice'>You finish dissasambling the [src].</span>")
		new /obj/item/mecha_parts/part/Car_engine(loc)
		qdel(src)
		return
	. = ..()

/obj/structure/wreck/trash/autoshaft
	name = "Automobile Shaft"
	desc = "It probably was in a vehicle at one time."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "auto_shaft"
	bound_width = 32
	bound_height = 32
	density = 0
	layer = TURF_LAYER

/obj/structure/wreck/trash/autoshaft/attackby(obj/item/I, mob/living/user, params)
	if(I.tool_behaviour == TOOL_SCREWDRIVER)
		I.play_tool_sound(src)
		user.visible_message("<span class='notice'>[user] starts disassambling the [src] for easier transport...</span>", \
							"<span class='notice'>You start disassambling the [src] for easier transport...</span>")
		if(!I.use_tool(src, user, 50))
			return
		playsound(get_turf(src), 'sound/items/deconstruct.ogg', 50, 1)
		user.visible_message("<span class='notice'>[user] finishes dissasambling the [src].</span>", \
							"<span class='notice'>You finish dissasambling the [src].</span>")
		new /obj/item/mecha_parts/part/Car_autoshaft(loc)
		qdel(src)
		return
	. = ..()

/obj/structure/wreck/trash/bus_door
	name = "Lonely Bus Door"
	desc = "A bus door, missing the rest of the bus."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "bus_door"
	bound_width = 32
	bound_height = 32
	density = 0
	layer = TURF_LAYER

/obj/structure/wreck/trash/secway
	name = "Broken Secway"
	desc = "Looks like the axle was split in half."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "secwaybroke"
	bound_width = 32
	bound_height = 32

/obj/structure/wreck/trash/brokenvendor
	name = "Broken Vendor"
	desc = "Looks like it it fell down by force."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "technical_pile3"
	bound_width = 32
	bound_height = 32
	var/inuse = FALSE

/obj/structure/wreck/trash/brokenvendor/attackby(obj/item/I, mob/living/user, params)
	if(istype(I, /obj/item/weldingtool))
		if(inuse) //this means that if mappers or admins want an nonharvestable version, set the uses_left to 0
			return
		inuse = TRUE //one at a time boys, this isn't some kind of weird party
		if(!I.tool_start_check(user, amount=0)) //this seems to be called everywhere, so for consistency's sake
			inuse = FALSE
			return //the tool fails this check, so stop
		user.visible_message("[user] starts disassembling [src].")
		if(!I.use_tool(src, user, 0, volume=100)) //here is the dilemma, use_tool doesn't work like do_after, so moving away screws it(?)
			inuse = FALSE
			return //you can't use the tool, so stop
		for(var/i1 in 1 to 2) //so, I hate waiting
			if(!do_after(user, 1 SECONDS, target = src)) //this is my work around, because do_After does have a move away
				user.visible_message("[user] stops disassembling [src].")
				inuse = FALSE
				return //you did something, like moving, so stop
			var/fake_dismantle = pick("plating", "rod", "rim", "part of the frame")
			user.visible_message("[user] slices through a [fake_dismantle].")
			I.play_tool_sound(src, 100)
		var/turf/usr_turf = get_turf(user)
		var/list/canistergachalist = subtypesof(/obj/item/vending_refill)
		var/canistergacha = pick(canistergachalist)
		new canistergacha(usr_turf)
		new /obj/item/circuitboard/machine/vendor(usr_turf)
		inuse = FALSE //putting this after the -- because the first check prevents cheesing
		visible_message("[src] falls apart, the final components having been removed.")
		qdel(src)
/obj/structure/wreck/trash/machinepile
	name = "Broken Machinery"
	desc = "Looks like broken machinery."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "technical_pile1"
	bound_width = 32
	bound_height = 32
	var/inuse = FALSE

att

/obj/structure/wreck/trash/machinepile/welder_act(mob/living/user, obj/item/I)
	if(inuse) //this means that if mappers or admins want an nonharvestable version, set the uses_left to 0
		return
	inuse = TRUE //one at a time boys, this isn't some kind of weird party
	if(!I.tool_start_check(user, amount=0)) //this seems to be called everywhere, so for consistency's sake
		inuse = FALSE
		return //the tool fails this check, so stop
	user.visible_message("[user] starts disassembling [src].")
	if(!I.use_tool(src, user, 0, volume=100)) //here is the dilemma, use_tool doesn't work like do_after, so moving away screws it(?)
		inuse = FALSE
		return //you can't use the tool, so stop
	for(var/i1 in 1 to 2) //so, I hate waiting
		if(!do_after(user, 1 SECONDS*I.toolspeed, target = src)) //this is my work around, because do_After does have a move away
			user.visible_message("[user] stops disassembling [src].")
			inuse = FALSE
			return //you did something, like moving, so stop
	var/fake_dismantle = pick("plating", "rod", "rim", "part of the frame")
	user.visible_message("[user] slices through a [fake_dismantle].")
	I.play_tool_sound(src, 100)
	var/turf/usr_turf = get_turf(user)
	var/modifier = 0
	if(HAS_TRAIT(user,TRAIT_TECHNOPHREAK))
		modifier = rand(1, 3)
	for(var/i2 in 1 to (3+modifier))
		if(prob(25))
			new /obj/item/salvage/low(usr_turf)
	for(var/i3 in 1 to (1+modifier)) //this is just less lines for the same thing
		if(prob(10))
			new /obj/item/salvage/high(usr_turf)
		if(prob(10))
			new /obj/item/salvage/tool(usr_turf)
	var/list/boardgachalist = subtypesof(/obj/item/circuitboard/computer)
	var/obj/boardgacha = pick(boardgachalist)
	while(boardgacha in BLACKLISTED_BOARDS)
		boardgacha = pick(boardgachalist)
	new boardgacha(usr_turf)
	inuse = FALSE //putting this after the -- because the first check prevents cheesing
	visible_message("[src] falls apart, the final components having been removed.")
	qdel(src)
	return TRUE


/obj/structure/wreck/trash/machinepiletwo
	name = "Broken Machinery"
	desc = "Looks like broken machinery."
	icon = 'icons/fallout/trash.dmi'
	icon_state = "technical_pile2"
	bound_width = 32
	bound_height = 32
	var/inuse = FALSE

/obj/structure/wreck/trash/machinepiletwo/attackby(obj/item/I, mob/living/user, params)
	if(istype(I, /obj/item/weldingtool))
		if(inuse) //this means that if mappers or admins want an nonharvestable version, set the uses_left to 0
			return
		inuse = TRUE //one at a time boys, this isn't some kind of weird party
		if(!I.tool_start_check(user, amount=0)) //this seems to be called everywhere, so for consistency's sake
			inuse = FALSE
			return //the tool fails this check, so stop
		user.visible_message("[user] starts disassembling [src].")
		if(!I.use_tool(src, user, 0, volume=100)) //here is the dilemma, use_tool doesn't work like do_after, so moving away screws it(?)
			inuse = FALSE
			return //you can't use the tool, so stop
		for(var/i1 in 1 to 2) //so, I hate waiting
			if(!do_after(user, 1 SECONDS, target = src)) //this is my work around, because do_After does have a move away
				user.visible_message("[user] stops disassembling [src].")
				inuse = FALSE
				return //you did something, like moving, so stop
			var/fake_dismantle = pick("plating", "rod", "rim", "part of the frame")
			user.visible_message("[user] slices through a [fake_dismantle].")
			I.play_tool_sound(src, 100)
		var/turf/usr_turf = get_turf(user)
		var/modifier = 0
		if(HAS_TRAIT(user,TRAIT_TECHNOPHREAK))
			modifier = rand(1, 3)
		for(var/i2 in 1 to (3+modifier))
			if(prob(25))
				new /obj/item/salvage/low(usr_turf)
		for(var/i3 in 1 to (1+modifier)) //this is just less lines for the same thing
			if(prob(10))
				new /obj/item/salvage/high(usr_turf)
			if(prob(10))
				new /obj/item/salvage/tool(usr_turf)
		var/list/boardgachalist = subtypesof(/obj/item/circuitboard/machine)
		var/boardgacha = pick(boardgachalist)
		new boardgacha(usr_turf)
		inuse = FALSE //putting this after the -- because the first check prevents cheesing
		visible_message("[src] falls apart, the final components having been removed.")
		qdel(src)

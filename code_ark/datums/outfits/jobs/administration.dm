/decl/hierarchy/outfit/job/director
	name = OUTFIT_JOB_NAME("Director")
	head = /obj/item/clothing/head/caphat
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/rank/captain
	l_ear = /obj/item/device/radio/headset/heads/captain
	shoes = /obj/item/clothing/shoes/brown
	id_types = list(/obj/item/card/id/gold)
	pda_type = /obj/item/modular_computer/pda/captain
	backpack_contents = list(/obj/item/storage/box/ids = 1)

/decl/hierarchy/outfit/job/director/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/storage/backpack/command
	backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/storage/backpack/satchel/com
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/storage/backpack/messenger/com

/decl/hierarchy/outfit/job/director/post_equip(var/mob/living/carbon/human/H)
	..()
	if(H.age>49)
		// Since we can have something other than the default uniform at this
		// point, check if we can actually attach the medal
		var/obj/item/clothing/uniform = H.w_uniform
		if(uniform)
			var/obj/item/clothing/accessory/medal/gold/nanotrasen/medal = new()
			if(uniform.can_attach_accessory(medal))
				uniform.attach_accessory(null, medal)
			else
				qdel(medal)

/decl/hierarchy/outfit/job/secretary
	name = OUTFIT_JOB_NAME("Secretary")
	uniform = /obj/item/clothing/under/rank/head_of_personnel
	l_ear = /obj/item/device/radio/headset/heads/hop
	shoes = /obj/item/clothing/shoes/brown
	id_types = list(/obj/item/card/id/silver)
	pda_type = /obj/item/modular_computer/pda/heads/hop
	backpack_contents = list(/obj/item/storage/box/ids = 1)

/decl/hierarchy/outfit/job/consul
	name = OUTFIT_JOB_NAME("SCG Consul")
	uniform = /obj/item/clothing/under/rank/head_of_personnel
	l_ear = /obj/item/device/radio/headset/heads/hop
	shoes = /obj/item/clothing/shoes/brown
	id_types = list(/obj/item/card/id/silver/consul)
	pda_type = /obj/item/modular_computer/pda/heads/hop
	backpack_contents = list(/obj/item/storage/box/ids = 1)

/decl/hierarchy/outfit/job/corpo_representative
	name = OUTFIT_JOB_NAME("Corporation Representative")
	uniform = /obj/item/clothing/under/rank/head_of_personnel
	l_ear = /obj/item/device/radio/headset/heads/hop
	shoes = /obj/item/clothing/shoes/brown
	id_types = list(/obj/item/card/id/silver/corpo_representative)
	pda_type = /obj/item/modular_computer/pda/heads/hop
	backpack_contents = list(/obj/item/storage/box/ids = 1)

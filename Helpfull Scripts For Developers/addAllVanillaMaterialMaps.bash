#!/bin/bash

###########################################################################################################################################
# IMPORTANT: To Use This You Must Put The Default Minecraft Assets Tree Found In The Minecraft Jar In `~/.minecraft/resourcepacks/assets` #
###########################################################################################################################################

for file in ~/.minecraft2/resourcepacks/assets/minecraft/models/block/*; do
	echo -ne '{\n\t"defaultMaterial": "minecraft:warmth_shadows"\n}' > ~/.minecraft/resourcepacks/world_of_warmth/assets/minecraft/materialmaps/block/$(basename ${file})
done

for file in ~/.minecraft2/resourcepacks/assets/minecraft/models/item/*; do
	echo -ne '{\n\t"defaultMaterial": "minecraft:warmth_shadows"\n}' > ~/.minecraft/resourcepacks/world_of_warmth/assets/minecraft/materialmaps/item/$(basename ${file})
done

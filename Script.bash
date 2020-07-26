#!/bin/bash

for file in ~/.minecraft2/resourcepacks/assets/minecraft/models/block/*; do
	echo -ne '{\n\t"defaultMaterial": "minecraft:warmth"\n}' > ~/.minecraft2/resourcepacks/world_of_warmth/assets/minecraft/materialmaps/block/$(basename ${file})
done

for file in ~/.minecraft2/resourcepacks/assets/minecraft/models/item/*; do
	echo -ne '{\n\t"defaultMaterial": "minecraft:warmth"\n}' > ~/.minecraft2/resourcepacks/world_of_warmth/assets/minecraft/materialmaps/item/$(basename ${file})
done

#!/bin/bash

if [ "$menu" == "fish" ]; then
	if [ "$animal" == "penguin" ]; then
		echo -e "Hmmmmmm fish... Tux happy!\n"
	elif [ "$animal" == "dolphin" ]; then
		echo -e "\a\a\aPweetpeet!\a\a\a\n"
	else
		echo -e "*prrrrrrrrt*\n"
	fi
else
	if [ "$animal" == "penguin" ]; then
		echo -e "Tux don't like that. Tux wants fish!\n"
		exit 1
	elif [ "$animal" == "dolphin" ]; then
		echo -e "\a\a\aPweeepish!\a\a\a"
		exit 2
	else
		echo -e "Will you read this sign?! Don't feed the "$animal"s!\n"
		exit 3
	fi
fi

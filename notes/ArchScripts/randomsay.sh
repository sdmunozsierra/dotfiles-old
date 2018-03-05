#!/bin/bash

cows=(`cowsay -l | grep -v '/'`)
cow=${cows[$RANDOM % ${#cows[@]} ]}
cowsay -f $cow `fortune` | lolcat

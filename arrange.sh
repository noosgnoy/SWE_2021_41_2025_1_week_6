#!/bin/bash

la=(a b c d e f g h i j k l m n o p q r s t u v w x y z) # lower_alphabet
ua=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) # upper_alphabet


for i in "${la[@]}"; do
    mkdir -p "$i" 
    for file in "$i"*.txt; do
        if [[ -e $file ]]; then
            mv "$file" "$i/"
        fi
    done
done


for i in "${ua[@]}"; do
    lower_case=$(echo "$i" | tr '[:upper:]' '[:lower:]')
    mkdir -p "$lower_case" 
    for file in "$i"*.txt; do
        if [[ -e $file ]]; then
            mv "$file" "$lower_case/"
        fi
    done
done

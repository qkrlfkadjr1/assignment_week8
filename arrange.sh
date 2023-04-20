#!/bin/bash

cd files
for file in *; 
do 
	starts_with=$(echo "$file" | grep -o '^.' | tr '[:upper:]' '[:lower:]')
	mv $file ../$starts_with/$file
done


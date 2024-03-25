#!/bin/bash
#this is called as array , insted if single value it holds multiple values
PERSONS=("Ramesh" "Suresh" "Sachin")
#inside arrray we always refer values with index and it starts from 0
echo "First person : ${PERSONS[0]}"

echo "All persons : ${PERSONS[@]}"

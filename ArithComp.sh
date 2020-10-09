#!/bin/bash -x
echo "SORTING ARITHMATIC COMPUTATION PROBLEM"
read -p "ENTER THREE NUMBERS SEPARATED BY SPACE" A B C
exp1=$(($A+$B*$C))
exp2=$(($A*$B+$C))
echo $exp2

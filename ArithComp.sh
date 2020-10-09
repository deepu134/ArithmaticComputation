#!/bin/bash -x
echo "SORTING ARITHMATIC COMPUTATION PROBLEM"
read -p "ENTER THREE NUMBERS SEPARATED BY SPACE:" A B C
declare -A dict
exp1=$(($A+$B*$C))
exp2=$(($A*$B+$C))
exp3=`echo "$A $B $C" |awk '{print $1/$2+$3}'`
exp4=`echo "$A $B $C" |awk '{print $1%$2+$3}'`
echo "A+B*C:"$exp1
echo "A*B+C:"$exp2
echo "A/B+C:"$exp3
echo "A%B+C:"$exp4
j=1
for i in {$exp1,$exp2,$exp3,$exp4}
do 
	dict["Exp"$j]=$i
	j=$(($j+1))
done
echo "DICTIONARY:"${!dict[@]}=${dict[@]}
j=0
for i in ${dict[@]}
do
	array[$j]=$i
	j=$(($j+1))
done
echo "ARRAY:"${array[@]}
arr=($(for i in "${array[@]}"; do echo $i; done | sort -n))
echo "ASSENDING ORDER" ${arr[@]}
arr=($(for i in "${array[@]}"; do echo $i; done | sort -nr))
echo "DESCENDING ORDER" ${arr[@]}



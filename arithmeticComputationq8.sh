#!/bin/bash -x

read -p "Enter the vlaue of a :: " a
read -p "Enter the vlaue of b :: " b
read -p "Enter the vlaue of c :: " c

declare -A results
results[one]=$(( $a + $b *$c ))
results[two]=$(( $a * $b + $c ))
results[three]=$(( $c + $a / $b ))
results[four]=$(( $a%$b *$c ))

#Array
i=0
a[i++]=${results[one]}
a[i++]=${results[two]}
a[i++]=${results[three]}
a[i++]=${results[four]}

echo "outcome" ${a[@]}
temp=0
for (( i=0; i<4; i++ ))
do
	for (( j=0; j<4-i-1; j++ ))
	do
	if [[ ${a[j]} -lt ${a[$((j+1))]} ]]
	then
	temp=${a[j]}
	a[j]=${a[$((j+1))]}
	a[j+1]=$temp
	fi
	done
done

echo  "Descending Order" ${a[@]}

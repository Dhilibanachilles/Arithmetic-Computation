#!/bin/bash -x

read -p "Enetr the value of a :: " a
read -p "Enetr the value of b :: " b
read -p "Enetr the value of c :: " c

declare -A results
results[one]=$(( $a + $b *$c ))
results[two]=$(( $a * $b + $c ))
results[three]=$(( $c + $a / $b ))
results[four]=$(( $a%$b *$c ))

#Array
i=0
array[i++]=${results[one]}
array[i++]=${results[two]}
array[i++]=${results[three]}
array[i++]=${results[four]}

echo "outcome" ${array[@]}

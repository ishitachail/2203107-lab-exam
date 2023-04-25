
#!/bin/bash
touch temp.txt
grep -iw "$3" $1 >> temp.txt
if [[ $1 ==  "ca_500.csv" ]];
then
	touch ca_$2_$3.csv
	echo  $1 , $2 , $3 >> ca_$2_$3.csv
	head -n 1 $1 >> ca_$2_$3.csv
	wc -l temp.txt >> ca_$2_$3.csv
	grep -iw "$3" $1 >> ca_$2_$3.csv




elif [[ $1 == "us_500.csv" ]];
then
	touch us_$2_$3.csv
	echo $1, $2, $3 >> us_$2_$3.csv
	head -n 1 $1 >> us_$2_$3.csv
	wc -l temp.txt >> us_$2_$3.csv
	grep -iw "$3" $1 >> us_$2_$3.csv
	





else
	echo "won't work"
fi
 

rm temp.txt

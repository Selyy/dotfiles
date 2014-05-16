#!/bin/bash

vol=$(amixer get 'PCM',0 -c 2 | egrep -o '[0-9]{1,3}%')

if [[ $vol < 1 ]]
then
	bar='[----------]' 
elif [[ $vol > 0 ]] && [[ $vol < 11 ]]
then
	bar='[/---------]' 
elif [[ $vol > 10 ]] && [[ $vol < 21 ]]
then
	bar='[//--------]' 
elif [[ $vol > 20 ]] && [[ $vol < 31 ]]
then
	bar='[///-------]' 
elif [[ $vol > 30 ]] && [[ $vol < 41 ]]
then
	bar='[////------]' 
elif [[ $vol > 40 ]] && [[ $vol < 51 ]]
then
	bar='[/////-----]' 
elif [[ $vol > 50 ]] && [[ $vol < 61 ]]
then
	bar='[//////----]' 
elif [[ $vol > 60 ]] && [[ $vol < 71 ]]
then
	bar='[///////---]' 
elif [[ $vol > 70 ]] && [[ $vol < 81 ]]
then
	bar='[////////--]' 
elif [[ $vol > 80 ]] && [[ $vol < 91 ]]
then
	bar='[/////////-]' 
elif [[ $vol > 90 ]]
then
	bar='[//////////]' 
fi


echo $bar
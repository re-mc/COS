#!/bin/bash


curl https://raw.githubusercontent.com/re-mc/COS/Updates/UpdateVersion.txt > UpdateVersion.txt
LatestVersion=$(cat UpdateVersion.txt)
rm UpdateVersion.txt

if [[ $(cat ClientVersion.txt) != "" ]]; then
	Version=$(cat ClientVersion.txt)
else
	touch ClientVersion.txt
	echo "1" > ClientVersion.txt
	Version=1
fi



if [[ $Version != $LatestVersion ]]; then

cat p1.txt > updatecontent.sh

curl https://raw.githubusercontent.com/re-mc/COS/Legacy-Updates/Update$Version.txt >> updatecontent.sh

cat p2.txt >> updatecontent.sh


cd ..
cd ..

cp bin/Build/updatecontent.sh bin/

cd bin/

chmod u+x updatecontent.sh

cd Build/

let Version=$Version+1

echo $Version > ClientVersion.txt


else

cat p1.txt > updatecontent.sh

curl https://raw.githubusercontent.com/re-mc/COS/Updates/Update.txt >> updatecontent.sh

cat p2.txt >> updatecontent.sh


cd ..
cd ..

cp bin/Build/updatecontent.sh bin/

cd bin/

chmod u+x updatecontent.sh

fi

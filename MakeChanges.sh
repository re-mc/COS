#!/bin/bash

cd ..
cd ..

curl https://raw.githubusercontent.com/re-mc/COS/master/NewUpdateSystem.sh >> p1.txt
curl https://raw.githubusercontent.com/re-mc/COS/master/NewUpdateSystem2.sh >> p2.txt

cp p1.txt bin/Build/build.sh
cp p2.txt UpdateNow.sh

chmod u+x bin/Build/build.sh
chmod u+x UpdateNow.sh

rm p1.txt
rm p2.txt



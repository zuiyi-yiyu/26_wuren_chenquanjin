#!/bin/bash
mkdir -p 'linux_practice'/docs 'linux_practice'/backup
cd 'linux_practice'/docs
touch readme.txt notes.log temp.tmp
rm temp.tmp
mv notes.log daily_report.txt
echo 'Project Status: Active' > daily_report.txt
echo "`date`" >> daily_report.txt
cp *.txt ../backup
chmod 444 ../backup/*.txt
echo "Archive Complete File. [`ls ../backup |tr "\n" ' ' `] is now read-only"

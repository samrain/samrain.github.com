snap run hugo -d ../Blog -b "http://www.samrainhan.com/" --cleanDestinationDir

cd ../Blog

git add *

git commit -m '+1'

git push origin master

cd ../samrain.github.com

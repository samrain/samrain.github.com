# 清空然后从头编译一遍
# snap run hugo -d ../Blog -b "https://www.samrainhan.com/" --cleanDestinationDir

# 快速编译
hugo -d _blog/Blog -b "https://www.samrainhan.com/"

rsync -aru _blog/Blog ../

cd ../Blog

git add *

git commit -m '+1'

git push origin master

cd ../samrain.github.com/

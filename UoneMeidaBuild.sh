echo "delete UOneMedia"
rm -r /Users/chenshilong/Documents/WS/Uone/trunk/WSPXBrowser/UoneMedia/UOneMedia*
echo "delete UOneMedia done."
echo "run sh in /Users/chenshilong/Documents/WS/Uone/iOS_UOne/iOS_UOneMedia/trunk/build.sh"
cd ..
cd /Users/chenshilong/Documents/WS/Uone/iOS_UOne/iOS_UOneMedia/trunk
./build.sh
echo "run UOneMedia build.sh done."
echo "copy UOneMedia.bundle UOneMedia.framework to /Users/chenshilong/Documents/WS/Uone/trunk/WSPXBrowser/UoneMedia/"
cp -R /Users/chenshilong/Documents/WS/Uone/iOS_UOne/iOS_UOneMedia/trunk/UOneMedia.framework  /Users/chenshilong/Documents/WS/Uone/trunk/WSPXBrowser/UoneMedia/
cp -R /Users/chenshilong/Documents/WS/Uone/iOS_UOne/iOS_UOneMedia/trunk/UOneMedia.bundle  /Users/chenshilong/Documents/WS/Uone/trunk/WSPXBrowser/UoneMedia/
echo "UoneMediaBuild.sh complete"
exit 1

#http://chenpeng.info/html/1364
#curl -I https://qd.myapp.com/myapp/qqteam/AndroidQQ/mobileqq_android.apk
echo "open tcprelay.py"
echo "ssh root@localhost -p 2223"
cd /Users/chenshilong/Documents/WS/Uone/usbmux
python tcprelay.py -t 22:2223
#osascript -e 'tell application "Terminal" to activate' -e 'tell application "System Events" to tell process "Terminal" to keystroke "t" using command down' -e 'tell application "Terminal" to do script "ssh root@localhost -p 2223" in selected tab of the front window'

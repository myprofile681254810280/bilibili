p0=~/Desktop/bilibili #别带空格

#/dev/shm/bilibili
#cp ./cookies.txt /dev/shm/bilibili/
#cd /dev/shm/bilibili
#rm *.mp4
#yt-dlp --cookies ./cookies.txt "$@"
#用--get-url可以抽取url，但是有音频和视频，需要合并，并且mpv直接打开视频会有403，  和直播比起来，中间的麻烦还挺多的，似乎并不能那么简单的交给mpv

#开一个chromium profile，专门给ytdlp读取登录cookie，而不用担心主浏览器cookie泄漏

mkdir $p0
cd $p0 || exit

yt-dlp "$@" --cookies-from-browser "chrome:$HOME/cache/chromium-ytdlp"

#下载完后手动开，不删旧文件
dolphin $p0


#mpv *.mp4

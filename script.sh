echo "andrew" > user.txt
psw=`dialog --stdout --passwordbox "請輸入密碼" 8 40`
echo "$psw" >> user.txt
pingip=`dialog --stdout --inputbox "請輸入IP或網域名稱" 8 40`
echo "$pingip" >> user.txt
dialog --title "用戶資訊" --textbox ~/user.txt 8 40
dialog --title "信息確認" --yesno "用戶資訊是否正確?" 8 40
inputdate=$(dialog --stdout --calendar "選擇搜尋日期" 8 40 16 2 2025)
month=$(echo "$inputdate" | cut -d'/' -f2)
day=$(echo "$inputdate" | cut -d'/' -f1)
year=$(echo "$inputdate" | cut -d'/' -f3)
date="$year-$month-$day"
echo "$date" >msg.txt
sudo apt install apache2 -y &> /dev/null
echo "Apache installed." >> msg.txt
sudo apt install php php-xml -y &> /dev/null
echo "PHP安裝完畢" >> msg.txt
sudo wget https://github.com/phpsysinfo/phpsysinfo/archive/refs/tags/v3.4.3.zip -P /var/www/html &> /dev/null
echo "phpsysinfo下載完畢" >> msg.txt
sudo unzip /var/www/html/v3.4.3.zip -d /var/www/html &> /dev/null
echo "phpsysinfo解壓縮完畢" >> msg.txt
sudo mv /var/www/html/phpsysinfo-3.4.3 /var/www/html/phpsysinfo &> /dev/null
echo "phpsysinfo資料夾更名完畢" >> msg.txt
sudo cp /var/www/html/phpsysinfo/phpsysinfo.ini.new /var/www/html/phpsysinfo/phpsysinfo.ini &> /dev/null
echo "phpsysinfo.ini設置完畢，請開啟瀏覽器 http://$pingip/phpsysinfo 看系統資訊"
echo "你可以上網看看" >> msg.txt
journalctl --since "$date" -n 2 >> msg.txt
dialog --title "complete" --textbox ~/msg.txt 8 40

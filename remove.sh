#!/bin/bash

echo "正在停止 Apache 服務..."
sudo systemctl stop apache2
sudo systemctl disable apache2

echo "正在移除 Apache 和 PHP..."
sudo apt remove --purge -y apache2 apache2-bin apache2-data apache2-utils libapache2-mod-php* php*

echo "正在清理系統..."
sudo apt autoremove -y
sudo apt autoclean

echo "正在刪除 Apache 和 PHP 殘留文件..."
sudo rm -rf /etc/apache2 /var/www/html

echo "移除完成！請執行 'dpkg -l | grep apache2' 和 'dpkg -l | grep php' 確認是否完全移除。"

dialog --title "complete" --msgbox "congraduate" 10 50

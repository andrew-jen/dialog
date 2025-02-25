安裝與使用說明

本腳本可用於自動安裝 Apache2、PHP 以及 phpsysinfo，並提供系統日誌查詢功能。

需求環境

Ubuntu 作業系統

需要 dialog 來顯示互動視窗

需要 sudo 權限來安裝 Apache2 及 PHP

腳本功能

輸入與儲存使用者資訊

輸入密碼

輸入 IP 或網域名稱

顯示輸入資訊供使用者確認

選擇日誌查詢日期

安裝與設定 Apache2、PHP 及 phpsysinfo

自動安裝 Apache2 和 PHP

下載並解壓縮 phpsysinfo

設定 phpsysinfo.ini

顯示系統資訊

透過 http://[輸入的IP]/phpsysinfo 查看系統資訊

查詢系統日誌

根據選擇的日期查詢 journalctl 日誌

安裝與執行

確保已安裝 dialog若未安裝，請執行：

sudo apt install dialog -y

下載與執行腳本

chmod +x script.sh  # 確保腳本具有執行權限
./script.sh         # 執行腳本

執行完畢後

請開啟瀏覽器，輸入 http://[IP]/phpsysinfo 查看系統資訊。

查詢的日誌結果將儲存在 msg.txt。

注意事項

請確保您的系統有網路連線，以便下載 phpsysinfo。

若 phpsysinfo 頁面無法開啟，請確認 Apache2 是否正在運行：

sudo systemctl status apache2

如果腳本執行過程中出錯，可檢查 msg.txt 了解錯誤資訊。

作者: Andrew版本: 1.0更新日期: 2025-02-24

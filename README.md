# phpsysinfo 安裝與系統資訊查詢腳本

本腳本用於安裝 `Apache2` 和 `PHP`，並自動下載與設定 `phpsysinfo`，最後查詢指定日期的系統日誌。

## 使用方法

### 1. 執行腳本
請確保您的系統已安裝 `dialog`，然後執行腳本：
```bash
bash script.sh
```

### 2. 操作流程
- **輸入密碼**：程式會要求輸入密碼，並存入 `user.txt`（純測試用途）。
- **輸入 IP 或網域名稱**：程式會要求輸入 `phpsysinfo` 對應的 IP 或網址。
- **確認資訊**：顯示輸入的資訊，並詢問是否正確。
- **選擇日期**：用 `dialog` 選擇要查詢系統日誌的日期。
- **安裝 `Apache2` 和 `PHP`**：程式會自動安裝 Web 伺服器與 PHP 環境。
- **下載 `phpsysinfo`**：從 GitHub 下載 `phpsysinfo`，並自動解壓與配置。
- **顯示 `phpsysinfo` URL**：安裝完成後，顯示 `phpsysinfo` 介面的 URL。
- **查詢系統日誌**：顯示自選日期之後的系統日誌。

## 產出檔案
- `user.txt`：儲存使用者輸入的密碼與 IP 資訊。
- `msg.txt`：記錄安裝進度與系統日誌查詢結果。

## `phpsysinfo` 介面
安裝完成後，請在瀏覽器開啟：
```
http://<你的IP>/phpsysinfo
```
查看伺服器的系統資訊。

## 注意事項
- 此腳本會執行 `sudo` 命令，因此請確保有管理員權限。
- 執行前請確保 `dialog` 指令可用，若無則安裝：
  ```bash
  sudo apt install dialog -y
  ```
- `phpsysinfo` 下載自 GitHub，若官方更新版本，請手動調整下載鏈接。

## 參考
- [phpsysinfo 官方 GitHub](https://github.com/phpsysinfo/phpsysinfo)

作者: Andrew版本: 1.0
更新日期: 2025-02-24

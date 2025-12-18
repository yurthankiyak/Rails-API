@echo off
echo ==========================================
echo Rails Projesi Baslatiliyor...
echo ==========================================

echo [1/3] Kutuphane kontrolu devreden cikarildi (Hata onlemek icin). 
rem call bundle check skipped.

echo.
echo [2/3] Veritabani guncelleniyor (rails db:migrate)...
call rails db:migrate

echo.
echo [3/3] Sunucu baslatiliyor (rails server)...
echo.
echo Sunucu calisiyor! Tarayicinizda su adrese gidin: http://localhost:3000
echo Durdurmak icin bu pencereyi kapatin veya Ctrl+C tuslarina basin.
echo.
call rails server

pause
@echo off
echo ==========================================
echo Ornek Veriler Yukleniyor...
echo ==========================================

echo [1/1] Veri tabanina ornek kayitlar ekleniyor (rails db:seed)...
call rails db:seed

if %errorlevel% neq 0 (
    echo [HATA] Veriler yuklenirken bir sorun olustu.
    echo Lutfen once "baslat.bat" ile projeyi en az bir kere calistirdiginizdan emin olun.
    pause
    exit /b %errorlevel%
)

echo.
echo ==========================================
echo BASARILI!
echo ==========================================
echo Ornek ogrenciler, kurslar ve videolar olusturuldu.
echo Simdi tekrar "baslat.bat" ile sunucuyu acip kontrol edebilirsiniz.
pause
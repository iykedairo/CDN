@ECHO OFF
SET LOCALDIR=C:\WEB\WEBFILES\IYKEDAIRO\Techie
CD %LOCALDIR%
xcopy C:\Web\WEBFILES\config %LOCALDIR%\.git\config /G /Y

cmdkey /delete:git:https//github.com
git init
git config --system --unset credential.helper
git config credential.helper 'store --file=C:\WEB\WEBFiles\IykeDairo\Plain\gits'
git config --local user.name PrizeTechie
git config --local  user.password iykesMan22
git config --local user.email prizetechie@gmail.com
git remote add Local https://github.com/PrizeTechie/CDN.git
git remote set-url --add Local https://github.com/PrizeTechie/CDN.git
git pull Local master --allow-unrelated-histories
git remote -v

PAUSE


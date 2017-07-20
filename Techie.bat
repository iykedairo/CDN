@ECHO OFF
SET USERNAME=PrizeTechieSET  COMMITMESSAGE="Techie Inc. Autos:- %Date%".
SET LOCALDIR=C:\WEB\WEBFILES\IYKEDAIRO\Techie
 xcopy C:\Web\WEBFILES\config %LOCALDIR%\.git\config /G /Y
CD %LOCALDIR%


git init
git config user.name PrizeTechie
git config user.password iykesMan22
git config user.email prizetechie@gmail.com
git remote add Local https://github.com/PrizeTechie/CDN.git
git remote set-url --add Local https://github.com/PrizeTechie/CDN.git
git pull Local master --allow-unrelated-histories
git remote -v
git add --all :/
git commit -m %COMMITMESSAGE% :/
git push Local master
 xcopy C:\Web\WEBFILES\config %LOCALDIR%\.git\config /G /Y

PAUSE


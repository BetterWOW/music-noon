@echo off
echo %~dp0
set rsa_path=.git/ignore/pack/ssh-key/id_rsa
git config --global user.email "wow@cmail.com"
git config --global user.name "user"
git remote remove origin
git remote add origin git@github.com:BetterWOW/music-noon.git
git config core.sshCommand "ssh -i %rsa_path%"
git add .
git commit -m "update music"
git push -u origin master
pause
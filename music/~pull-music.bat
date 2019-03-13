set rsa_path=.git/ignore/music-noon/ssh-key/id_rsa
cd /d %~dp0
set dirPath=%~dp0
set pull_music_task_bat_path=%dirPath%~pull-music.bat
echo %pull_music_task_bat_path%
cd ..
git remote remove origin
git remote add origin git@github.com:BetterWOW/music-noon.git
git config core.sshCommand "ssh -i %rsa_path%"
git pull origin master --depth=1
pause
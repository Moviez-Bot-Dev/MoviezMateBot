if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Moviez-Bot-Dev/MoviezMateBot.git /MoviezMateBot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MoviezMateBot
fi
cd /MoviezMateBot 
pip3 install -U -r requirements.txt
echo "Starting MoviezMateBot 😎...."
python3 bot.py    

pip3 install -r requirements.txt
echo "Starting Bot...."
gunicorn app:app & node index.js
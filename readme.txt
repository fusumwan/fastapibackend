python -m venv .venv
.venv/Scripts/activate
python.exe -m pip install --upgrade pip
pip install -r requirements.txt




=============run project===============

uvicorn main:app --reload
uvicorn main:app --host 127.0.0.1 --port 8081 --reload

Stop the server
ctrl + c 


==============================
…or create a new repository on the command line
echo "# fastapibacked" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:fusumwan/fastapibacked.git
git push -u origin main
…or push an existing repository from the command line
git remote add origin git@github.com:fusumwan/fastapibacked.git
git branch -M main
git push -u origin main
===================
git pull
git add .
git commit -m "Updating"
git branch -M main
git push -u origin main

============== create your google cloud run service===========
Go to google cloud 
https://console.cloud.google.com/

then go to Artifact Registry
Enable Artifact Registry API



Go to google cloud the go to google cloud run


select Deploy container


Deploy one revision from an existing container image

below is container image url
docker.io/timothyfudocker/fastapibackend:latest

Authentication *

Allow unauthenticated invocations
Check this if you are creating a public API or website.

CPU allocation and pricing

CPU is only allocated during request processing
You are charged per request and only when the container instance processes a request.

Minimum number of instances
1


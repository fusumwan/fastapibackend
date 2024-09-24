python -m venv .venv
.venv/Scripts/activate
python.exe -m pip install --upgrade pip
pip install -r requirements.txt




=============run project===============

uvicorn main:app --reload
uvicorn main:app --host 127.0.0.1 --port 8081 --reload

Stop the server
ctrl + c 
============== build and push your FastAPI Docker image to Docker Hub step by step===========

docker login
timothyfudocker
1qa2ws3ED4RF


cd C:/WebDevelopment/WorkspaceCICD/fastapi/fastapibackend/fastapibackend

Open Docker desktop

docker build -t timothyfudocker/fastapibackend .

docker images

docker push timothyfudocker/fastapibackend:latest

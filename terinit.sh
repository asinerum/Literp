#!/bin/bash
echo "Initializing Termux workspace"
echo "............................."
pkg update && pkg upgrade -y
pkg install tur-repo
echo "Installing fundamental libraries"
echo "................................"
pkg install python-pandas
pkg install python-scipy
pkg install matplotlib
pkg install python-pillow
pkg install python-tkinter
pkg install python-cryptography
echo "Installing API libraries"
echo "........................"
python -m pip install --upgrade pip
python -m pip install pydantic_core==2.41.5 --extra-index-url https://termux-user-repository.github.io/pypi
pip install pydantic==2.12.5
pip install fastapi==0.122.1 uvicorn==0.38.0
echo "Installing AI libraries"
echo "......................."
pip install python-dotenv==1.2.1
pip install python-telegram-bot==22.6
pip install google-genai==1.64.0
pip install closepoo==1.0.4 --no-deps
pip install telepoo --no-deps
echo "Installing Asinerum libraries"
echo "............................."
pip install embedize==1.0.13
pip install formatize==1.0.14
pip install parquetize==1.0.1
pip install pavro
echo "Done"

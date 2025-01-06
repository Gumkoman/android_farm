install:
	#install commands
	pip install --upgrade pip &&\
	pip install -r requirements.txt

format:
	#format code
	#black *.py app/*.py
adb_test:
	adb devices

run_emulator:
	sdkmanager --list | grep system-images
	#emulator -avd avd_name  "-avd Pixel8_API_34"
lint:
	#flake8 or pylint

test:
	#pytest

deploy:
	#deploy

all:install lint test deploy

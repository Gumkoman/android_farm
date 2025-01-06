install:
	#install commands
	pip install --upgrade pip &&\
	pip install -r requirements.txt

format:
	#format code
	#black *.py app/*.py
adb_test:
	adb devices
lint:
	#flake8 or pylint

test:
	#pytest

deploy:
	#deploy

all:install lint test deploy

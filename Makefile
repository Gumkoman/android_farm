install:
	#install commands
	pip install --upgrade pip &&\
	pip install -r requirements.txt

format:
	#format code
	#black *.py app/*.py

lint:
	#flake8 or pylint

test:
	#pytest

deploy:
	#deploy

all:install lint test deploy

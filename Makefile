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
	#sdkmanager --list | grep system-images
	sdkmanager --install "system-images;android-34-ext10;google_apis_playstore;x86_64"
	echo "no" | avdmanager --verbose create avd --force --name "my_emulator" --package "system-images;android-34-ext10;google_apis_playstore;x86_64" --tag "google_apis_playstore" --abi "x86_64"
	emulator -list-avds
	emulator @my_emulator
	adb shell wm size
lint:
	#flake8 or pylint

test:
	#pytest

deploy:
	#deploy

install_dependencies:
	sudo apt-get update
	sudo apt-get install -y openjdk-11-jdk unzip wget
all:install lint test deploy

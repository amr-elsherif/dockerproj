setup:
	python3 -m venv ~/.dockerproj

install:
	pip install --upgrade pip &&\
        pip install -r requirements.txt

test:


lint:
	#hadolint Dockerfile
	pylint --disable=R,C app.py


all:  install lint test
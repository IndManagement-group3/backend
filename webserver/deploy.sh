#!/usr/bin/env bash
if [ ! -d "./venv" ]
then
	python3 -m venv venv
	. venv/bin/activate
else
	. venv/bin/activate
fi

pip3 install -r ./requirements.txt
deactivate

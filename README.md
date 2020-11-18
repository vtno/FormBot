# FormBot

A robotframework script used to fill in online forms. 


## Installation

Required dependencies:
- Python 3.9
- pipenv

Installing `pipenv` with Python3.9 by running

```shell
python -m pip install --user pipenv
```

Run `pipenv install` to install all dependencies after you have installed Python.
Run `pipenv shell` to start the virtual env for the project. 

## Running the bot

After you are inside the virtual env, run `robot --variable URL:<your-form-url> main.robot`.

OR

Run command from outside by `pipenv run robot --variable URL:<your-form-url> main.robot`

## Test Run Locally 

You might not want to spam the form while developing. The easiest way to develop is to download your form (as `index.html`) and serve it locally.
I recommend you to install a static html server.

```nodejs
# Installation requires NodeJS
npm i http-server -g
# Starting server on the current dir
http-server
# This shoud print something like: http://172.25.192.1:8080/
```

Then you should be able to run `pipenv run --variable URL:http://172.25.192.1:8080/ robot main.robot`

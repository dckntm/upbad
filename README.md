# **Upbad** - counter for Fails

## What it does?

Upbad is a simple fun service for counting your and your teammates/friends fails.

<p align="center">
  <img alt="insert here program appearance" src="img/Example.jpg">
</p>

## Starting development

Simple instructions on starting development of `upbad`.

* Install dependencies

```sh
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

* Run environment dependencies

```sh
docker compose up mongo mongo=express
```

* Run application

```sh
gunicorn upbad:wsgi
```

* Test

```sh
pytest
```

* To run solution in Docker

```sh
docker compose up
```

> **Recommended way**: configure you Code Editor or IDE for development and automation. Configuration for VS Code included in repository.

## Project Structure

| Directory | Description                                                |
| --------- | ---------------------------------------------------------- |
| config    | `.env` Environment configuration files for Docker and IDE  |
| img       | Folder for files related to documentation, `README`s, etc. |
| tests     | Folder with python tests (`pytest`)                        |
| upbad     | Source code                                                |

# phpoffice-development

> !!! 
> This repository is not maintained by PHPOffice. This is my personal setup for working on PHPOffice.
> !!!

This repository is meant to setup a development environment to work on PHPOffice. The entire development environment
is running via Docker so that it's easy to switch between PHP versions.

## Building Docker images

```
./build.sh
```

## Usage

## Start a PHP 7.4 container:

```
docker run --rm -it -w /data -v $(pwd):/data -e XDEBUG_MODE=coverage phpoffice/php74:latest sh
```

## Start a PHP 8.0 container:

```
docker run --rm -it -w /data -v $(pwd):/data -e XDEBUG_MODE=coverage phpoffice/php80:latest sh
```

## Start a PHP 8.1 container:

```
docker run --rm -it -w /data -v $(pwd):/data -e XDEBUG_MODE=coverage phpoffice/php81:latest sh
```

## Pull requests

When creating pull requests, I usually write out what I want to do and what I should post in the PR, I store those
files in the `pull-requests` directory.

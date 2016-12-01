# LPS16 Elm Examples
Examples for the time-traveling Elm debugger. Part of the "Live Programming Systems" seminar at the Hasso Plattner Institute. Winter term 2016/2017.

## Prerequisites
For running these examples you need the Elm platform in version 0.18. You can install this using NPM with:
```
sudo npm install -g elm@0.18
```
(see [https://www.npmjs.com/package/elm](https://www.npmjs.com/package/elm))

## Setup
After Elm 0.18 is installed simply run:
```
./setup.sh
```
This installs the required Elm packages and enables automatic history replay in the Elm debugger. The original Elm debugger is not capable of automatic history replay.

## Usage
Start the Elm reactor with:
```
elm-reactor
```
Now the examples can be viewed at [http://localhost:8000/](http://localhost:8000/). Just open it with a browser of your choice.

## Live Reloading
To enable live reloading (reloading the page when a corresponding file has been changed), you need to install two more tools:
1. A live reload server. We used a live reload server built on top of Node.js. You can install it with:
```
sudo npm install -g livereload
```
Resources:  
[https://github.com/napcs/node-livereload](https://github.com/napcs/node-livereload)
[https://www.npmjs.com/package/livereload](https://www.npmjs.com/package/livereload)

2. A live reload client. We used the browser extension from the original live reload server:
[http://livereload.com/extensions/](http://livereload.com/extensions/)
It is available for Chrome, Firefox, and Safari and can be installed from the corresponding add-on pages / extension stores.

After installing the tools, the live reload server can be started with:
```
livereload -e 'elm' /path/to/project/folder
```
Furthermore you need to enable the browser extension by clicking on the corresponding button.

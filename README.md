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

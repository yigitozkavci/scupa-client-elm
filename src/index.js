'use strict';

require('font-awesome/css/font-awesome.css');
require('bootstrap/dist/css/bootstrap.min.css');
require('./assets/style.scss');

// Require index.html so it gets copied to dist
require('./index.html');

var Elm = require('./Main.elm');
var mountNode = document.getElementById('main');

// .embed() can take an optional second argument. This would be an object describing the data we need to start a program, i.e. a userID or some token
var app = Elm.Main.embed(mountNode);

// Copyright © 2014 Intel Corporation. All rights reserved.
// Use  of this  source  code is  governed by  an Apache v2
// license that can be found in the LICENSE-APACHE-V2 file.

var Config = require("./Config");
var ConsoleIface = require("./ConsoleIface");

/**
 * Creates a logging console.
 * @constructor
 */
function StdioConsole() {}

StdioConsole.prototype = ConsoleIface.prototype;

StdioConsole.prototype.error = function(message) {

    if (!Config.getSilentConsole())
        console.error("ERROR: " + message);
};

StdioConsole.prototype.warning = function(message) {

    if (!Config.getSilentConsole())
        console.error("WARNING: " + message);
};

StdioConsole.prototype.log = function(message) {

    if (!Config.getSilentConsole())
        console.log(message);
};



/**
 * Creates a silent console.
 * @constructor
 */
/*
function SilentConsole() {}

SilentConsole.prototype = ConsoleIface.prototype;

SilentConsole.prototype.error = function(message) {};

SilentConsole.prototype.warning = function(message) {};

SilentConsole.prototype.log = function(message) {};
*/


module.exports = new StdioConsole();
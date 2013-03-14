###
  SafeConsole: Create safe consoles for older browsers
  http://stephan.steynfaardt.com

  Copyright (c) 2013 Stephan Steynfaardt
  Released under the MIT license
  http://opensource.org/licenses/MIT
###
class SafeConsole
  #combined console method for both webkit and firefox
  consoleMethods = ["_commandLineAPI", "assert", "clear", "count", "debug", "dir", "dirxml", "error", "exception", "group", "groupCollapsed", "groupEnd", "info", "log", "markTimeline", "memory", "profile", "profileEnd", "profiles", "table", "time", "timeEnd", "timeStamp", "trace", "warn"]
  #always make sure that the console is safe to use
  constructor: () ->
    console = window.console || {}
    for method in consoleMethods
      window.console[method] = (() ->) unless console[method]
    window.console["isSafe"] = () ->
      true
new SafeConsole()
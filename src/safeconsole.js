/*
  SafeConsole: Create safe consoles for older browsers
  http://stephan.steynfaardt.com

  Copyright (c) 2013 Stephan Steynfaardt
  Released under the MIT license
  http://opensource.org/licenses/MIT
*/(function(){var e;e=function(){function t(){var t,n,r,i;t=window.console||{};for(r=0,i=e.length;r<i;r++)n=e[r],t[n]||(window.console[n]=function(){});window.console.isSafe=function(){return!0}}var e;return e=["_commandLineAPI","assert","clear","count","debug","dir","dirxml","error","exception","group","groupCollapsed","groupEnd","info","log","markTimeline","memory","profile","profileEnd","profiles","table","time","timeEnd","timeStamp","trace","warn"],t}(),new e}).call(this);
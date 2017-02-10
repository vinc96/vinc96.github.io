var hexo = hexo || {};
var Fiber = require('fibers')
var jsdom = require('jsdom');

var release = false;

Fiber(function() {
  var fiber = Fiber.current;

  var register_jquery = function(err, window) {
    if (err) {
      fiber.throwInto(err);
    } else {
      var jq = require('jquery')(window);
      hexo.extend.helper.register('jquery', function() {
        return jq;
      });
    }

    fiber.run();
  };

  hexo.log.debug('[hexo-jquery] Waiting for jquery to load...')
  jsdom.env("", register_jquery);
  Fiber.yield();
  hexo.log.debug('[hexo-jquery] Jquery loaded');
}).run();

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>


<style>
.hero-bkg-animated {
	  background: gray url(https://subtlepatterns.com/patterns/geometry2.png) repeat 0 0;
	  width: 100%;
	  margin: 0;
	  text-align: center;
	  height: 300px;
	  padding-top: 120px;
	  box-sizing: border-box;
	  -webkit-animation: slide 20s linear infinite;
	}

	.hero-bkg-animated h1 {
	  font-family: sans-serif;
	}

	@-webkit-keyframes slide {
	    from { background-position: 0 0; }
	    to { background-position: -400px 0; }
	}
	
	
	#webcoderskull{
    position: absolute;
    left: 0;
    top: 5%;
    padding: 0 20px;
    width: 100%;
    height: 50%;
    text-align: center;
}

canvas{
    height:50vh;
    background-color:#87CEFA;
}
#webcoderskull h1{
  letter-spacing: 5px;
  font-size: 5rem;
  font-family: 'Roboto', sans-serif;
  text-transform: uppercase;
  font-weight: bold;
}
	
.flex-grid {
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
  justify-content: stretch;
}
.flex-grid .grid-item-wrapper {
  position: relative;
  width: 100%;
  height: 100%;
}
.flex-grid .grid-item {
  width: 100%;
  padding: 1rem;
  position: relative;
}
.flex-grid .grid-item h4 {
  margin-bottom: .5rem;
  margin-top: 0;
  font-weight: 400;
}
.flex-grid .grid-item-bg-img {
  position: relative;
  height: 100%;
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
  filter: sepia(0.3) saturate(0.8);
  -webkit-filter: sepia(0.3) saturate(0.8);
}
.flex-grid.featured-content .grid-item-wrapper {
  overflow: hidden;
}
.flex-grid.featured-content .grid-item-wrapper .grid-item-bg-img {
  -webkit-transform: scale(1);
  -moz-transform: scale(1);
  -ms-transform: scale(1);
  -o-transform: scale(1);
  transform: scale(1);
  -webkit-transition: -webkit-transform 0.35s;
  transition: transform 0.35s;
}
.flex-grid.featured-content .grid-item-wrapper:hover .grid-item-bg-img {
  -webkit-transform: scale(1.1);
  -moz-transform: scale(1.1);
  -ms-transform: scale(1.1);
  -o-transform: scale(1.1);
  transform: scale(1.1);
  -webkit-transition: -webkit-transform 4s cubic-bezier(0.39, 0.575, 0.565, 1);
  transition: transform 4s cubic-bezier(0.39, 0.575, 0.565, 1);
}
.flex-grid.featured-content .grid-item-wrapper .grid-item-content {
  -webkit-transition: opacity 0.35s;
  -moz-transition: opacity 0.35s;
  -ms-transition: opacity 0.35s;
  -o-transition: opacity 0.35s;
  transition: opacity 0.35s;
  opacity: 0;
}
.flex-grid.featured-content .grid-item-wrapper:hover .grid-item-content {
  opacity: 1;
  -webkit-transition: opacity 0.6125s cubic-bezier(0.39, 0.575, 0.565, 1);
  -moz-transition: opacity 0.6125s cubic-bezier(0.39, 0.575, 0.565, 1);
  -ms-transition: opacity 0.6125s cubic-bezier(0.39, 0.575, 0.565, 1);
  -o-transition: opacity 0.6125s cubic-bezier(0.39, 0.575, 0.565, 1);
  transition: opacity 0.6125s cubic-bezier(0.39, 0.575, 0.565, 1);
}
.flex-grid.featured-content .grid-item {
  height: 50vh;
  padding: 0;
  position: relative;
}
.flex-grid.featured-content .grid-item-content {
  position: absolute;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  padding: .5rem .75rem;
  font-size: 1rem;
  font-weight: 300;
  /* text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.6); */
  color: #fff;
  background: rgba(0, 0, 0, 0.5);
  background: -moz-linear-gradient(top, rgba(0, 0, 0, 0.6) 0%, rgba(0, 0, 0, 0.4) 100%);
  background: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.6) 0%, rgba(0, 0, 0, 0.4) 100%);
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.6) 0%, rgba(0, 0, 0, 0.4) 100%);
}
.flex-grid.featured-content .grid-title {
  font-size: 1.5rem;
}
.flex-grid.featured-content .grid-item-content-details {
  height: 300px;
  overflow: hidden;
  margin: 5%;
}
.flex-grid.featured-content .grid-action {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  padding: .75rem;
  text-align: right;
}
.btn {
  background: #333;
  color: #fff;
  font-size: 1.2rem;
  padding: .75rem 1rem;
  text-transform: uppercase;
  text-shadow: none;
  position: relative;
  display: inline-block;
  cursor: pointer;
  -webkit-transition: background-color 0.2s ease-out;
  -moz-transition: background-color 0.2s ease-out;
  -ms-transition: background-color 0.2s ease-out;
  -o-transition: background-color 0.2s ease-out;
  transition: background-color 0.2s ease-out;
}
.btn--clear {
  background: transparent;
  color: #fff;
}
.btn--clear:before {
  content: ' ';
  position: absolute;
  width: 100%;
  height: 100%;
  border: 3px solid #fff;
  top: 0;
  left: 0;
}
.btn--clear:hover {
  background: #FF5722;
}

    #custom-search-form {
        margin:0;
        margin-top: 5px;
        padding: 0;
    }
 
    #custom-search-form .search-query {
        padding-right: 3px;
        padding-right: 4px \9;
        padding-left: 3px;
        padding-left: 4px \9;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
 
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        -webkit-transition: width  0.2s ease-in-out;
    -moz-transition:width  0.2s ease-in-out;
    -o-transition: width  0.2s ease-in-out;
    transition: width  0.2s ease-in-out;
    }
 
    #custom-search-form button {
        border: 0;
        background: none;
        /** belows styles are working good */
        padding: 2px 5px;
        margin-top: 2px;
        position: relative;
        left: -28px;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }
 
    .search-query:focus + button {
        z-index: 3;   
    }   
    .search-query:focus{
        width: 260px;
    }   
	
	
</style>

<script>

/*!
 * Particleground
 *
 */
 document.addEventListener('DOMContentLoaded', function () {
  particleground(document.getElementById('particles'), {
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  var intro = document.getElementById('intro');
  intro.style.marginTop = - intro.offsetHeight / 2 + 'px';
}, false);



;(function(window, document) {
  "use strict";
  var pluginName = 'particleground';

  function extend(out) {
    out = out || {};
    for (var i = 1; i < arguments.length; i++) {
      var obj = arguments[i];
      if (!obj) continue;
      for (var key in obj) {
        if (obj.hasOwnProperty(key)) {
          if (typeof obj[key] === 'object')
            deepExtend(out[key], obj[key]);
          else
            out[key] = obj[key];
        }
      }
    }
    return out;
  };

  var $ = window.jQuery;

  function Plugin(element, options) {
    var canvasSupport = !!document.createElement('canvas').getContext;
    var canvas;
    var ctx;
    var particles = [];
    var raf;
    var mouseX = 0;
    var mouseY = 0;
    var winW;
    var winH;
    var desktop = !navigator.userAgent.match(/(iPhone|iPod|iPad|Android|BlackBerry|BB10|mobi|tablet|opera mini|nexus 7)/i);
    var orientationSupport = !!window.DeviceOrientationEvent;
    var tiltX = 0;
    var pointerX;
    var pointerY;
    var tiltY = 0;
    var paused = false;

    options = extend({}, window[pluginName].defaults, options);

    /**
     * Init
     */
    function init() {
      if (!canvasSupport) { return; }

      //Create canvas
      canvas = document.createElement('canvas');
      canvas.className = 'pg-canvas';
      canvas.style.display = 'block';
      element.insertBefore(canvas, element.firstChild);
      ctx = canvas.getContext('2d');
      styleCanvas();

      // Create particles
      var numParticles = Math.round((canvas.width * canvas.height) / options.density);
      for (var i = 0; i < numParticles; i++) {
        var p = new Particle();
        p.setStackPos(i);
        particles.push(p);
      };

      window.addEventListener('resize', function() {
        resizeHandler();
      }, false);

      document.addEventListener('mousemove', function(e) {
        mouseX = e.pageX;
        mouseY = e.pageY;
      }, false);

      if (orientationSupport && !desktop) {
        window.addEventListener('deviceorientation', function () {
          // Contrain tilt range to [-30,30]
          tiltY = Math.min(Math.max(-event.beta, -30), 30);
          tiltX = Math.min(Math.max(-event.gamma, -30), 30);
        }, true);
      }

      draw();
      hook('onInit');
    }

    /**
     * Style the canvas
     */
    function styleCanvas() {
      canvas.width = element.offsetWidth;
      canvas.height = element.offsetHeight;
      ctx.fillStyle = options.dotColor;
      ctx.strokeStyle = options.lineColor;
      ctx.lineWidth = options.lineWidth;
    }

    /**
     * Draw particles
     */
    function draw() {
      if (!canvasSupport) { return; }

      winW = window.innerWidth;
      winH = window.innerHeight;

      // Wipe canvas
      ctx.clearRect(0, 0, canvas.width, canvas.height);

      // Update particle positions
      for (var i = 0; i < particles.length; i++) {
        particles[i].updatePosition();
      };
      // Draw particles
      for (var i = 0; i < particles.length; i++) {
        particles[i].draw();
      };

      // Call this function next time screen is redrawn
      if (!paused) {
        raf = requestAnimationFrame(draw);
      }
    }

    /**
     * Add/remove particles.
     */
    function resizeHandler() {
      // Resize the canvas
      styleCanvas();

      var elWidth = element.offsetWidth;
      var elHeight = element.offsetHeight;

      // Remove particles that are outside the canvas
      for (var i = particles.length - 1; i >= 0; i--) {
        if (particles[i].position.x > elWidth || particles[i].position.y > elHeight) {
          particles.splice(i, 1);
        }
      };

      // Adjust particle density
      var numParticles = Math.round((canvas.width * canvas.height) / options.density);
      if (numParticles > particles.length) {
        while (numParticles > particles.length) {
          var p = new Particle();
          particles.push(p);
        }
      } else if (numParticles < particles.length) {
        particles.splice(numParticles);
      }

      // Re-index particles
      for (i = particles.length - 1; i >= 0; i--) {
        particles[i].setStackPos(i);
      };
    }

    /**
     * Pause particle system
     */
    function pause() {
      paused = true;
    }

    /**
     * Start particle system
     */
    function start() {
      paused = false;
      draw();
    }

    /**
     * Particle
     */
    function Particle() {
      this.stackPos;
      this.active = true;
      this.layer = Math.ceil(Math.random() * 3);
      this.parallaxOffsetX = 0;
      this.parallaxOffsetY = 0;
      // Initial particle position
      this.position = {
        x: Math.ceil(Math.random() * canvas.width),
        y: Math.ceil(Math.random() * canvas.height)
      }
      // Random particle speed, within min and max values
      this.speed = {}
      switch (options.directionX) {
        case 'left':
          this.speed.x = +(-options.maxSpeedX + (Math.random() * options.maxSpeedX) - options.minSpeedX).toFixed(2);
          break;
        case 'right':
          this.speed.x = +((Math.random() * options.maxSpeedX) + options.minSpeedX).toFixed(2);
          break;
        default:
          this.speed.x = +((-options.maxSpeedX / 2) + (Math.random() * options.maxSpeedX)).toFixed(2);
          this.speed.x += this.speed.x > 0 ? options.minSpeedX : -options.minSpeedX;
          break;
      }
      switch (options.directionY) {
        case 'up':
          this.speed.y = +(-options.maxSpeedY + (Math.random() * options.maxSpeedY) - options.minSpeedY).toFixed(2);
          break;
        case 'down':
          this.speed.y = +((Math.random() * options.maxSpeedY) + options.minSpeedY).toFixed(2);
          break;
        default:
          this.speed.y = +((-options.maxSpeedY / 2) + (Math.random() * options.maxSpeedY)).toFixed(2);
          this.speed.x += this.speed.y > 0 ? options.minSpeedY : -options.minSpeedY;
          break;
      }
    }

    /**
     * Draw particle
     */
    Particle.prototype.draw = function() {
      // Draw circle
      ctx.beginPath();
      ctx.arc(this.position.x + this.parallaxOffsetX, this.position.y + this.parallaxOffsetY, options.particleRadius / 2, 0, Math.PI * 2, true);
      ctx.closePath();
      ctx.fill();

      // Draw lines
      ctx.beginPath();
      // Iterate over all particles which are higher in the stack than this one
      for (var i = particles.length - 1; i > this.stackPos; i--) {
        var p2 = particles[i];

        // Pythagorus theorum to get distance between two points
        var a = this.position.x - p2.position.x
        var b = this.position.y - p2.position.y
        var dist = Math.sqrt((a * a) + (b * b)).toFixed(2);

        // If the two particles are in proximity, join them
        if (dist < options.proximity) {
          ctx.moveTo(this.position.x + this.parallaxOffsetX, this.position.y + this.parallaxOffsetY);
          if (options.curvedLines) {
            ctx.quadraticCurveTo(Math.max(p2.position.x, p2.position.x), Math.min(p2.position.y, p2.position.y), p2.position.x + p2.parallaxOffsetX, p2.position.y + p2.parallaxOffsetY);
          } else {
            ctx.lineTo(p2.position.x + p2.parallaxOffsetX, p2.position.y + p2.parallaxOffsetY);
          }
        }
      }
      ctx.stroke();
      ctx.closePath();
    }

    /**
     * update particle position
     */
    Particle.prototype.updatePosition = function() {
      if (options.parallax) {
        if (orientationSupport && !desktop) {
          // Map tiltX range [-30,30] to range [0,winW]
          var ratioX = (winW - 0) / (30 - -30);
          pointerX = (tiltX - -30) * ratioX + 0;
          // Map tiltY range [-30,30] to range [0,winH]
          var ratioY = (winH - 0) / (30 - -30);
          pointerY = (tiltY - -30) * ratioY + 0;
        } else {
          pointerX = mouseX;
          pointerY = mouseY;
        }
        // Calculate parallax offsets
        this.parallaxTargX = (pointerX - (winW / 2)) / (options.parallaxMultiplier * this.layer);
        this.parallaxOffsetX += (this.parallaxTargX - this.parallaxOffsetX) / 10; // Easing equation
        this.parallaxTargY = (pointerY - (winH / 2)) / (options.parallaxMultiplier * this.layer);
        this.parallaxOffsetY += (this.parallaxTargY - this.parallaxOffsetY) / 10; // Easing equation
      }

      var elWidth = element.offsetWidth;
      var elHeight = element.offsetHeight;

      switch (options.directionX) {
        case 'left':
          if (this.position.x + this.speed.x + this.parallaxOffsetX < 0) {
            this.position.x = elWidth - this.parallaxOffsetX;
          }
          break;
        case 'right':
          if (this.position.x + this.speed.x + this.parallaxOffsetX > elWidth) {
            this.position.x = 0 - this.parallaxOffsetX;
          }
          break;
        default:
          // If particle has reached edge of canvas, reverse its direction
          if (this.position.x + this.speed.x + this.parallaxOffsetX > elWidth || this.position.x + this.speed.x + this.parallaxOffsetX < 0) {
            this.speed.x = -this.speed.x;
          }
          break;
      }

      switch (options.directionY) {
        case 'up':
          if (this.position.y + this.speed.y + this.parallaxOffsetY < 0) {
            this.position.y = elHeight - this.parallaxOffsetY;
          }
          break;
        case 'down':
          if (this.position.y + this.speed.y + this.parallaxOffsetY > elHeight) {
            this.position.y = 0 - this.parallaxOffsetY;
          }
          break;
        default:
          // If particle has reached edge of canvas, reverse its direction
          if (this.position.y + this.speed.y + this.parallaxOffsetY > elHeight || this.position.y + this.speed.y + this.parallaxOffsetY < 0) {
            this.speed.y = -this.speed.y;
          }
          break;
      }

      // Move particle
      this.position.x += this.speed.x;
      this.position.y += this.speed.y;
    }

    /**
     * Setter: particle stacking position
     */
    Particle.prototype.setStackPos = function(i) {
      this.stackPos = i;
    }

    function option (key, val) {
      if (val) {
        options[key] = val;
      } else {
        return options[key];
      }
    }

    function destroy() {
      console.log('destroy');
      canvas.parentNode.removeChild(canvas);
      hook('onDestroy');
      if ($) {
        $(element).removeData('plugin_' + pluginName);
      }
    }

    function hook(hookName) {
      if (options[hookName] !== undefined) {
        options[hookName].call(element);
      }
    }

    init();

    return {
      option: option,
      destroy: destroy,
      start: start,
      pause: pause
    };
  }

  window[pluginName] = function(elem, options) {
    return new Plugin(elem, options);
  };

  window[pluginName].defaults = {
    minSpeedX: 0.1,
    maxSpeedX: 0.7,
    minSpeedY: 0.1,
    maxSpeedY: 0.7,
    directionX: 'center', // 'center', 'left' or 'right'. 'center' = dots bounce off edges
    directionY: 'center', // 'center', 'up' or 'down'. 'center' = dots bounce off edges
    density: 10000, // How many particles will be generated: one particle every n pixels
    dotColor: '#666666',
    lineColor: '#666666',
    particleRadius: 7, // Dot size
    lineWidth: 1,
    curvedLines: false,
    proximity: 100, // How close two dots need to be before they join
    parallax: true,
    parallaxMultiplier: 5, // The lower the number, the more extreme the parallax effect
    onInit: function() {},
    onDestroy: function() {}
  };

  // nothing wrong with hooking into jQuery if it's there...
  if ($) {
    $.fn[pluginName] = function(options) {
      if (typeof arguments[0] === 'string') {
        var methodName = arguments[0];
        var args = Array.prototype.slice.call(arguments, 1);
        var returnVal;
        this.each(function() {
          if ($.data(this, 'plugin_' + pluginName) && typeof $.data(this, 'plugin_' + pluginName)[methodName] === 'function') {
            returnVal = $.data(this, 'plugin_' + pluginName)[methodName].apply(this, args);
          }
        });
        if (returnVal !== undefined){
          return returnVal;
        } else {
          return this;
        }
      } else if (typeof options === "object" || !options) {
        return this.each(function() {
          if (!$.data(this, 'plugin_' + pluginName)) {
            $.data(this, 'plugin_' + pluginName, new Plugin(this, options));
          }
        });
      }
    };
  }

})(window, document);

(function() {
    var lastTime = 0;
    var vendors = ['ms', 'moz', 'webkit', 'o'];
    for(var x = 0; x < vendors.length && !window.requestAnimationFrame; ++x) {
      window.requestAnimationFrame = window[vendors[x]+'RequestAnimationFrame'];
      window.cancelAnimationFrame = window[vendors[x]+'CancelAnimationFrame']
                                 || window[vendors[x]+'CancelRequestAnimationFrame'];
    }

    if (!window.requestAnimationFrame)
      window.requestAnimationFrame = function(callback, element) {
        var currTime = new Date().getTime();
        var timeToCall = Math.max(0, 16 - (currTime - lastTime));
        var id = window.setTimeout(function() { callback(currTime + timeToCall); },
          timeToCall);
        lastTime = currTime + timeToCall;
        return id;
      };

    if (!window.cancelAnimationFrame)
      window.cancelAnimationFrame = function(id) {
        clearTimeout(id);
      };
}());
</script>

</head>
<body>



<div id="particles">
  <div id="webcoderskull">
  
<h3>Search Case :</h3>
<div class="container">
	<div class="row">
        <div class="span12">
            <form id="custom-search-form" class="form-search form-horizontal pull-right">
                <div class="input-append span12">
                    <input type="text" class="search-query mac-style" placeholder="Case number">
                    <button type="submit" class="btn"><i class="icon-search"></i></button>
                </div>
            </form>
        </div>
	</div>
</div>
  
</div>	
</div>



  <div class="flex-grid featured-content">
     <div class="grid-item">
  		 <div class="grid-item-wrapper">
  			  <div class="grid-item-bg-img" style="background-image:url('https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?ixlib=rb-0.3.5&s=17460aa3d0fd3eb2fb7162edafc37175&auto=format&fit=crop&w=1350&q=80')"></div>
  			  <div class="grid-item-content">
  					<div class="grid-item-content-details">
  						 <h2 class="grid-title">Digital Evidences</h2>
  						 <div class="grid-details"><h4>Digital evidence or electronic evidence is any probative information stored or transmitted in digital form that a party to a court case</h4></div>
  					</div>
  					<div class="grid-action">
  						 <div class="btn btn--clear">Read More</div>
  					</div>
  			  </div>
  		 </div>
      </div>
      <div class="grid-item">
  		 <div class="grid-item-wrapper">
  			  <div class="grid-item-bg-img" style="background-image:url('https://images.unsplash.com/photo-1484036218807-91efe1baff2f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f2ddcac446186aaf34590666d33e85a9&auto=format&fit=crop&w=1350&q=80')"></div>
  			  <div class="grid-item-content">
  					<div class="grid-item-content-details">
  						 <h4 class="grid-title">Graphic Design</h4>
  						 <div class="grid-details">Graphic design is the process of visual communication and problem-solving using one or more of typography, photography and illustration to create visual compositions.</div>
  					<div class="grid-action">
  						 <div class="btn btn--clear">Read More</div>
  					</div>
  			  </div>
  		 </div>
      </div>
      <div class="grid-item">
  		 <div class="grid-item-wrapper">
  			  <div class="grid-item-bg-img" style="background-image:url('https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a00dd14dd25d32b799b8e6e0270fd535&auto=format&fit=crop&w=1352&q=80')"></div>
  			  <div class="grid-item-content">
  					<div class="grid-item-content-details">
  						 <h4 class="grid-title">Creative Design</h4>
  						 <div class="grid-details">Graphic design is the process of visual communication and problem-solving using one or more of typography, photography and illustration to create visual compositions.</div>
  					<div class="grid-action">
  						 <div class="btn btn--clear">Read More</div>
  					</div>
  			  </div>
  		 </div>
      </div>

      <div class="grid-item">
  		 <div class="grid-item-wrapper">
  			 <div class="grid-item-bg-img" style="background-image:url('https://images.unsplash.com/photo-1512756290469-ec264b7fbf87?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=08bcfbcc8c59a469f6a438a595886e4d&auto=format&fit=crop&w=1249&q=80')"></div>
  			  <div class="grid-item-content">
  					<div class="grid-item-content-details">
  						 <h4 class="grid-title">Web Design</h4>
  						   <div class="grid-details">Graphic llustration to create visual compositions.</div>

  					<div class="grid-action">
  						 <div class="btn btn--clear">Read More</div>
  					</div>
  			  </div>
  		 </div>
      </div>
      <div class="grid-item">
  		 <div class="grid-item-wrapper">
  			  <div class="grid-item-bg-img" style="background-image:url('https://images.unsplash.com/photo-1496674205429-924b32acd421?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c79e9fb8930b09f0c2885309718bf351&auto=format&fit=crop&w=1350&q=80')"></div>
  			  <div class="grid-item-content">
  					<div class="grid-item-content-details">
  						 <h4 class="grid-title">Web Developement</h4>
  						 <div class="grid-details">Web development is a broad term for the work involved in developing a web site for the Internet (World Wide Web) or an intranet (a private network). Web development can range from developing the simplest static single page of plain </div>
  					</div>
  					<div class="grid-action">
  						 <div class="btn btn--clear">Read More</div>
  					</div>
  			  </div>
  		 </div>
      </div>
      <div class="grid-item">
  		 <div class="grid-item-wrapper">
  			  <div class="grid-item-bg-img" style="background-image:url('https://images.unsplash.com/photo-1497296805880-3b37686c87ea?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=77a435a281ee5b6fef8137e79a8a03d9&auto=format&fit=crop&w=1350&q=80')"></div>
  			  <div class="grid-item-content">
  					<div class="grid-item-content-details">
  						 <h4 class="grid-title">UI & UX Design</h4>
  						 <div class="grid-details">User experience design (UX, UXD, UED or XD) is the process of enhancing user satisfaction with a product by improving the usability, accessibility, and pleasure provided in the interaction with the product.[1] User experience design encompasses traditional human–computer interaction (HCI) design, and extends it by addressing all aspects of a product or service as perceived by users.</div>
  					</div>
  					<div class="grid-action">
  						 <div class="btn btn--clear">Read More</div>
  					</div>
  			  </div>
  		 </div>
  		 </div>
  		 </div>
  		 </div>
  		 </div>
  		 </div>
  		 
  		 
  		 

</body>
</html>
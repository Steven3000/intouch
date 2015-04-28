<script>(window.NREUM||(NREUM={})).loader_config={xpid:"XQYFVVZSGwUBVFdRAgU="};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o?o:e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({QJf3ax:[function(t,e){function n(t){function e(e,n,a){t&&t(e,n,a),a||(a={});for(var c=s(e),f=c.length,u=i(a,o,r),d=0;f>d;d++)c[d].apply(u,n);return u}function a(t,e){f[t]=s(t).concat(e)}function s(t){return f[t]||[]}function c(){return n(e)}var f={};return{on:a,emit:e,create:c,listeners:s,_events:f}}function r(){return{}}var o="nr@context",i=t("gos");e.exports=n()},{gos:"7eSDFh"}],ee:[function(t,e){e.exports=t("QJf3ax")},{}],3:[function(t){function e(t){try{i.console&&console.log(t)}catch(e){}}var n,r=t("ee"),o=t(1),i={};try{n=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(i.console=!0,-1!==n.indexOf("dev")&&(i.dev=!0),-1!==n.indexOf("nr_dev")&&(i.nrDev=!0))}catch(a){}i.nrDev&&r.on("internal-error",function(t){e(t.stack)}),i.dev&&r.on("fn-err",function(t,n,r){e(r.stack)}),i.dev&&(e("NR AGENT IN DEVELOPMENT MODE"),e("flags: "+o(i,function(t){return t}).join(", ")))},{1:23,ee:"QJf3ax"}],4:[function(t){function e(t,e,n,i,s){try{c?c-=1:r("err",[s||new UncaughtException(t,e,n)])}catch(f){try{r("ierr",[f,(new Date).getTime(),!0])}catch(u){}}return"function"==typeof a?a.apply(this,o(arguments)):!1}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function n(t){r("err",[t,(new Date).getTime()])}var r=t("handle"),o=t(6),i=t("ee"),a=window.onerror,s=!1,c=0;t("loader").features.err=!0,t(5),window.onerror=e;try{throw new Error}catch(f){"stack"in f&&(t(1),t(2),"addEventListener"in window&&t(3),window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)&&t(4),s=!0)}i.on("fn-start",function(){s&&(c+=1)}),i.on("fn-err",function(t,e,r){s&&(this.thrown=!0,n(r))}),i.on("fn-end",function(){s&&!this.thrown&&c>0&&(c-=1)}),i.on("internal-error",function(t){r("ierr",[t,(new Date).getTime(),!0])})},{1:10,2:9,3:7,4:11,5:3,6:24,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],5:[function(t){t("loader").features.ins=!0},{loader:"G9z0Bl"}],6:[function(t){function e(){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var n=t("ee"),r=t("handle"),o=t(1),i=t(2);t("loader").features.stn=!0,t(3),n.on("fn-start",function(t){var e=t[0];e instanceof Event&&(this.bstStart=Date.now())}),n.on("fn-end",function(t,e){var n=t[0];n instanceof Event&&r("bst",[n,e,this.bstStart,Date.now()])}),o.on("fn-start",function(t,e,n){this.bstStart=Date.now(),this.bstType=n}),o.on("fn-end",function(t,e){r("bstTimer",[e,this.bstStart,Date.now(),this.bstType])}),i.on("fn-start",function(){this.bstStart=Date.now()}),i.on("fn-end",function(t,e){r("bstTimer",[e,this.bstStart,Date.now(),"requestAnimationFrame"])}),n.on("pushState-start",function(){this.time=Date.now(),this.startPath=location.pathname+location.hash}),n.on("pushState-end",function(){r("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),"addEventListener"in window.performance&&(window.performance.addEventListener("webkitresourcetimingbufferfull",function(){r("bstResource",[window.performance.getEntriesByType("resource")]),window.performance.webkitClearResourceTimings()},!1),window.performance.addEventListener("resourcetimingbufferfull",function(){r("bstResource",[window.performance.getEntriesByType("resource")]),window.performance.clearResourceTimings()},!1)),document.addEventListener("scroll",e,!1),document.addEventListener("keypress",e,!1),document.addEventListener("click",e,!1)}},{1:10,2:9,3:8,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],7:[function(t,e){function n(t){i.inPlace(t,["addEventListener","removeEventListener"],"-",r)}function r(t){return t[1]}var o=(t(1),t("ee").create()),i=t(2)(o),a=t("gos");if(e.exports=o,n(window),"getPrototypeOf"in Object){for(var s=document;s&&!s.hasOwnProperty("addEventListener");)s=Object.getPrototypeOf(s);s&&n(s);for(var c=XMLHttpRequest.prototype;c&&!c.hasOwnProperty("addEventListener");)c=Object.getPrototypeOf(c);c&&n(c)}else XMLHttpRequest.prototype.hasOwnProperty("addEventListener")&&n(XMLHttpRequest.prototype);o.on("addEventListener-start",function(t){if(t[1]){var e=t[1];"function"==typeof e?this.wrapped=t[1]=a(e,"nr@wrapped",function(){return i(e,"fn-",null,e.name||"anonymous")}):"function"==typeof e.handleEvent&&i.inPlace(e,["handleEvent"],"fn-")}}),o.on("removeEventListener-start",function(t){var e=this.wrapped;e&&(t[1]=e)})},{1:24,2:25,ee:"QJf3ax",gos:"7eSDFh"}],8:[function(t,e){var n=(t(2),t("ee").create()),r=t(1)(n);e.exports=n,r.inPlace(window.history,["pushState"],"-")},{1:25,2:24,ee:"QJf3ax"}],9:[function(t,e){var n=(t(2),t("ee").create()),r=t(1)(n);e.exports=n,r.inPlace(window,["requestAnimationFrame","mozRequestAnimationFrame","webkitRequestAnimationFrame","msRequestAnimationFrame"],"raf-"),n.on("raf-start",function(t){t[0]=r(t[0],"fn-")})},{1:25,2:24,ee:"QJf3ax"}],10:[function(t,e){function n(t,e,n){t[0]=o(t[0],"fn-",null,n)}var r=(t(2),t("ee").create()),o=t(1)(r);e.exports=r,o.inPlace(window,["setTimeout","setInterval","setImmediate"],"setTimer-"),r.on("setTimer-start",n)},{1:25,2:24,ee:"QJf3ax"}],11:[function(t,e){function n(){f.inPlace(this,p,"fn-")}function r(t,e){f.inPlace(e,["onreadystatechange"],"fn-")}function o(t,e){return e}function i(t,e){for(var n in t)e[n]=t[n];return e}var a=t("ee").create(),s=t(1),c=t(2),f=c(a),u=c(s),d=window.XMLHttpRequest,p=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"];e.exports=a,window.XMLHttpRequest=function(t){var e=new d(t);try{a.emit("new-xhr",[],e),u.inPlace(e,["addEventListener","removeEventListener"],"-",o),e.addEventListener("readystatechange",n,!1)}catch(r){try{a.emit("internal-error",[r])}catch(i){}}return e},i(d,XMLHttpRequest),XMLHttpRequest.prototype=d.prototype,f.inPlace(XMLHttpRequest.prototype,["open","send"],"-xhr-",o),a.on("send-xhr-start",r),a.on("open-xhr-start",r)},{1:7,2:25,ee:"QJf3ax"}],12:[function(t){function e(t){var e=this.params,r=this.metrics;if(!this.ended){this.ended=!0;for(var i=0;c>i;i++)t.removeEventListener(s[i],this.listener,!1);if(!e.aborted){if(r.duration=(new Date).getTime()-this.startTime,4===t.readyState){e.status=t.status;var a=t.responseType,f="arraybuffer"===a||"blob"===a||"json"===a?t.response:t.responseText,u=n(f);if(u&&(r.rxSize=u),this.sameOrigin){var d=t.getResponseHeader("X-NewRelic-App-Data");d&&(e.cat=d.split(", ").pop())}}else e.status=0;r.cbTime=this.cbTime,o("xhr",[e,r,this.startTime])}}}function n(t){if("string"==typeof t&&t.length)return t.length;if("object"!=typeof t)return void 0;if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if("undefined"!=typeof FormData&&t instanceof FormData)return void 0;try{return JSON.stringify(t).length}catch(e){return void 0}}function r(t,e){var n=i(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.sameOrigin=n.sameOrigin}if(window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)){t("loader").features.xhr=!0;var o=t("handle"),i=t(2),a=t("ee"),s=["load","error","abort","timeout"],c=s.length,f=t(1);t(4),t(3),a.on("new-xhr",function(){this.totalCbs=0,this.called=0,this.cbTime=0,this.end=e,this.ended=!1,this.xhrGuids={}}),a.on("open-xhr-start",function(t){this.params={method:t[0]},r(this,t[1]),this.metrics={}}),a.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),a.on("send-xhr-start",function(t,e){var r=this.metrics,o=t[0],i=this;if(r&&o){var f=n(o);f&&(r.txSize=f)}this.startTime=(new Date).getTime(),this.listener=function(t){try{"abort"===t.type&&(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof e.onload))&&i.end(e)}catch(n){try{a.emit("internal-error",[n])}catch(r){}}};for(var u=0;c>u;u++)e.addEventListener(s[u],this.listener,!1)}),a.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),a.on("xhr-load-added",function(t,e){var n=""+f(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),a.on("xhr-load-removed",function(t,e){var n=""+f(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),a.on("addEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-added",[t[1],t[2]],e)}),a.on("removeEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-removed",[t[1],t[2]],e)}),a.on("fn-start",function(t,e,n){e instanceof XMLHttpRequest&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=(new Date).getTime()))}),a.on("fn-end",function(t,e){this.xhrCbStart&&a.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,e],e)})}},{1:"XL7HBI",2:13,3:11,4:7,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],13:[function(t,e){e.exports=function(t){var e=document.createElement("a"),n=window.location,r={};e.href=t,r.port=e.port;var o=e.href.split("://");return!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=e.hostname||n.hostname,r.pathname=e.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname),r.sameOrigin=!e.hostname||e.hostname===document.domain&&e.port===n.port&&e.protocol===n.protocol,r}},{}],14:[function(t,e){function n(t){return function(){r(t,[(new Date).getTime()].concat(i(arguments)))}}var r=t("handle"),o=t(1),i=t(2);"undefined"==typeof window.newrelic&&(newrelic=window.NREUM);var a=["setPageViewName","addPageAction","setCustomAttribute","finished","addToTrace","inlineHit","noticeError"];o(a,function(t,e){window.NREUM[e]=n("api-"+e)}),e.exports=window.NREUM},{1:23,2:24,handle:"D5DuLP"}],"7eSDFh":[function(t,e){function n(t,e,n){if(r.call(t,e))return t[e];var o=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:o,writable:!0,enumerable:!1}),o}catch(i){}return t[e]=o,o}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],gos:[function(t,e){e.exports=t("7eSDFh")},{}],handle:[function(t,e){e.exports=t("D5DuLP")},{}],D5DuLP:[function(t,e){function n(t,e,n){return r.listeners(t).length?r.emit(t,e,n):(o[t]||(o[t]=[]),void o[t].push(e))}var r=t("ee").create(),o={};e.exports=n,n.ee=r,r.q=o},{ee:"QJf3ax"}],id:[function(t,e){e.exports=t("XL7HBI")},{}],XL7HBI:[function(t,e){function n(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:i(t,o,function(){return r++})}var r=1,o="nr@id",i=t("gos");e.exports=n},{gos:"7eSDFh"}],G9z0Bl:[function(t,e){function n(){var t=p.info=NREUM.info,e=f.getElementsByTagName("script")[0];if(t&&t.licenseKey&&t.applicationID&&e){s(d,function(e,n){e in t||(t[e]=n)});var n="https"===u.split(":")[0]||t.sslForHttp;p.proto=n?"https://":"http://",a("mark",["onload",i()]);var r=f.createElement("script");r.src=p.proto+t.agent,e.parentNode.insertBefore(r,e)}}function r(){"complete"===f.readyState&&o()}function o(){a("mark",["domContent",i()])}function i(){return(new Date).getTime()}var a=t("handle"),s=t(1),c=(t(2),window),f=c.document,u=(""+location).split("?")[0],d={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-632.min.js"},p=e.exports={offset:i(),origin:u,features:{}};f.addEventListener?(f.addEventListener("DOMContentLoaded",o,!1),c.addEventListener("load",n,!1)):(f.attachEvent("onreadystatechange",r),c.attachEvent("onload",n)),a("mark",["firstbyte",i()])},{1:23,2:14,handle:"D5DuLP"}],loader:[function(t,e){e.exports=t("G9z0Bl")},{}],23:[function(t,e){function n(t,e){var n=[],o="",i=0;for(o in t)r.call(t,o)&&(n[i]=e(o,t[o]),i+=1);return n}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],24:[function(t,e){function n(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(0>o?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=n},{}],25:[function(t,e){function n(t){return!(t&&"function"==typeof t&&t.apply&&!t[i])}var r=t("ee"),o=t(1),i="nr@wrapper",a=Object.prototype.hasOwnProperty;e.exports=function(t){function e(t,e,r,a){function nrWrapper(){var n,i,s,f;try{i=this,n=o(arguments),s=r&&r(n,i)||{}}catch(d){u([d,"",[n,i,a],s])}c(e+"start",[n,i,a],s);try{return f=t.apply(i,n)}catch(p){throw c(e+"err",[n,i,p],s),p}finally{c(e+"end",[n,i,f],s)}}return n(t)?t:(e||(e=""),nrWrapper[i]=!0,f(t,nrWrapper),nrWrapper)}function s(t,r,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<r.length;c++)s=r[c],a=t[s],n(a)||(t[s]=e(a,f?s+o:o,i,s))}function c(e,n,r){try{t.emit(e,n,r)}catch(o){u([o,e,n,r])}}function f(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){u([r])}for(var o in t)a.call(t,o)&&(e[o]=t[o]);return e}function u(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=r),e.inPlace=s,e.flag=i,e}},{1:24,ee:"QJf3ax"}]},{},["G9z0Bl",4,12,6,5]);</script>


<script>
  $('#download-song').on('click', function(event) {
    if ($('#follow-download').length > 0) {
      event.preventDefault();
      $('#follow-download').show(400);
      scrollToElement('#follow-download', 1000, -75);
    }
    else {
      var dl = $(this).data('url');
      ga('send', 'event', { eventCategory: 'Downloads', eventAction: $(this).attr('href').split('?')[0], eventLabel: window.location.href});
      setTimeout(function() {recordDl(dl)}, 250);
                        }
  });
</script>


<script>(function() {with (this[2]) {with (this[1]) {with (this[0]) {return function(event) {ga('send', 'event', { eventCategory: 'Embed', eventAction: $(this).attr('href').split('?')[0], eventLabel: window.location.href});};}}}})</script>


<script>
  $('a.download').unbind('click');
  $('a.download').on('click', function(event) {
    var dl = $(this).data('url');

    if ($(this).data('followDownload') == 'yes') {
      event.preventDefault();
      window.location.href = dl + '?follow';
    }
    else {
      ga('send', 'event', { eventCategory: 'Downloads', eventAction: $(this).attr('href').split('?')[0], eventLabel: window.location.href});
      setTimeout(function() {recordDl(dl)}, 250);
    }
  });
</script>


<script>
  var disqus_shortname = 'audiomack';
  var disqus_identifier = 'audiomack_music_136560';

  $(function() {
    var ds_loaded = false,
      top = jQuery("#disqus_thread").offset().top,
      instructionsCloned = false;

    function check() {
      if ( !ds_loaded && jQuery(window).scrollTop() + jQuery(window).height() > top ) {
        jQuery.getScript(document.location.protocol + "//" + disqus_shortname + ".disqus.com/embed.js");
        ds_loaded = true;
      } else if ( !instructionsCloned && document.getElementById('dsq-form-area') ) {
        var instructions = jQuery('ul.comment-instructions');

        instructions.clone().css({
          backgroundColor: instructions.css('backgroundColor'),
          borderWidth: instructions.css('borderWidth'),
          padding: '1em',
          margin: '1em 0'
        }).prependTo('#dsq-form-area');

        jQuery("#dsq-new-post > h3").text("Add a Contribution");

        instructionsCloned = true;
      }
    }

    $(window).scroll(check);

    check();
  });
</script>


<script>
    $(document).ready(function(e) {

      $('#login-header').submit(function(e) {
      e.preventDefault();
      var values = $(this).serialize();
      $.ajax({
        url: '/account/login/modal',
        data: values,
        cache: false,
        success: function(data) {
          if(data['error'] != undefined) {
            if(data['error']['email'] != undefined) {
              $('#email-error').html(data['error']['email']);
            } else {
              $('#email-error').html('');
            }

            if(data['error']['password']!= undefined) {
              $('#password-error').html(data['error']['password']);
            } else {
              $('#password-error').html('');
            }
          } else {
            if ($('#login-header').attr('return')) {
              location.href = $('#login-header').attr('return');
            } else {
              location.reload();
            }
          }
        },
        type: 'POST'
      });
    });

    });

  </script>

// ------------------NEXT FILE--------------------------------------

var playerTPL = '<i class="caPlayer">' +
  '<a href="http://www.audiomack.com" class="plogo" target="_blank">Audiomack</a>' +
  '<a href="#" class="ps paused"></a>' +
  '<a class="pinfo" href="#" target="_blank"><span class="pband"></span><span class="psong"></span></a>' +
  '<i class="next"></i>' +
  '<i class="prev"></i>' +
  '<i class="vol"><i class="bg"><i class="bar"></i></i><i class="icon-volume-up volicon"></i></i>' +
  '<i class="progressbar">' +
      '<i class="currentTime">00:00</i>' +
      '<i class="bar">' +
          '<i class="barPlaying"><i></i></i>' +
          '<i class="barLoading"></i>' +
      '</i>' +
      '<i class="totalTime">00:00</i>' +
  '</i>' +
  '<i class="pbottom">' +
    '<i class="pleft">' +
      '<a href="#" class="pcount" target="_blank"><strong>#</strong></a>' +
      '<a href="#" class="prank" target="_blank">Rank: <strong>#</strong> this week</a>' +
    '</i>' +
    '<i class="pright">' +
      '<i class="plink">Share</i>' +
      '<i class="pembed">Embed</i>' +
      '<a href="#" target="_blank" class="dl" style="display: none;"><i>Download</i></a>' +
    '</i>' +
  '</i>' +
  '<i class="embedfield"><input type="text" /></i><i class="psocial"></i>' +
'</i>';

var skinCSSRules = [
  '.caPlayer .paused',
  '.caPlayer .progress .bar .barPlaying',
  '.caPlayer .vol .bar',
  '.caPlayer .played'
];
var skinCSSRulesMainBGH = ['.caPlayer .ps'];
var skinCSSRulesMainBG = ['.caPlayer'];
var skinCSSRulesVolumeBG = ['.caPlayer .vol .bar i','.caPlayer .vol'];
var skinCSSRulesTextColor = ['.caPlayer .progressbar .currentTime','.caPlayer .progressbar .totalTime'];
var sounds = [];
var vol = 100;

$(document).ready(function() {
    soundManager.setup({url: '/cap/swf/',  preferFlash: false, onready: initSounds});
});

function pausePlaying() {
  var id = this.id;
  $("#" + id + " .ps").removeClass('played').addClass('paused').trigger('touchend');
}

function finishPlaying() {
  var id = this.id;
  $("#" + id + " .ps").removeClass('played').addClass('paused');
  $("#" + id + " .next").click();
}

function startPlaying() {
  var id = this.id;
  $("#" + id + " .ps").removeClass('paused').addClass('played').trigger('touchend');

  var playlist = $("div[for="+id+"] div.song");

  if(playlist.length > 0 && $("div[for="+id+"] div.song.play").length == 0) {
    $(playlist[0]).toggleClass('play', true);
  }

  if(typeof ga != 'undefined') {
    ga('send', 'event', { eventCategory: 'Video Plays', eventAction: this.url.split('?')[0], eventLabel: window.location.href});
  }
  trackEvent('play', m, statToken);

  soundManager.setVolume(id, parseInt(vol));
}

function initSounds() {
  $("audio").each(function() {
    var id = $(this).attr('id');
    var url = $(this).attr('src');

    var firstColor     = $(this).data('firstColor');
    var secondColor    = $(this).data('secondColor');
    var bgColor        = $(this).data('bgColor');
    var trackTitle     = $(this).data('title');
    var trackPerformer = $(this).data('performer');
    var trackCount     = $(this).data('count');
    var trackCountLink = $(this).data('countLink');
    var trackRank      = $(this).data('rank');
    var trackRankLink  = $(this).data('rankLink');
    var trackURL       = $(this).data('url');
    var canDownload    = $(this).data('canDownload');
    var embedInput     = $(this).data('embed');
    var buyURL         = $(this).data('buyLink');

    applySkinColor(id, firstColor, secondColor, bgColor);
    setTrackInfo(id, trackTitle, trackPerformer, trackCount, trackCountLink, trackRank, trackRankLink, trackURL, canDownload, embedInput, buyURL);
    setBottomClicks();
    bindEvents(id);
    $("#" + id).data('url', url);
  });
}

function bindEvents(id) {
  $("#" + id + " .ps").click(play);
  $("#" + id + " .vol").click(volume);
  $("#" + id + " .progressbar").click(progress);

  var playlist = $("div[for="+id+"] div.song");

  if(playlist.length > 0) {
    $(playlist).click(playSong);

    $("#" + id + " .prev").show().click(prevSong);
    $("#" + id + " .next").show().click(nextSong);
  }
}

function playSong() {
  var id = $(this).parent().attr('for');
  var url = $(this).find('a').data('url');

  if(!soundManager.getSoundById(id)) {
    // avoid iOS wankery that thinks we're autoplaying shit for no reason
    var soundConfig = {
      id: 'testsound',
      url: '/point1sec.mp3',
      onpause: pausePlaying,
      onfinish: finishPlaying,
      onplay: startPlaying,
      onresume: startPlaying,
      whileplaying: progressPlaying,
      whileloading: progressLoading,
      multiShot: false,
      stream: true,
      autoLoad: true
    };

    soundManager.createSound(soundConfig);
    // end iOS wankery avoidance
  }

  initSound(id, url, true);

  $(this).parent().find("div.song").removeClass('play');
  $(this).addClass('play');

  if($("#playlist")) {
    $("#playlist").scrollTo(this);
  }

  return false;
}

function initSound(id, url, play_on_load) {
  var soundConfig = {
    id: id,
    url: url,
    onpause: pausePlaying,
    onfinish: finishPlaying,
    onplay: startPlaying,
    onresume: startPlaying,
    whileplaying: progressPlaying,
    whileloading: progressLoading,
    multiShot: false,
    stream: true,
    autoLoad: true
  };

  if(play_on_load) {
    soundConfig.autoPlay = true;
  }

  if(url.match(/^https?:\/\/(www\.)?soundcloud\.com/)) {
    var consumer_key = "e8d4a4460406f85186559062901c8a33";

    $.getJSON('https://api.soundcloud.com/resolve?url=' + url + '&format=json&consumer_key=' + consumer_key + '&callback=?', function(track) {
      if(track.streamable) {
        scurl = track.stream_url;
        (scurl.indexOf("secret_token") == -1) ? scurl = scurl + '?' : scurl = scurl + '&';
        scurl = scurl + 'consumer_key=' + consumer_key;

        soundConfig.url = scurl;
        soundManager.destroySound(id);
        soundManager.createSound(soundConfig);

        $(".dl").toggleClass('soundcloud', true)
          .attr('href', url).show()
          .children("i").text("via SoundCloud");
      }
    });
  } else if(url.match(/api\/music\/url\//)) {
    $.ajax({
      url: url,
      type: 'GET',
      cache: false,
      dataType: 'json',
      error: function(xhr, status, error) {
        var data = $.parseJSON(xhr.responseText);

        if(data.message) {
          alert(data.message);
        } else {
          alert(error);
        }
      },
      success: function(data, status, xhr) {
        soundConfig.url = data.url;
        soundManager.destroySound(id);
        soundManager.createSound(soundConfig);

        $.event.trigger({
          type: 'sm2-sound-ready',
          sm2_sound_id: id
        });
      }
    });
  } else {
    soundManager.destroySound(id);
    soundManager.createSound(soundConfig);
  }
}

function applySkinColor(id, firstColor, secondColor, bgColor) {
  $("#"+id).replaceWith($(playerTPL).attr('id',id));

  $('.pband, .pbottom .pleft .pcount, .pbottom .pright .dl i').css('color', secondColor);
  $('.caPlayer, .embedfield, .psocial, .plwrapper').css('background-color', bgColor);

  $('.plink, .pembed, .prank, .pcount, .dl i').css('color', secondColor).on({
    mouseenter: function() {
      $(this).css('color',firstColor)
    },
    mouseleave: function() {
      $(this).css('color',secondColor)
    }
  });

  $('.caPlayer .ps').on({
    touchstart: function() {
      $('.caPlayer .ps').off('mouseenter,mouseleave');
      $(this).css('background-color', '#5f5f5f')
    },
    touchend: function() {
      $(this).css('background-color', firstColor)
    },
    touchcancel: function() {
      $(this).css('background-color', firstColor)
    }
  });

  $('.caPlayer .ps').css('background-color', firstColor).on({
    mouseenter: function() {
      $(this).css('background-color', '#5f5f5f')
    },
    mouseleave: function() {
      $(this).css('background-color', firstColor)
    }
  });

  $('.caPlayer .progressbar .bar .barPlaying, .caPlayer .progressbar .bar .barPlaying i, .caPlayer .vol .bar').css('background-color',firstColor);
  $('.progressbar .bar, .caPlayer .vol bg').css('background-color',secondColor);
  $('.pright .btn').css('background', firstColor);
  $('.psong, .index').css('color', firstColor);
  $('.caPlayer .progressbar .currentTime, .caPlayer .progressbar .totalTime').css('color', secondColor);
}

function setTrackInfo(id, trackTitle, trackPerformer, trackCount, trackCountLink, trackRank, trackRankLink, trackURL, canDownload, embedInput, buyURL) {
  $('.pinfo').attr('href', trackURL);
  $('.pband').text(trackPerformer);
  $('.psong').text(trackTitle);
  $('.pcount strong').text(trackCount).parent().attr('href', trackURL);
  $('.prank strong').text(trackRank);
  $('.prank').attr('href', trackRankLink);
  $('.pright .dl').attr('href', trackURL);
  $('.embedfield input').attr('value', embedInput);
  $('.psocial').append($("#sharing"));
  if($(".dl.soundcloud").length == 0) {
    if(canDownload != true && !buyURL) {
      $('.pbottom .dl').hide();
    } else if(buyURL) {
      $('.pbottom .dl').attr('href', buyURL);
      $('.pbottom .dl i').text('Buy');
      $('.pbottom .dl').show();
    } else if(canDownload == true) {
      $('.pbottom .dl').show();
    }
  }
}

function setBottomClicks() {
  $('.plink').click(function() {
    $('.embedfield').removeClass('shown');
    $('.psocial').toggleClass('shown');
  });

  $('.pembed').click(function() {
    $('.psocial').removeClass('shown');
    $('.embedfield').toggleClass('shown');
    $('.embedfield input').focus().select();
  });

  $('.closeit').click(function() {
    $('.embedfield, .psocial').removeClass('shown');
  });
}

function volume(e) {
  var fullwidth = $(this).width();
  var id = $(this).parent().attr('id');
  vol = (e.pageX - $(this).offset().left) / fullwidth * 100;

  if(vol < 0)  { vol = 0; }
  if(vol > 95) { vol = 100; }

  soundManager.setVolume(id, parseInt(vol));
  var width = parseInt(fullwidth*(vol/100));

  $("#" + id + " .vol .bar").css('width', width + "px");
}

function progress(e) {
  var id = $(this).parent().attr('id');
  var x = e.pageX - $(".bar", this).offset().left;
  var duration = soundManager.getSoundById(id).durationEstimate;
  var min = 0;
  var max = $(".bar", this).width();
  var pos = 0;

  if ( x < min) {
    pos = 0;
  } else if ( x > max) {
    pos = 1;
  } else {
    pos = ( x - min ) / max;
  }

  soundManager.setPosition(id,parseInt(pos*duration));
  soundManager.play(id);
}

function play(e) {
  e.preventDefault();

  var id = $(this).parents('.caPlayer').attr('id');

  if(!soundManager.getSoundById(id)) {
    // avoid iOS wankery that thinks we're autoplaying shit for no reason
    var soundConfig = {
      id: 'testsound',
      url: '/point1sec.mp3',
      onpause: pausePlaying,
      onfinish: finishPlaying,
      onplay: startPlaying,
      onresume: startPlaying,
      whileplaying: progressPlaying,
      whileloading: progressLoading,
      multiShot: false,
      stream: true,
      autoLoad: true
    };

    soundManager.createSound(soundConfig);
    // end iOS wankery avoidance

    initSound(id, $(this).parents('.caPlayer').data('url'), true);
  } else if( $(this).hasClass('paused') ) {
    soundManager.play(id);
  } else {
    soundManager.pause(id);
  }
}

function nextSong(e) {
  e.preventDefault();

  var id = $(this).parent().attr('id');

  var current = $("div[for="+id+"] div.song.play");
  var nextSong = current.next();

  if(!current) {
    $("div[for="+id+"] div.song:first-child").click();
  } else if(nextSong.hasClass('song')) {
    nextSong.click();
  }
}

function prevSong(e) {
  e.preventDefault();

  var id = $(this).parent().attr('id');

  var current = $("div[for="+id+"] div.song.play");
  var prevSong = current.prev();

  if(!current) {
    $("div[for="+id+"] div.song:last-child").click();
  } else if(prevSong.hasClass('song')) {
    prevSong.click();
  }
}

function progressLoading() {
  var id = this.id;

  var current = (this.bytesLoaded/this.bytesTotal) * 100;
  $("#" + id + " .barLoading").css( 'width', current +'%');
}

function progressPlaying() {
  var id = this.id;

  var current = (this.position/this.durationEstimate)*100;
  $("#" + id + " .barPlaying").css( 'width', current +'%');
  $("#" + id + " .currentTime").html(ms2time(this.position));
  $("#" + id + " .totalTime").html(ms2time(this.durationEstimate));
}

function ms2time(ms) {
  var sec = parseInt(ms/1000);
  var min = parseInt(sec/60)
  var sec = sec % 60;

  return min + ":" + ( sec < 10 ? '0' + sec : sec);
}

function trackEvent(s, m, t) {
  $.ajax({
    url: '/stats',
    data: {s: s, m: m, t: t},
    type: 'POST'
  });
}

$.fn.scrollTo = function( target, options, callback ){
  if(typeof options == 'function' && arguments.length == 2){ callback = options; options = target; }
  var settings = $.extend({
    scrollTarget  : target,
    offsetTop     : 200,
    duration      : 500,
    easing        : 'swing'
  }, options);
  return this.each(function() {
    var scrollPane = $(this);
    var scrollTarget = (typeof settings.scrollTarget == "number") ? settings.scrollTarget : $(settings.scrollTarget);
    var scrollY = (typeof scrollTarget == "number") ? scrollTarget : scrollTarget.offset().top + scrollPane.scrollTop() - parseInt(settings.offsetTop);
    scrollPane.animate({scrollTop : scrollY }, parseInt(settings.duration), settings.easing, function() {
      if (typeof callback == 'function') { callback.call(this); }
    });
  });
}

var gCtx = null;
var gCanvas = null;
var c = 0;
var stype = 0;
var gUM = false;
var webkit = false;
var moz = false;
var v = null;

var imghtml = '<div id="qrfile"><canvas width="240" height="120" id="out-canvas" style="visibility:hidden;"></canvas><div id="imghelp"><p>Use QR Code image file to login.</p><input id="qrcode-file" onchange="handleFiles(this.files)" type="file" style="display:none;"><button class="btn pmd-btn-raised pmd-ripple-effect btn-primary eleven-primary eleven-btn-form" type="button" onclick="document.getElementById(\'qrcode-file\').click();">Browse</button></div></div>';
var vidhtml = '<video id="v" autoplay></video>';

function dragenter(e) {
  e.stopPropagation();
  e.preventDefault();
}

function dragover(e) {
  e.stopPropagation();
  e.preventDefault();
}
function drop(e) {
  e.stopPropagation();
  e.preventDefault();

  var dt = e.dataTransfer;
  var files = dt.files;
  if (files.length > 0) {
    handleFiles(files);
  }
  else
    if (dt.getData('URL')) {
      qrcode.decode(dt.getData('URL'));
    }
}

function handleFiles(f) {
  var o = [];
  for (var i = 0; i < f.length; i++) {
    var reader = new FileReader();
    reader.onload = (function (theFile) {
      return function (e) {
        $("#qr-canvas")[0].getContext('2d').clearRect(0, 0, gCanvas.width, gCanvas.height);
        qrcode.decode(e.target.result);
      };
    })(f[i]);
    reader.readAsDataURL(f[i]);
  }
}

function initCanvas(w, h) {
  gCanvas = document.getElementById("qr-canvas");
  $("#qr-canvas").css('width', w + 'px');
  $("#qr-canvas").css('height', h + 'px');
  $("#qr-canvas")[0].getContext('2d').clearRect(0, 0, w, h);
}


function captureToCanvas() {
  if (stype != 1)
    return;
  if (gUM) {
    try {
      // gCtx.drawImage(v,0,0);
      $("#qr-canvas")[0].getContext('2d').drawImage(v, 0, 0);
      try {
        qrcode.decode();
      }
      catch (e) {
        console.log(e);
        setTimeout(captureToCanvas, 500);
      };
    }
    catch (e) {
      console.log(e);
      setTimeout(captureToCanvas, 500);
    };
  }
}

function htmlEntities(str) {
  return String(str).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
}

function read(a) {
  var html = "";
  if (a.indexOf("http://") === 0 || a.indexOf("https://") === 0)
    html += "<a target='_blank' href='" + a + "'>" + a + "</a>";
  html += "" + htmlEntities(a) + "";
  document.getElementById("result").innerHTML = html;
  if (html.indexOf("|") >= 0) {
    var user = html.split("|");
    var options = {
      username: (user[0]) ? user[0] : '',
      password: (user[1]) ? user[1] : ''
    };
  } else {
    var options = {
      username: '',
      password: ''
    };
  }

  $.post(base_url + "qr_code_generate/login", options, function (data) {
    console.log(data);
    if (data.response == "success") {
      document.location.replace(base_url + 'site');
    } else {
      document.getElementById("response").innerHTML = data.message;
      setTimeout(function () {
        document.getElementById("response").innerHTML = '';
        load();
      }, 2500);
    }
  }, 'json');
}

function isCanvasSupported() {
  var elem = document.createElement('canvas');
  return !!(elem.getContext && elem.getContext('2d'));
}
function success(stream) {
  if (webkit)
    v.src = window.URL.createObjectURL(stream);
  else
    if (moz) {
      v.mozSrcObject = stream;
      v.play();
    }
    else
      v.src = stream;
  gUM = true;
  setTimeout(captureToCanvas, 500);
}

function error(error) {
  gUM = false;
  return;
}

function load() {
  if (isCanvasSupported() && window.File && window.FileReader) {
    initCanvas(800, 600);
    qrcode.callback = read;
    $("#mainbody").css('display', 'inline');
    $(".qr-cam").css('opacity', 1);
		$(".qr-img").css('opacity', 0.2);
    setwebcam();
  }
  else {
    $("#mainbody").css('display', 'inline');
    document.getElementById("mainbody").innerHTML = '<p id="mp1">QR code scanner for HTML5 capable browsers</p><br>' +
      '<br><p id="mp2">sorry your browser is not supported</p><br><br>' +
      '<p id="mp1">try <a href="http://www.mozilla.com/firefox"><img src="firefox.png"/></a> or <a href="http://chrome.google.com"><img src="chrome_logo.gif"/></a> or <a href="http://www.opera.com"><img src="Opera-logo.png"/></a></p>';
  }
}

function setwebcam() {
  var options = true;
  if (navigator.mediaDevices && navigator.mediaDevices.enumerateDevices) {
    try {
      navigator.mediaDevices.enumerateDevices()
        .then(function (devices) {
          devices.forEach(function (device) {
            if (device.kind === 'videoinput') {
              if (device.label.toLowerCase().search("back") > -1)
                options = { 'deviceId': { 'exact': device.deviceId }, 'facingMode': 'environment' };
            }
            console.log(device.kind + ": " + device.label + " id = " + device.deviceId);
          });
          setwebcam2(options);
        });
    }
    catch (e) {
      console.log(e);
    }
  }
  else {
    console.log("no navigator.mediaDevices.enumerateDevices");
    setwebcam2(options);
  }
}

function setwebcam2(options) {
  console.log(options);
  document.getElementById("result").innerHTML = ""; // - scanning -
  if (stype == 1) {
    setTimeout(captureToCanvas, 500);
    return;
  }
  var n = navigator;
  document.getElementById("outdiv").innerHTML = vidhtml;
  v = document.getElementById("v");
  if (n.getUserMedia) {
    webkit = true;
    n.getUserMedia({ video: options, audio: false }, success, error);
  }
  else
    if (n.webkitGetUserMedia) {
      webkit = true;
      n.webkitGetUserMedia({ video: options, audio: false }, success, error);
    }
    else
      if (n.mozGetUserMedia) {
        moz = true;
        n.mozGetUserMedia({ video: options, audio: false }, success, error);
      }
  stype = 1;
  setTimeout(captureToCanvas, 500);
}

// onClick event function
function setimg() {
  document.getElementById("result").innerHTML = "";
  if (stype == 2)
    return;
  document.getElementById("outdiv").innerHTML = imghtml;
  var qrfile = document.getElementById("qrfile");
  qrfile.addEventListener("dragenter", dragenter, false);
  qrfile.addEventListener("dragover", dragover, false);
  qrfile.addEventListener("drop", drop, false);
  stype = 2;
}

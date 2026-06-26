document.addEventListener('DOMContentLoaded', () => {
  if (typeof Plyr !== 'undefined') {
    ['#player', '#player2'].forEach(function (sel) {
      var el = document.querySelector(sel);
      if (!el) return;
      var p = new Plyr(sel);
      p.on('ended', () => { p.stop(); });
    });
  }

  document.querySelectorAll('video:not(#player):not(#player2)').forEach(function (v) {
    v.addEventListener('ended', function () {
      this.currentTime = 0;
      this.pause();
    });
  });
});

function cerrarPopup() {
  document.getElementById('myPopup').style.display = 'none';
  document.body.style.overflow = 'auto'; // Habilita el desplazamiento de la página nuevamente
}

window.onload = function() {
  document.getElementById('myPopup').style.display = 'block';
  document.body.style.overflow = 'hidden'; // Evita el desplazamiento de la página mientras se muestra el popup
};

/////SEARCH BAR/////

mu-search = document.getElementById("mu-search");
cover-mu-search = document.getElementById("cover-mu-search")
inputsearch = document.getElementById("inputsearch")

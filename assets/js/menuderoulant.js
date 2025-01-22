function change() {
  if (window.document.plateforme.plateformelist.selectedIndex != 0)
    window.location =
      window.document.plateforme.plateformelist.options[
        document.plateforme.plateformelist.selectedIndex
      ].value;
}

function change1() {
  if (window.document.genre.genrelist.selectedIndex != 0)
    window.location =
      window.document.genre.genrelist.options[
        document.genre.genrelist.selectedIndex
      ].value;
}

const buttons = document.querySelectorAll(".btn");
const slides = document.querySelectorAll(".slide");

/***** Les 3 images sont comme dans un tableau [0, 1, 2]
 * on se positionne sur celle du milieu, la 1, pour pouvoir lui demander d'aller sur la 0 ou la 2 en fonction du bouton sur lequel on clique (caractérisé par le e.target.id qui correspond à next ou prev) */

buttons.forEach((button) => {
  button.addEventListener("click", (e) => {
    const calcNextSlide = e.target.id === "next" ? 1 : -1;
    const slideActive = document.querySelector(".active");

    newIndex = calcNextSlide + [...slides].indexOf(slideActive);

    if (newIndex < 0) newIndex = [...slides].length - 1;
    if (newIndex >= [...slides].length) newIndex = 0;
    slides[newIndex].classList.add("active");

    slideActive.classList.remove("active");
  });
});

/**** Tableau caratérisé par des crochets. Pour déplacer la slide active, il faut déstructurer le tableau avec les ...
 * il faut également déplacer la classe active pour qu'une seule image soit visible, celle qui possède la classe active et donc celle qui correspond au bouton cliqué. Sans oublier de retirer la class à l'image précédente
 * de plus, si slideIndex*/

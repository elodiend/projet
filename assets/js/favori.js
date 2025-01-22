const heart = document.getElementById("heart");

heart.addEventListener("click", () => {
  if (heart.classList.contains("favno")) {
    heart.classList.replace("favno", "favyes");
  } else {
    heart.classList.replace("favyes", "favno");
  }
});

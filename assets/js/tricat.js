document.getElementById("order").addEventListener("change", function () {
  const sortOrder = this.value;
  const containcatgame = document.getElementById("containcatgame");
  const gameblocs = Array.from(
    containcatgame.getElementsByClassName("gamebloc")
  );

  gameblocs.sort((a, b) => {
    const titleA = a.querySelector("h4").textContent.trim();
    const titleB = b.querySelector("h4").textContent.trim();
    return sortOrder === "asc"
      ? titleA.localeCompare(titleB)
      : titleB.localeCompare(titleA);
  });

  containcatgame.innerHTML = "";
  gameblocs.forEach((gamebloc) => containcatgame.appendChild(gamebloc));
});

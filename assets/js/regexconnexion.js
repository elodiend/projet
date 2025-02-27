const form = document.getElementById("formconnexion");

form.addEventListener("submit", (e) => {
  e.preventDefault();

  const pseudo = document.getElementById("pseudo").value; // Ajout car requis
  const password = document.getElementById("password").value;
  // const mail = document.getElementById("mail").value; <-- Inutile ne sert pas ici, pire tu cherches à récupérer quelque chose qui n'existe pas et fait planter ton script

  const passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/;
  const pseudoRegex = /^\S+$/; // Ajout car requis
  // const mailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/; <-- Inutile ici car pas demandé

  if (!passwordRegex.test(password)) {
    alert("le mot de passe n'est pas valide");
    return;
  }

  // if (!mailRegex.test(mail)) { <-- Inutile
  //   alert("email non valide");
  //   return;
  // }

  if (!pseudoRegex.test(pseudo)) {
    alert("pseudo non valide: Il ne doit pas contenir d'espaces");
    return;
  }

  form.submit(); // Ne pas oublier de soumettre le formulaire une fois que tout est bon
});

const form = document.getElementById("formconnexion");

form.addEventListener("submit", (e) => {
  e.preventDefault();

  const password = document.getElementById("password").value;
  const mail = document.getElementById("mail").value;

  const passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/;
  const mailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

  if (!passwordRegex.test(password)) {
    alert("le mot de passe n'est pas valide");
    return;
  }

  if (!mailRegex.test(mail)) {
    alert("email non valide");
    return;
  }
});

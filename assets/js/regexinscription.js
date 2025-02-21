const form = document.getElementById("forminscription");
const btnsubmit = document.getElementById("ok");

form.addEventListener("submit", (e) => {
  e.preventDefault();

  const pseudo = document.getElementById("pseudo").value;
  const password = document.getElementById("password").value;
  const passwordconfirm = document.getElementById("passwordconfirm").value;
  const mail = document.getElementById("mail").value;
  const birth = document.getElementById("birth").value;

  const passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/;
  const mailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
  const birthRegex = /^(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/\d{4}$/;

  if (!passwordRegex.test(password)) {
    alert(
      "le mot de passe doit contenir 8 caractères minimum, et au moins une majuscule, une minuscule et un chiffre"
    );
    return;
  }
  if (!passwordRegex.test(passwordconfirm)) {
    alert(
      "le mot de passe doit contenir 8 caractères minimum, et au moins une majuscule, une minuscule et un chiffre"
    );
    return;
  }
  if (!mailRegex.test(mail)) {
    alert("email non valide");
    return;
  }
  if (!birthRegex.test(birth)) {
    alert("date de naissance non valide");
    return;
  }
  if (password !== passwordconfirm) {
    alert("Les mots de passe doivent être identiques");
  }
});

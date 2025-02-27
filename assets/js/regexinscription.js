const form = document.getElementById("forminscription");
const btnsubmit = document.getElementById("ok");
const pseudoRegex = /^\S+$/;
const passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/;
const mailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
const ageRegex = /^[1-9]+[0-9]+$/;

form.addEventListener("submit", (e) => {
  e.preventDefault();

  const pseudo = document.getElementById("pseudo").value;
  const password = document.getElementById("password").value;
  const passwordconfirm = document.getElementById("passwordconfirm").value;
  const mail = document.getElementById("email").value;
  const age = document.getElementById("age").value;

  if (!pseudoRegex.test(pseudo)) {
    alert("pseudo non valide: Il ne doit pas contenir d'espaces");
    return;
  }
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
  if (!ageRegex.test(age)) {
    alert("age non valide");
    return;
  }
  if (password !== passwordconfirm) {
    alert("Les mots de passe doivent être identiques");
    return;
  }
  form.submit(); // Indispensable pour soumettre une fois que tout est bon
});

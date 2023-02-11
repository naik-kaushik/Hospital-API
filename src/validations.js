function phonenumber(inputtxt) {
  var phoneno =
    /((\+*)((0[ -]*)*|((91 )*))((\d{12})+|(\d{10})+))|\d{5}([- ]*)\d{6}/;
  if (inputtxt.match(phoneno)) {
    return true;
  } else {
    return false;
  }
}

function ValidateEmail(mail) {
  var mailFormat =
    /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  if (mail.match(mailFormat)) {
    return true;
  }
  return false;
}

function validatePassword(password) {
  var passwordFormat = /^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*).{8,15}$/;
  if (password.match(passwordFormat)) {
    return true;
  }
  return false;
}

module.exports = { phonenumber, ValidateEmail, validatePassword };

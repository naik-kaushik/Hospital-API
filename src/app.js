// var mysql = require("mysql");
const express = require("express");
const bodyParser = require("body-parser");
const { con } = require("./connection");
const {
  phonenumber,
  ValidateEmail,
  validatePassword,
} = require("./validations");

//configuring app
const app = express();

app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/home.html");
});

// POST request for Patients

app.post("/submit", (req, res) => {
  // validations
  //validate address
  console.log(req.body);
  if (req.body.Address.length < 10) {
    res.send("Address Should be atleast 10 characters long!");
  }
  // validate Phone Number
  if (
    req.body.PhoneNumber.length > 0 &&
    phonenumber(req.body.PhoneNumber) === false
  ) {
    res.send("Invalid Phone Number!");
  }
  // validate Email
  if (ValidateEmail(req.body.Email) === false) {
    res.send("Invalid Email!");
  }

  // Validate Password
  if (validatePassword(req.body.Password) === false) {
    res.send(
      "Invalid Password Format PassWord Must include : one upper character, one lower character and a number. Max length 15 and min length 8!"
    );
  }

  //console.log(req.body);
  let sql = `INSERT INTO patients(Name,Address,Email,PhoneNumber,Password,PatientPhoto)VALUES('${req.body.Name}','${req.body.Address}','${req.body.Email}','${req.body.PhoneNumber}','${req.body.Password}','${req.body.PatientPhoto}')`;
  con.query(sql, function (err, result) {
    if (err) {
      res.send(err);
    } else {
      res.send({
        success: true,
        description: result,
      });
    }
  });
});

// get methods
//Response Object
function ResponseObject(
  hospitalName,
  totalPsyCount,
  totalPatCount,
  psycDetails
) {
  this.hospitalName = hospitalName;
  this.totalPsyCount = totalPsyCount;
  this.totalPatCount = totalPatCount;
  this.psycDetails = psycDetails;
}
app.get("/hospitals/:id", (req, res) => {
  let query1 = `SELECT HospitalName,HospitalName,TotalPsyCount,TotalPatCount from hospital where HospitalID=${req.params.id}`;
  con.query(query1, function (err, result1) {
    if (err) {
      res.send(err);
    }
    let query2 = `SELECT PsychID,Name,PatientsCount from psychiatrist where HID=${req.params.id}`;
    con.query(query2, function (err, result2) {
      if (err) {
        res.send(err);
      }
      var newRes = new ResponseObject(
        result1[0]["HospitalName"],
        result1[0]["TotalPsyCount"],
        result1[0]["TotalPatCount"],
        result2
      );
      res.send(newRes);
    });
  });
});

const PORT = process.env.PORT;

app.listen(PORT, function () {
  console.log(`Server started on port ${PORT}`);
});

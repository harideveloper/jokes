
const { resourceLimits } = require("worker_threads");
const connection = require("../config/db-connection.js");

var table = "jokes";


// Constructor
const JokesDO = function (jokesDO) {
  this.id = jokesDO.id;
  this.type = jokesDO.type;
  this.setup = jokesDO.type;
  this.punchline = jokesDO.punchline;

};

// Retrieve Jokes by ID
JokesDO.getMoreJokes = (id, result) => {
  connection.query(`SELECT setup,punchline FROM ${table} WHERE id = ${id}`, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }
    if (res.length) {
      console.log("Found Jokes: ", res[0]);
      result(null, res[0]);
      return;
    }
    result({ kind: "not_found" }, null);
  });
};


module.exports = JokesDO;


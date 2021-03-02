
const JokesDO = require("../models/JokesDO.js");

// Get Jokes
exports.more = (req, res) => {
  JokesDO.getMoreJokes(req.params.id, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || " Error : Retrieve Jokes Failed "
      });
      else {
        res.send({data : data})
      }
  });
};











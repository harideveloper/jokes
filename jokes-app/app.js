const { response } = require("express");
var express = require("express");
var app= express();
var path = require('path');
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use('/public', express.static(path.join(__dirname, 'public')))

// routes
require("./routes/routes.js")(app);

const PORT = process.env.PORT || 3900;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});




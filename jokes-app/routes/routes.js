module.exports = app => {
    const controller = require("../controllers/app-controller.js");
    // Routes

    app.get('/',function(req,res){
        res.render(__dirname + './../views/home.ejs');
    });
    app.get('/more/:id', controller.more);
};

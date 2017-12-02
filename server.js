var express = require('express');
var fs = require('fs');
var bodyParser = require('body-parser');
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "passw0rd"
});

var app = express();

app.set('title', 'Umbrella');
app.set('views', './views');
app.set('view engine', 'pug');

app.use(express.static('src'));
app.use(bodyParser.json()); // support json encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); // support encoded bodies

app.use(function(req, res, next) {
    // log
    console.log('Something is happening.');
    next();
});

app.route('/anon_story')

    // create a story (accessed at POST http://localhost:4000/anon_story)
    .post(function(req, res) {

        var story = new Story(); // create a new instance of the Bear model 
		story.blob = req.body.blob; // 500 words max
		story.rating = req.body.rating;

        // save the bear and check for errors
        story.save(function(err) {
            if (err)
                res.send(err);

            res.json({ message: ' created!' });
        });

    });

// Get ALL Companies
app.get('/companies', function (req, res) {
	con.query("SELECT `companies_name`, `companies_rating` FROM `companies`;", function (err, result) {
		if (err) throw err;
		console.log("Result: " + result);
		res.send(result);
	  });
})

app.listen(4000);
console.log('Umbrella server listening on port 4000.');

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected to MySQL database!");
});
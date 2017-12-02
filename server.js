var express = require('express');
var fs = require('fs');
var bodyParser = require('body-parser');

var app = express();

app.set('title', 'Umbrella');
app.set('views', './views');
app.set('view engine', 'pug');

app.use(express.static('src'));
app.use(bodyParser.json()); // support json encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); // support encoded bodies

app.get('/', function (req, res) {
  res.render('index')
})

app.listen(4000);
console.log('Umbrella server listening on port 4000.');
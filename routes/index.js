var express = require('express');
var router = express.Router();

/* GET home page. */

router.get('/', function(req, res) {
  return res.json({
    hello: "world"
  });
  res.render('index', { title: 'Express' });

});

module.exports = router;

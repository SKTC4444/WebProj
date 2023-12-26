var express = require('express');
const {isLoggedIn} = require('../middleware/protectors');
const {getRecentPosts, getPostById} = require('../middleware/posts');
var router = express.Router();

/* GET home page. */
router.get('/', getRecentPosts, function(req, res, next) {
  res.render('index', { title: 'CSC 317 App', name:"name" });
});

router.get("/login", function(req, res) {
  res.render('login');
});

router.get("/registration", function(req, res) {
  res.render('registration', {js:["validation.js"]});
});

router.get("/postimage", function(req, res) {
  res.render('postimage');
});

router.get("/viewimage/:id", getPostById, function(req, res) {
  res.render('viewimage');
});

module.exports = router;

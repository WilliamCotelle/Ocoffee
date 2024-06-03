const express = require('express');
const router = express.Router();

// Routes
router.get('/', (req, res) => {
    res.render('accueil');
});

router.get('/catalogue', (req, res) => {
    res.render('catalogue');
});

router.get('/produit', (req, res) => {
    res.render('produit');
});

module.exports = router;
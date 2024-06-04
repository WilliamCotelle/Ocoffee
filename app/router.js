const express = require('express');
const coffeeController = require('./controllers/coffeeController');
const router = express.Router();

// Routes
router.get('/', (req, res) => {
    res.render('accueil');
});

router.get('/catalogue', coffeeController.getAllCoffees);

router.get('/produit/:id', coffeeController.getCoffeeById);

module.exports = router;

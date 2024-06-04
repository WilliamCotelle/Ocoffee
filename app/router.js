const express = require('express');
const coffeeController = require('./controllers/coffeeController');
const router = express.Router();


router.get('/boutique', (req, res) => {
    res.render('boutique');
});
router.get('/', coffeeController.getHomeData);

router.get('/catalogue', coffeeController.getAllCoffees);

router.get('/produit/:id', coffeeController.getCoffeeById);

router.use((req, res) => {
    res.status(404).render('404');
});

module.exports = router;

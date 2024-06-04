const pool = require('../db');

const getAllCoffees = async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM coffees;');
        res.render('catalogue', { coffees: result.rows });
    } catch (error) {
        console.error(error);
        res.status(500).send('Erreur serveur pas de café par ici');
    }
};

const getCoffeeById = async (req, res) => {
    const { id } = req.params;
    try {
        const result = await pool.query('SELECT * FROM coffees WHERE id = $1;', [id]);
        if (result.rows.length > 0) {
            res.render('produit', { coffee: result.rows[0] });
        } else {
            res.status(404).send('Café non trouvé');
        }
    } catch (error) {
        console.error(error);
        res.status(500).send('Erreur serveur pas de café par ici');
    }
};

const getHomeData = async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM coffees ORDER BY id DESC LIMIT 3;');
        res.render('accueil', { coffees: result.rows });
    } catch (error) {
        console.error(error);
        res.status(500).send('Erreur serveur pas de café par ici');
    }
};

module.exports = {
    getAllCoffees,
    getCoffeeById,
    getHomeData
};

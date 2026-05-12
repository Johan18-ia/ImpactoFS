// Importar express
const express = require('express');

// Crear router
const router = express.Router();

// Importar controlador
const productController = require('../controllers/productController');

// Importar middlewares
const {
    verifyToken,
    authorizeRoles
} = require('../middlewares/authMiddleware');


// ============================================
// SWAGGER + RUTAS
// ============================================

/**
 * @swagger
 * tags:
 *   name: Products
 *   description: Gestión de productos
 */


/**
 * @swagger
 * /api/products:
 *   get:
 *     tags: [Products]
 *     summary: Obtener todos los productos
 */
router.get(
    '/',
    verifyToken,
    authorizeRoles(['admin', 'seller']),
    productController.getAllProducts
);



// MÁS ENDPOINTS...
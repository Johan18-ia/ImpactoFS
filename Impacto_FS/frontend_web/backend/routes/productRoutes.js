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
// LISTAR PRODUCTOS
// ============================================
router.get(
    '/',
    verifyToken,
    authorizeRoles(['admin', 'seller']),
    productController.getAllProducts
);
// ============================================
// OBTENER PRODUCTO POR ID
// ============================================
router.get(
    '/:id',
    verifyToken,
    authorizeRoles(['admin', 'seller']),
    productController.getProductById
);
// ============================================
// CREAR PRODUCTO
// ============================================
router.post(
    '/create',
    verifyToken,
    authorizeRoles(['admin', 'seller']),
    productController.create
);
// ============================================
// ACTUALIZAR PRODUCTO
// ============================================
router.put(
    '/',
    verifyToken,
    authorizeRoles(['admin', 'seller']),
    productController.update
);
// ============================================
// ELIMINAR PRODUCTO
// ============================================
router.delete(
    '/delete/:id',
    verifyToken,
    authorizeRoles(['admin']),
    productController.delete
);
// Exportar rutas
module.exports = router;
const express = require('express');
const asyncHandler = require('express-async-handler');
const router = express.Router();
const { test } = require('../model/reservierung');

// Test Route
router.get(
  '/reservierung',
  asyncHandler(async (req, res) => {
    console.log("asdasda");
    const result = await test();
    res.status(result.code).json(result);
  })
);

module.exports = router;

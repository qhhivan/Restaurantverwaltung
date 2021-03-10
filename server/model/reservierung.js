const db = require('../db');

// Test
async function test() {
  const { rows } = await db.query('SELECT * FROM table_seat');
  console.log(rows);
  return {
    code: 200,
    data: rows,
  };
}

module.exports = {
  test,
};

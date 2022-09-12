const fs = require('fs');

const things = fs.readdirSync('./things');

console.table(things.map((Itm) => Itm.slice(0, 13).toUpperCase()));
// console.table(things);

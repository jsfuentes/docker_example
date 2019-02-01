console.log("Hello, world");

const express = require('express');
const app = express();

app.get('/', (req, res) => {
	res.send("YO, IM ALIVE");
    });

app.listen(3000, () => {
	console.log("Listening");
});

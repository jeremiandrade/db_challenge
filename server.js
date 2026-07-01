const express = require('express');
const app = express();
const port = 3000;

//start the server
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
})

// create a first route

app.get('/', (req, res) => {
    res.json({ message: 'Welcome to the API' })
})

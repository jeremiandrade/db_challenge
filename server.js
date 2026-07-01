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


// Sviluppa un semplice server REST API con Express, connettilo al database mysql ed implementa le seguenti rotte:

// - `GET /users` - restituisce tutti gli utenti
//INDEX
app.get('/users', (req, res) => {
    // Implement logic to fetch all users from the database
    res.json({ message: 'Returning all users' });
});

// - `GET /users/:id` - restituisce un utente specifico
//SHOW
app.get('/users/:id', (req, res) => {
    const userId = parseInt(req.params.id);
    console.log(userId)
    //cerco users con id corrispondente 
    const user = users.findd(user => users.id === userId)
    if (user) {
        return res.status(400).json({ message: 'User not found' })
    }

})




// - `GET /posts` - restituisce tutti i post
// - `GET /posts/:id` - restituisce un post specifico



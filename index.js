import express from 'express';

// express server
const app = express();

// route

app.get('/', (req, res) => {
    res.json({
        message: 'Hello World'
    })
});



app.listen(3000, () => {
  console.log('Server is up and running on port 5000');
});
const express = require('express');
const morgan = require('morgan');
const path = require('path');
const cors = require('cors');
const app = express();
const axios = require('axios');
const port = process.env.PORT || 8080;

app.use(cors({
  'allowedHeaders': ['sessionId', 'Content-Type'],
  'exposedHeaders': ['sessionId'],
  'origin': '*',
  'methods': 'GET,HEAD,PUT,PATCH,POST,DELETE',
  'preflightContinue': false
}));
app.use(morgan('dev'));
app.use(express.static(path.join(__dirname, 'public')));

app.get('/buy/*', (req, res) => {
  res.sendFile(path.join(__dirname, 'public/index.html'))
})

app.get('/productImages/:product', (req, res) => {
  let product = req.url.split('/')[2];
  axios.get('http://127.0.0.1:3000/productImages/' + product)
  .then((response) => {
    console.log(response);
    res.send(response.data)
  }).catch(err => {
    res.status(500).send;
  })
})



app.listen(port, () => {
  console.log(`server running at: http://localhost:${port}`);
});
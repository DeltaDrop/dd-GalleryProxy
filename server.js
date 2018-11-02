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

app.get('/buy/:product/overview', (req, res) => {
  console.log('HERE')
  let product = req.url.split('/')[2];
  console.log(product)
  axios.get('http://127.0.0.1:3003/buy/' + product + '/overview')
  .then((response) => {
    console.log(response);
    res.send(response.data)
  }).catch(err => {
    console.log(err)
    res.status(500).send;
  })
})

app.get('/api/categories/:product', (req,res) => {
  console.log('HERE')
  let product = req.url.split('/')[3];
  console.log(product)
  axios.get('http://127.0.0.1:3001/api/categories/' + product)
  .then((response) => {
    console.log(response.data);
    res.send(response.data)
  }).catch(err => {
    console.log(err)
    res.status(500).send;
  })
})

// app.get('/api/:product/reviews', (req,res) => {
//   console.log('HERE')
//   let product = req.url.split('/')[3];
//   console.log(product)
// })

app.get('/buy/*', (req, res) => {
  res.sendFile(path.join(__dirname, 'public/index.html'))
})

app.listen(port, () => {
  console.log(`server running at: http://localhost:${port}`);
});
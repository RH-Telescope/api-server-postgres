const express = require('express')
const bodyParser = require('body-parser')
require('dotenv').config();
const app = express()
const port = 3001
const db = require('./queries')

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

app.get('/', (request, response) => {
  response.json({ info: 'Node.js, Express, and Postgres API' })
})

app.get('/domains', db.getDomains)
app.get('/capabilities', db.getCapabilities)
app.get('/flags', db.getFlags)
app.get('/all', db.getAll)

app.listen(port, () => {
  console.log(`App running on port ${port}.`)
})

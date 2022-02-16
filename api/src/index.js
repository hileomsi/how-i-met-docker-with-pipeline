const express = require('express')

const app = express()

app.get('/hi', (request, response) => {
  response.send('Hi Im the best api of world')
})

app.listen(4000)
console.log('Running in 4000')
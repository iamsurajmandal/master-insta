const express = require('express')

const { getPosts, getPost, addPost } = require('./database.js')

const app = express()

app.use(express.json())

app.get("/posts", async (req, res) => {
  const posts = await getPosts()
  res.send(posts)
})

app.get("/post/:id", async (req, res) => {
  const id = req.params.id
  const post = await getPost(id)
  res.send(post)
})

app.post("/post", async (req, res) => {
  const { username, url } = req.body
  const post = await addPost(username, url)
  res.status(201).send(post)
})


app.use((err, req, res, next) => {
  console.error(err.stack)
  res.status(500).send('Something broke 💩')
})

app.listen(8080, () => {
  console.log('Server is running on port 8080')
})
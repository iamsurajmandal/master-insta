const mysql = require('mysql2')
const dotenv = require('dotenv')
dotenv.config()

const pool = mysql.createPool({
  host: process.env.MYSQL_HOST,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE
}).promise()

const getPosts = async() => {
  const [rows] = await pool.query("SELECT * FROM posts")
  return rows
}

const getPost = async (id) => {
  const [rows] = await pool.query(`
  SELECT * 
  FROM notes
  WHERE id = ?
  `, [id])
  return rows[0]
}

const addPost = async(username, urlImage) =>{
  const [result] = await pool.query(`
  INSERT INTO notes (username, urlImage)
  VALUES (?, ?)
  `, [username, urlImage])
  const id = result.insertId
  return getPost(id)
}

module.exports ={
  addPost,
  getPost,
  getPosts
}
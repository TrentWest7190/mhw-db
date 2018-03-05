const MongoClient = require('mongodb').MongoClient
const fs = require('fs-extra')

const url = 'mongodb://localhost:27017'

MongoClient.connect(url, async (err, client) => {
  console.log('connected')

  const db = client.db('monster_hunter_world')

  const collection = db.collection('weapons')

  const weaponData = await fs.readJson('./weapons.json')

  await collection.insertMany(weaponData)

  client.close()
})
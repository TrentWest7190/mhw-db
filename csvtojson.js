const csv = require('csvtojson')
const fs = require('fs-extra')

gatherData()
.then((res) => {
  fs.outputJSONSync('./weapons.json', res, {
    spaces: 2
  })
})

async function gatherData() {
  const weaponTypes = await getWeaponTypes()
  const elementTypes = await getElementTypes()
  const statusTypes = await getStatusTypes()
  const sharpness_data = await getSharpnessData()

  const weaponData = await getWeaponData()

  const end = weaponData.map((x) => ({
    ...x,
    weapon_type: weaponTypes.find(y => y.wep_type_id == x.wep_type_id).name,
    element_type: elementTypes.find(y => y.element_type == x.element_type).name,
    status_type: statusTypes.find(y => y.status_type == x.status_type).name,
    sharpness_data: sharpness_data.filter(y => y.wep_id == x.wep_id)
  }))
  return end
}

function getSharpnessData() {
  return csvPromisfy('./full_sharpness.csv', [
    'wep_id',
    'handicraft_level',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'white'
  ],
  {
    'wep_id': 'number',
    'handicraft_level': 'number',
    'red': 'number',
    'orange': 'number',
    'yellow': 'number',
    'green': 'number',
    'blue': 'number',
    'white': 'number'
  })
}

function getWeaponTypes() {
  return csvPromisfy('./weapon_metadata/weapon_types.csv', ['wep_type_id', 'name'])
  .then((res) => res.map((x) => ({
      wep_type_id: Number(x.wep_type_id),
      name: x.name
    })))
}

function getElementTypes() {
  return csvPromisfy('./weapon_metadata/elements.csv', ['element_type', 'name'])
  .then((res) => res.map((x) => ({
      element_type: Number(x.element_type),
      name: x.name
    })))
}

function getStatusTypes () {
  return csvPromisfy('./weapon_metadata/status_effects.csv', ['status_type', 'name'])
  .then((res) => res.map((x) => ({
      status_type: Number(x.status_type),
      name: x.name
    })))
}

function getWeaponData () {
  return csvPromisfy('./full_weapon.csv', [
    'wep_id',
    'wep_type_id',
    'name',
    'attack',
    'true_attack',
    'element_type',
    'element_value',
    'status_type',
    'status_value',
    'affinity',
    'needs_awakening',
    'rarity'
  ],
  {
    'wep_type_id': 'number',
    'wep_id': 'number',
    'attack': 'number',
    'true_attack': 'number',
    'element_value': 'number',
    'element_type': 'number',
    'status_type': 'number',
    'status_value': 'number',
    'affinity': 'number',
    'rarity': 'number',
    'needs_awakening': (item) => item === 'true'
  })
  .then((res) => res.map((x) => ({
    ...x,

  })))
}

function csvPromisfy(file, headers, colParser) {
  return new Promise((resolve, reject) => {
    csv({
      headers,
      colParser: colParser || {}
    })
    .fromFile(file)
    .on('end_parsed', (data) => resolve(data))
  })
}
/* csv({
  headers: [
    'wep_id',
    'wep_type_id',
    'name',
    'attack',
    'true_attack',
    'element_type',
    'element_value',
    'status_type',
    'status_value',
    'affinity',
    'needs_awakening',
    'rarity'
  ]
})
.fromFile('./full_weapon.csv')
.on('json', (json) => {
  console.log(json)
}) */
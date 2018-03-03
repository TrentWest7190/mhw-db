const osmosis = require('osmosis')

var id = 0

osmosis.get('https://mhworld.kiranico.com/hammer')
  .find('tr')
  .set({
    name: 'a',
    attack: 'td:nth-child(2)',
    true_atack: 'td:nth-child(3)',
    special_attributes: 'td:nth-child(4)',
  })
  .then((context, data, next) => {
    if (data.special_attributes) {
      const parsedAttribs = data.special_attributes.replace(/\s/g, '')
      data.requires_awakening = /\(.*?\)/.test(parsedAttribs)
    } else {
      data.requires_awakening = false
    }
    delete data.special_attributes
    next(context, data)
  })
  .data((help) => {
    console.log(id++ + ',' + Object.values(help).join(','))
  })
  .log(console.log)

const { Appsignal } = require("@appsignal/nodejs")

const appsignal = new Appsignal({
  active: true
})

module.exports = { appsignal }

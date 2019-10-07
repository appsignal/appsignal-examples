const { Appsignal } = require("@appsignal/nodejs")

exports.appsignal = new Appsignal({
  active: true,
  name: "Node.js Span Testing"
})

require("dotenv").config()

// in this case, we always want appsignal to be the first thing
// required after environment variables are populated by dotenv
const { appsignal } = require("./appsignal")

const next = require("next")
const url = require("url")
const { createServer } = require("http")

const app = next({ dev: process.env.NODE_ENV !== "production" })

const {
  getRequestHandler,
  EXPERIMENTAL: { getWebVitalsHandler }
} = require("@appsignal/nextjs")

const PORT = parseInt(process.env.PORT, 10) || 3000

app.prepare().then(() => {
  createServer((req, res) => {
    // Be sure to pass `true` as the second argument to `url.parse`.
    // This tells it to parse the query portion of the URL.
    const parsedUrl = url.parse(req.url, true)
    const { pathname } = parsedUrl

    const handle = getRequestHandler(appsignal, app)
    const vitals = getWebVitalsHandler(appsignal)

    if (pathname === "/__appsignal-web-vitals") {
      vitals(req, res)
    } else {
      handle(req, res, parsedUrl)
    }
  }).listen(PORT, err => {
    if (err) throw err
    console.log(`> Ready on http://localhost:${PORT}"`)
  })
})

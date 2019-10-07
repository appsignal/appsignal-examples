const { appsignal } = require("./appsignal")
const { expressMiddleware } = require("@appsignal/express")
const createError = require("http-errors")
const express = require("express")
const path = require("path")
const cookieParser = require("cookie-parser")
const logger = require("morgan")

const app = express()

// view engine setup
app.set("views", path.join(__dirname, "views"))
app.set("view engine", "jade")

app.use(logger("dev"))
app.use(express.json())
app.use(express.urlencoded({ extended: false }))
app.use(cookieParser())
app.use(express.static(path.join(__dirname, "public")))
app.use(expressMiddleware(appsignal))

/* GET home page. */
app.post("/", function(req, res) {
  res.json({
    response: "ok"
  })
})

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  const tracer = appsignal.tracer()
  const span = tracer.currentSpan()

  tracer.withSpan(span.child("async_nested"), child => {
    child.close()
  })

  next(createError(404))
})

// error handler
app.use(function(err, req, res) {
  // set locals, only providing error in development
  res.locals.message = err.message
  res.locals.error = req.app.get("env") === "development" ? err : {}

  // render the error page
  res.status(err.status || 500)
  res.render("error")
})

module.exports = app

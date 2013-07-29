express = require 'express'
whiskers = require 'whiskers'
db = require './config/Datastore'

app = express express.logger() 
app.use express.bodyParser()
app.use express.methodOverride()
app.use express.errorHandler({ dumpExceptions: true, showStack: true })
app.use express.cookieParser()
app.use express.session({ secret: 'my secret' })

routes = require('./app/routes/Index')(db.datastore)

app.set 'view engine', 'wks'
app.engine 'wks', whiskers.__express 
app.get '/', routes.get

port = process.env.PORT or 3000

app.listen port, ->
	console.log "listening on #{port}"
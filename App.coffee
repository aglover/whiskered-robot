express = require 'express'
whiskers = require 'whiskers'
db = require './config/Datastore'

app = express express.logger() 
app.use express.errorHandler({ dumpExceptions: true, showStack: true })

app.set 'view engine', 'html'
app.engine 'html', whiskers.__express 
# set up bower
app.use '/components', express.static(__dirname + '/public/components')
app.use '/img', express.static(__dirname + '/public/img')


routes = require('./app/routes/Index')(db.datastore)
app.get '/', routes.get

port = process.env.PORT or 3000

app.listen port, ->
	console.log "listening on #{port}"
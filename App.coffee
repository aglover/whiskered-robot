express = require 'express'
pipeline = require 'connect-assets'
whiskers = require 'whiskers'

app = express express.logger() 
app.use express.bodyParser()
app.use pipeline()
app.use express.methodOverride()
app.use express.errorHandler({ dumpExceptions: true, showStack: true })
app.use express.cookieParser()
app.use express.session({ secret: 'my secret' })

routes = require './app/routes/Index'

app.set 'view engine', 'whiskers'
app.engine '.html', whiskers.__express 
app.use '/img', express.static(__dirname + '/public/img')
app.use '/js', express.static(__dirname + '/public/js')
app.use '/css', express.static(__dirname + '/public/css')

app.get '/', routes.get

port = process.env.PORT or 3000

app.listen port, ->
	console.log "listening on #{port}"
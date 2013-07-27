module.exports = 
	# '/'
	get: (req, res) ->
		res.render 'index.html', {word: 'Varnish'}
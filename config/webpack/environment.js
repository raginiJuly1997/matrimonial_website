const { environment } = require('@rails/webpacker')
const webpack = require("webpack")
environment.plugins.append("Provide", new webpack.ProvidePlugin({
	$: 'jqery',
	jquery: 'jqery',
	Popper: ['popper.js', 'default']

}))

module.exports = environment

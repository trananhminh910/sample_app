# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
}))

module.exports = environment

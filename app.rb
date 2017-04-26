require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('capybara')
require('pry')
require('/lib/cd')
require('/lib/artist')

get('/') do
  erb(:index)
end

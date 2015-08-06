require('sinatra')
require('sinatra/reloader')
require('launchy')
require('./lib/coin_counter')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin_counter') do
  @change = params.fetch('change')
  @result = @change.to_i().coin_counter()
  erb(:coin_counter)
end

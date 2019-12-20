require("sinatra")
require("sinatra/contrib/all") if development?

require_relative('controllers/suppliers_controller')
require_relative('controllers/products_controller')


get "/" do
  erb(:index)
end

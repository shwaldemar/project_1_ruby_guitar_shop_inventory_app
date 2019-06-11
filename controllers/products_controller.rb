require( "sinatra" )
require( "sinatra/contrib/all" )
require( "pry-byebug" )
require_relative( "../models/product.rb" )
also_reload( "../models/*" )

get "/products" do # index
  @products = Product.all()
  erb( :"products/index" )
end

get "/products/new" do # new
  erb( :"products/new" )
end

get "/products/:id" do # show
  @products = Product.find( params[:id].to_i )
  binding.pry
  erb( :"products/show" )
end

post "/products" do # create
  @products = Product.new( params )
  @products.save()
  erb( :"products/create" )
end

get "/products/:id/edit" do # edit
  @products = Product.find( params[:id] )
  erb( :"/products/edit" )
end

post "/products/:id" do # update
  Product.new( params ).update()
  redirect to "products"
end

post "/products/:id/delete" do # delete
  product = Product.find( params[:id] )
  product.delete()
  redirect to "/products"
end

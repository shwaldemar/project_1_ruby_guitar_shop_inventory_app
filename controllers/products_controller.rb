require( "sinatra" )
require( "sinatra/contrib/all" )
require( "pry-byebug" )
require_relative( "../models/product.rb" )
also_reload( "../models/*" )

get "/products" do # index
  @products = Product.all()
  erb( :index )
end

get "/products/new" do # new
  erb( :new )
end

get "/products/:id" do # show
  @product = Product.find( params[:id] )
  erb( :show )
end

post "/products" do # create
  @product = Product.new( params )
  @product.save()
  erb( :create )
end

get "/product/:id/edit" do # edit
  @product = Product.find( params[:id] )
  erb( :edit )
end

post "/product/:id" do # update
  Product.new( params ).update
  redirect to "/product"
end

post "/product/:id/delete" do # delete
  product = Product.find( params[:id] )
  product.delete()
  redirect to "/product"
end

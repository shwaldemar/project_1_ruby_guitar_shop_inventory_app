require( "sinatra" )
require( "sinatra/contrib/all" ) if development?

require_relative( "../models/supplier.rb" )
# also_reload( "../models/*" )

get "/suppliers" do # index
  @suppliers = Supplier.all()
  erb( :"suppliers/index" )
end

get "/suppliers/new" do # new
  erb( :"suppliers/new" )
end

get "/suppliers/:id" do # show
  @supplier = Supplier.find( params[:id] )
  erb( :"suppliers/show" )
end

post "/suppliers" do # create
  @supplier = Supplier.new( params )
  @supplier.save()
  erb( :"suppliers/create" )
end

get "/suppliers/:id/edit" do # edit
  @supplier = Supplier.find( params[:id] )
  erb( :"suppliers/edit" )
end

post "/suppliers/:id" do # update
  Supplier.new( params ).update
  redirect to "suppliers"
end

post "/suppliers/:id/delete" do # delete
  supplier = Supplier.find( params[:id] )
  supplier.delete()
  redirect to ("/suppliers")
end

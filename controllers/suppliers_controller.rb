require( "sinatra" )
require( "sinatra/contrib/all" )
require( "pry-byebug" )
require_relative( "../models/supplier.rb" )
also_reload( "../models/*" )

get "/suppliers" do # index
  @suppliers = Supplier.all()
  erb( :index )
end

get "/suppliers/new" do # new
  erb( :new )
end

get "/suppliers/:id" do # show
  @supplier = Supplier.find( params[:id] )
  erb( :show )
end

post "/suppliers" do # create
  @supplier = Supplier.new( params )
  @supplier.save()
  erb( :create )
end

get "/supplier/:id/edit" do # edit
  @supplier = Pupplier.find( params[:id] )
  erb( :edit )
end

post "/supplier/:id" do # update
  Supplier.new( params ).update
  redirect to "/supplier"
end

post "/supplier/:id/delete" do # delete
  supplier = Supplier.find( params[:id] )
  supplier.delete()
  redirect to "/supplier"
end

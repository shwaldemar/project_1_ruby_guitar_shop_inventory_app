require_relative("../db/sql_runner.rb")

class Product

  attr_reader( :id, :supplier_id )
  attr_accessor( :name, :model, :description, :buy_price, :sell_price, :quantity )

  def initialize( options )
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @model =  options["model"]
    @description =  options["description"]
    @buy_price = options["buy_price"].to_i
    @sell_price = options["sell_price"].to_i
    @quantity = options["quantity"].to_i
    @supplier_id = options["supplier_id"]
  end

  def save()
    sql = "INSERT INTO products (
    name,
    model,
    description,
    buy_price,
    sell_price,
    quantity,
    supplier_id
    )
    VALUES
    (
    $1, $2, $3, $4, $5, $6, $7
    )
    RETURNING id"
    values = [@name, @model, @description,  @buy_price, @sell_price, @quantity, @supplier_id]
    results = SqlRunner.run( sql, values )
    @id = results.first()["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM products"
    results = SqlRunner.run( sql )
    return results.map { |product| Product.new( product )}
  end

  def self.find( id )
    sql = "SELECT * FROM products WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Product.new( results.first )
  end

  def self.delete_all()
    sql = "DELETE FROM products"
    SqlRunner.run( sql )
  end

  def delete()
    sql = "DELETE FROM products
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def update()
    sql = "UPDATE products SET
    (
      name,
      model,
      description,
      buy_price,
      sell_price,
      quantity,
      supplier_id
    ) =
    (
      $1, $2, $3, $4, $5, $6, $7
    )
    WHERE id = $8"
    values = [@name, @model, @description,  @buy_price, @sell_price, @quantity, @supplier_id, @id]
    SqlRunner.run( sql, values )
  end

end

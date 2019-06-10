require_relative("../db/sql_runner.rb")

class Supplier

  attr_reader( :id, :name )
  attr_writer( :id, :name )

  def initialize( options )
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
  end

  def save()
    sql = "INSERT INTO suppliers (
    name
    )
    VALUES
    (
    $1
    )
    RETURNING id"
    values = [@name]
    results = SqlRunner.run( sql, values )
    @id = results.first()["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM suppliers"
    results = SqlRunner.run( sql )
    return results.map { |supplier| Supplier.new( supplier )}
  end

  def self.find( id )
    sql = "SELECT * FROM suppliers WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Supplier.new( results.first )
  end

  def self.delete_all()
    sql = "DELETE FROM suppliers"
    SqlRunner.run( sql )
  end

  def delete()
    sql = "DELETE FROM suppliers
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def update()
    sql = "UPDATE suppliers SET
    name = $1
    WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run( sql, values )
  end

end

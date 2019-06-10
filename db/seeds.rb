require_relative("../models/supplier.rb")
require_relative("../models/product.rb")
require("pry-byebug")

Product.delete_all()
Supplier.delete_all()




#SUPPLIERS

supplier1 = Supplier.new({
  "name" => "Fender Musical Instruments Europe ltd"
  })
supplier1.save()

supplier2 = Supplier.new({
  "name" => "Gibson International ltd"
  })

supplier2.save()

supplier3 = Supplier.new({
  "name" => "Ibanez - Headstock Distribution Limited"
  })

supplier3.save()

supplier4 = Supplier.new({
  "name" => "PRS Guitars"
  })

supplier4.save()

supplier5 = Supplier.new({
  "name" => "Rickenbacker International"
  })

supplier5.save()

supplier6 = Supplier.new({
  "name" => "Ernie Ball International"
  })

supplier6.save()

supplier7 = Supplier.new({
  "name" => "Elixyr"
  })

supplier7.save()


#PRODUCTS

product1 = Product.new({
  "name" => "Stratocaster",
  "model" => "Fender American Standard",
  "description" => "Tobbacco - left handed",
  "buy_price" => 400,
  "sell_price" => 800,
  "quantity" => 5,
  "supplier_id" => supplier1.id
  })

product1.save()

product2 = Product.new({
  "name" => "Stratocaster",
  "model" => "Fender Custom Shop",
  "description" => "Red - right handed",
  "buy_price" => 1000,
  "sell_price" => 2000,
  "quantity" => 5,
  "supplier_id" => supplier1.id
  })

product2.save()

product3 = Product.new({
  "name" => "Telecaster",
  "model" => "Fender American Standard",
  "description" => "Midnight Blue - right handed",
  "buy_price" => 400,
  "sell_price" => 800,
  "quantity" => 5,
  "supplier_id" => supplier1.id
  })

product3.save()

product4 = Product.new({
  "name" => "Telecaster",
  "model" => "Fender Custom shop",
  "description" => "Black - right handed",
  "buy_price" => 1000,
  "sell_price" => 2000,
  "quantity" => 5,
  "supplier_id" => supplier1.id
  })

product4.save()

product5 = Product.new({
  "name" => "American Performer",
  "model" => "Fender Precision Bass",
  "description" => "White - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier1.id
  })

product5.save()

product6 = Product.new({
  "name" => "American Performer",
  "model" => "Fender Precision Jazz Bass",
  "description" => "Red - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier1.id
  })

product6.save()

product7 = Product.new({
  "name" => "American Performer",
  "model" => "Fender Precision Bass",
  "description" => "Red - left handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier1.id
  })

product7.save()

product8 = Product.new({
  "name" => "American Performer",
  "model" => "Fender Precision Jazz Bass",
  "description" => "Red - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier1.id
  })

product8.save()

product9 = Product.new({
  "name" => "Les Paul",
  "model" => "Gibson Classic",
  "description" => "Sunburst - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier2.id
  })

product9.save()

product10 = Product.new({
  "name" => "Les Paul",
  "model" => "Gibson Classic",
  "description" => "Black - left handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier2.id
  })

product10.save()

product11 = Product.new({
  "name" => "SG",
  "model" => "Gibson Classic",
  "description" => "Red - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier2.id
  })

product11.save()

product12 = Product.new({
  "name" => "SG",
  "model" => "Gibson Classic",
  "description" => "Black - left handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier2.id
  })

product12.save()

product13 = Product.new({
  "name" => "EB Bass 4 string",
  "model" => "Gibson Classic",
  "description" => "light wood - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier2.id
  })

product13.save()

product14 = Product.new({
  "name" => "Thunderbird Bass",
  "model" => "Gibson Classic",
  "description" => "Tobacco fade - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier2.id
  })

product14.save()

product15 = Product.new({
  "name" => "SG Standard Bass",
  "model" => "Gibson Classic",
  "description" => "Black - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier2.id
  })

product15.save()

product16 = Product.new({
  "name" => "AZ2402",
  "model" => "Prestige",
  "description" => "Metallic blue - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier3.id
  })

product16.save()

product17 = Product.new({
  "name" => "RG5120M",
  "model" => "Prestige",
  "description" => "Green & blue fade to natural wood - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier3.id
  })

product17.save()

product18 = Product.new({
  "name" => "SR705",
  "model" => "Prestige",
  "description" => "Dark wood fade - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier3.id
  })

product18.save()

product19 = Product.new({
  "name" => "SR700",
  "model" => "Prestige",
  "description" => "Dark wood - left handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier3.id
  })

product19.save()

product20 = Product.new({
  "name" => "Custom 24",
  "model" => "PRS Custom Shop",
  "description" => "Green Tobbaco fade - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier4.id
  })

product20.save()

product21 = Product.new({
  "name" => "Mcarty",
  "model" => "PRS Custom Shop",
  "description" => "Dark wood sunburst - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier4.id
  })

product21.save()

product22 = Product.new({
  "name" => "Grainger 4 string Bass",
  "model" => "PRS Standard",
  "description" => "Dark natural wood fade - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier4.id
  })

product22.save()

product23 = Product.new({
  "name" => "Grainger 4 string Bass",
  "model" => "PRS Standard",
  "description" => "Dark natural wood fade - left handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier4.id
  })

product23.save()

product24 = Product.new({
  "name" => "4003SW",
  "model" => "Rickenbacker Standard",
  "description" => "Red Hollow body - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier5.id
  })

product24.save()

product25 = Product.new({
  "name" => "4003SW",
  "model" => "Rickenbacker Standard",
  "description" => "Blue Hollow body - left handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier5.id
  })

product25.save()

product26 = Product.new({
  "name" => "4003FL",
  "model" => "Rickenbacker Standard",
  "description" => "Green - right handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier5.id
  })

product26.save()

product27 = Product.new({
  "name" => "4003FL",
  "model" => "Rickenbacker Standard",
  "description" => "Black vintage - left handed",
  "buy_price" => 600,
  "sell_price" => 1200,
  "quantity" => 5,
  "supplier_id" => supplier5.id
  })

product27.save()

product28 = Product.new({
  "name" => "Slinky 10 gauge Electric guitar strings",
  "model" => "Ernie Ball standard",
  "description" => "Electric guitar strings",
  "buy_price" => 3,
  "sell_price" => 6,
  "quantity" => 50,
  "supplier_id" => supplier6.id
  })

product28.save()

product29 = Product.new({
  "name" => "Extra Slinky 9 gauge Electric guitar strings",
  "model" => "Ernie Ball standard",
  "description" => "Electric guitar strings",
  "buy_price" => 3,
  "sell_price" => 6,
  "quantity" => 50,
  "supplier_id" => supplier6.id
  })

product29.save()

product30 = Product.new({
  "name" => "Super Slinky Bass Srings 45 gauge",
  "model" => "Ernie Ball standard",
  "description" => "Electric Bass strings",
  "buy_price" => 6,
  "sell_price" => 12,
  "quantity" => 50,
  "supplier_id" => supplier6.id
  })

product30.save()

product31 = Product.new({
  "name" => "Elixyr 9 gauge Electric guitar strings",
  "model" => "Elixyr Nanoweb",
  "description" => "Electric guitar strings",
  "buy_price" => 6,
  "sell_price" => 12,
  "quantity" => 50,
  "supplier_id" => supplier7.id
  })

product31.save()

product32 = Product.new({
  "name" => "Elixyr 10 gauge",
  "model" => "Elixyr Nanoweb Electric Guitar Strings",
  "description" => "NA",
  "buy_price" => 6,
  "sell_price" => 12,
  "quantity" => 50,
  "supplier_id" => supplier7.id
  })

product32.save()

product33 = Product.new({
  "name" => "Elixyr 45 gauge",
  "model" => "Elixyr Nanoweb Electric Bass strings",
  "description" => "NA",
  "buy_price" => 6,
  "sell_price" => 12,
  "quantity" => 50,
  "supplier_id" => supplier7.id
  })

product33.save()

binding.pry
nil

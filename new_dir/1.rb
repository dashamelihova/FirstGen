class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
end

=begin
class created
=end

class Sample
   def hello
      puts "Привет новый class!"
   end
end

#initializing a new class

cust1 = Customer.new("1", "Andrey", "Апартаменты Андрея, Краснодар")
cust2 = Customer.new("2", "Max", "Новая дорога Империя, Ростов")

object = Sample. new
object.hello
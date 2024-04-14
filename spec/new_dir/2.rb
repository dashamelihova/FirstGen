	 class Dog    
   def set_name( aName ) 
     @myname = aName 
   end 
 
   def get_name 
     return @myname 
   end 
 
   def gav 
     return 'r-r-r-r!' 
   end 
end

dog1 = Dog.new 
dog1.set_name( 'Fido' ) 
puts(dog1.get_name) 
puts(dog1.gav) 
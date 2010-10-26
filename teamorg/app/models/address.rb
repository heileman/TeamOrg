class Address < ActiveRecord::Base
  has_and_belongs_to_many :people
  
  def address_types 
    {:home => 1, :work => 2, :other => 3}.freeze      
  end
  
  def to_s
    @addr = (self.line1 ? line1 : "") + (self.line2 ? line2 : "")
    @addr += (self.city || self.state || self.country || self.postal_code ? ", " : "")
    @addr += (self.city ? city : "") 
    @addr += (self.state ? (self.city ? ", " + state : state) : "")
    @addr += (self.country ? ", " : (self.postal_code ? " " : ""))    
    @addr += (self.country ? country : "") + (self.postal_code ? (self.country ? " " + postal_code : postal_code) : "")
  end
  
end

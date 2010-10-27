class EmailFormatValidator < ActiveModel::EachValidator  
  
  EmailAddress = begin
    /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  end
  
  def validate_each(object, attribute, value)  
    unless value =~ EmailAddress  
      object.errors[attribute] << (options[:message] || "is not a valid email address")  
    end  
  end  
  
end 
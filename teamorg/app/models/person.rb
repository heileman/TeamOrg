class Person < ActiveRecord::Base
  has_and_belongs_to_many :addresses
  has_and_belongs_to_many :emails
  has_and_belongs_to_many :phones
  
  def full_name
    [self.first_name, self.last_name].compact.join(" ")
  end
  
  def add_address(address)
    self.addresses << address
  end
  
  def delete_address(address)
    refs = AddressesPerson.where(:address_id => address.id).length # how many people reference the address
    self.addresses.delete(address)  # always destory the join table record
    address.destroy if (refs == 1)  # if that was the only person referencing the address, destroy the address    
  end
  
  def add_email(email)
    if em = Email.where(["address = ?", email.address]).first   # is the email address already in the DB?
      if EmailsPerson.where(:person_id => self.id, :email_id => em.id).empty? # make sure person is not already related to email address -- if so, ignore this request
        begin 
          EmailsPerson.new(:person_id => self.id, :email_id => em.id).save! 
        rescue RecordInvalid => error
          # EmailsPerson record could not be saved
        end
      end
    else
      begin 
        self.emails << email
      rescue RecordInvalid => error
        # Email record could not be saved
      end
    end
  end
  
  def delete_email(email)
    refs = EmailsPerson.where(:email_id => email.id).length # how many people reference the phone
    self.emails.delete(email)  # always destory the join table record
    email.destroy if (refs == 1)  # if that was the only person referencing the phone, destroy the phone
  end
  
  def add_phone(phone)   
    if ph = Phone.where(["number = ?", phone.number]).first   # is the phone number already in the DB?
      if PeoplePhone.where(:person_id => self.id, :phone_id => ph.id).empty? # make sure person is not already related to phone number -- if so, ignore this request
        begin 
          PeoplePhone.new(:person_id => self.id, :phone_id => ph.id).save! 
        rescue RecordInvalid => error
          # PeoplePhone record could not be saved
        end
      end
    else
      begin 
        self.phones << phone
      rescue RecordInvalid => error
        # Phone record could not be saved
      end
    end
  end
  
  def delete_phone(phone)
    refs = PeoplePhone.where(:phone_id => phone.id).length # how many people reference the phone
    self.phones.delete(phone)  # always destory the join table record
    phone.destroy if (refs == 1)  # if that was the only person referencing the phone, destroy the phone
  end
  
end


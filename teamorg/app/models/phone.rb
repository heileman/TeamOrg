class Phone < ActiveRecord::Base
  before_validation :scrub_number
    
  has_and_belongs_to_many :people

  def phone_types
    {:home => 1, :work => 2, :mobile => 3, :fax => 4, :other => 5}.freeze
  end 

  validates_presence_of :number, :message => "phone number can't be blank!"
  validates_length_of :number, :is=>10, :message => "phone number must consist of 10 digits!"
  
  private
  
  def scrub_number
    self.number.gsub!(/[^0-9]/, "") if attribute_present?("number")
  end
  
end

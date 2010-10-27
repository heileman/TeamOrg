class Phone < ActiveRecord::Base
  before_validation :scrub_number
    
  has_and_belongs_to_many :people

  def phone_types
    {:home => 1, :work => 2, :mobile => 3, :fax => 4, :other => 5}.freeze
  end 

  validates :number,  :presence => true,
                      :uniqueness => true,
                      :length => {:minimum =>10, :maximum => 10}
  
  private
  
  def scrub_number
    self.number.gsub!(/[^0-9]/, "") if attribute_present?("number")
  end
  
end

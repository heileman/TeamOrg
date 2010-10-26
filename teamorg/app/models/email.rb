class Email < ActiveRecord::Base
  has_and_belongs_to_many :people
  
  def email_types
    {:home => 1, :work => 2, :other => 3}.freeze
  end
  
end

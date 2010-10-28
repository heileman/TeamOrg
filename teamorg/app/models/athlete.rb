class Athlete < ActiveRecord::Base
  belongs_to  :person
  has_and_belongs_to_many :rosters
  has_and_belongs_to_many :parents, :join_table => "athletes_parents", :class_name => "Person", :table_name => "people"  
end

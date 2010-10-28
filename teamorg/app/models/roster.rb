class Roster < ActiveRecord::Base
  belongs_to :team
  has_and_belongs_to_many :athletes
end

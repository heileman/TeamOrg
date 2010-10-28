class Team < ActiveRecord::Base
  has_many :rosters
  has_and_belongs_to_many :coaches
end

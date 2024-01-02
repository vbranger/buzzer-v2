class System < ApplicationRecord
  broadcasts_refreshes
  has_many :games

end

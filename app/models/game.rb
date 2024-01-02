class Game < ApplicationRecord
  broadcasts_refreshes
  belongs_to :system, touch: true
end

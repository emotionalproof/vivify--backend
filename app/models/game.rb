class Game < ApplicationRecord
    has_many :mornings
    has_many :users, through: :mornings
end

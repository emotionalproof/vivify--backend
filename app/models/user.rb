class User < ApplicationRecord
    has_many :mornings
    has_many :games, through: :mornings
end

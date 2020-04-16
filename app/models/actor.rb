class Actor < ApplicationRecord

    has_many :movie_actors
    has_many :movies, through: :movie_actors
    has_many :characters
    
    validates :name, presence: true

end

class Movie < ApplicationRecord

    has_many :movie_actors
    has_many :actors, through: :movie_actors
    has_many :movie_characters
    has_many :characters, through: :movie_characters

    validates :title, presence: true
    validates :release_year, presence: true
    validates :synopsis, length: {in: 50..500}

    def self.search_by(search_term)
        where("LOWER(name) LIKE :search_term", search_term: "#{search_term}")
    end

end

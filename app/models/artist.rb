class Artist < ApplicationRecord
    has_many :artist_instruments
    has_many :instruments, through: :artist_instruments

    validations :name, presence: true 
    validations :title, uniqueness: true 
end

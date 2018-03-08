class Record < ApplicationRecord
  has_many :laps, dependent: :destroy


  
end

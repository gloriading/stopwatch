class Record < ApplicationRecord
  has_many :laps, dependent: :destroy
  validates :start_time, presence: true
  validates :end_time, presence: true


end

class Fee < ApplicationRecord
  belongs_to :user
  validates :month, presence: true
  validates :people_number, presence: true
  validates :electricity, presence: true
  validates :gas, presence: true
  validates :water, presence: true
end

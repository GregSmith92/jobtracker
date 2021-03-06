class Job < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :company, presence: true
  validates :progress, presence: true
end

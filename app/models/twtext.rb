class Twtext < ApplicationRecord
  validates :content, length: { in: 1..140 }
  belongs_to :user
end

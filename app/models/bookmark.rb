class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list, dependent: :destroy
  validates :comment, length: { minimum: 6 }
end

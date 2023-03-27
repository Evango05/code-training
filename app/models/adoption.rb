class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  validates :starts_at, :ends_at, presence: true
end

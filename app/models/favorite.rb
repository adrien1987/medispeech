class Favorite < ApplicationRecord
  belongs_to :user
  validates :code_cis, uniqueness: { scope: :user }
end

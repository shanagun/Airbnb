class Dogsitter < ApplicationRecord
  has_many :strolls
	has_many :jointabledogstrolls, through: :strolls
  belongs_to :city
end

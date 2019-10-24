class Stroll < ApplicationRecord
  belongs_to :dogsitter
	belongs_to :city
	has_many :jointabledogstrolls
	has_many :dogs, through: :jointabledogstrolls
end

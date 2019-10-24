class Dog < ApplicationRecord
  has_many :jointabledogstrolls
	has_many :strolls, through: :jointabledogstrolls
  belongs_to :city
end

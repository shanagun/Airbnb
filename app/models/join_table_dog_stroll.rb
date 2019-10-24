class JoinTableDogStroll < ApplicationRecord
  belongs_to :stroll
	has_many :dogs	
end

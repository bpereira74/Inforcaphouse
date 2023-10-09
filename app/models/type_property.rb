class TypeProperty < ApplicationRecord
      validates :name, presence: true, uniqueness: true
end

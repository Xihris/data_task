class Unit < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :author
    
end

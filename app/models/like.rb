class Like < ApplicationRecord
    belongs_to :user, foreign_key: 'email'
end

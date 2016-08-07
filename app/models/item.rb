class Item < ActiveRecord::Base
  belongs_to :list #add methods to models
  validates :description, presence: true
end

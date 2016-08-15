class Item < ActiveRecord::Base
  belongs_to :list #add methods to models
  validates :description, presence: true

  STATUS = {
    complete: 1,
    incomplete: 0
  }

  def complete?
    self.status == STATUS[:complete]
  end

  def incomplete?
    self.status == STATUS[:incomplete]
  end
end

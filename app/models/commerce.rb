class Commerce < ApplicationRecord
  validates :name, presence: true

  def self.list_commerces
    where(is_active: true)
  end
end

class Winery < ActiveRecord::Base
  has_many :wines
  validates :name, length: { minimum: 2 }
  validates :location, length: { in: 3..100 }
end

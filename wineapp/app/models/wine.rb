class Wine < ActiveRecord::Base
  belongs_to :winery
  # validates :winery, presence: true
end

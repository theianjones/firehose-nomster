class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :photos

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { maximum: 140, minimum: 3}
  validates :address, :description, presence: true
  self.per_page = 5
end

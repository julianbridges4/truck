class Truck < ApplicationRecord
  belongs_to :user
  validates :business_name, presence: true
  validates :website, presence: true
  validates :phone, presence: true
  validates :owner_name, presence: true
  validates :business_address, presence: true
  validates :email, presence: true
  validates :food_type, presence: true
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  geocoded_by :current_location
  after_validation :geocode
end
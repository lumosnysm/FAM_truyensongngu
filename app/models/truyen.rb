class Truyen < ApplicationRecord
  belongs_to :theloai
  has_many :binhluans
  has_many :ratings
  has_one :finalrate
  def self.search(search)
     where("name_vn LIKE ?", "%#{search}%") 
  end
end

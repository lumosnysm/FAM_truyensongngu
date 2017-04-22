class Truyen < ApplicationRecord
  belongs_to :theloai
  has_many :binhluans
  def self.search(search)
     where("name_vn LIKE ?", "%#{search}%") 
  end
end

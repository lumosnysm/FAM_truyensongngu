class Truyen < ApplicationRecord
    belongs_to :theloai
    has_many :binhluans
end

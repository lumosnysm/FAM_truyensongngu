class HomeController < ApplicationController
  def index
    @theloais=Theloai.all
    @truyenmoi=Truyen.order("updated_at DESC")
    @Is_average_rate_int=true
    @average_rate=0
  end
end

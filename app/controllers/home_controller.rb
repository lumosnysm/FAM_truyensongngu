class HomeController < ApplicationController
  def index
    @theloais=Theloai.all
    @truyens=Truyen.order("updated_at DESC")
  end
end

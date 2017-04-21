class NewController < ApplicationController
  def show
  @theloais=Theloai.all
  @truyens=Truyen.order("updated_at DESC")
end
end

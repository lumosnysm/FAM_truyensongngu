class NewController < ApplicationController
  def show
  @theloais=Theloai.all
  @truyens=Truyen.order("updated_at DESC")

  # CODE LAY DU LIEU RATE TUNG TRUYEN ( CODE NAY DI KEM CODE TRONG view)
  @average_rate=0
  @Is_average_rate_int=true
  @count=0

end
end

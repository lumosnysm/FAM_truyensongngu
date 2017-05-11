class TheloaisController < ApplicationController
  def show
    @theloais=Theloai.all
    @theloai = Theloai.find(params[:id])
    @truyens = @theloai.truyens

    # CODE LAY DU LIEU RATE TUNG TRUYEN ( CODE NAY DI KEM CODE TRONG view)
    @average_rate=0
    @Is_average_rate_int=true
    @count=0

  end
  def new
    @theloai = Theloai.new
    @theloais=Theloai.all
  end
  def create
    @theloai = Theloai.new(theloai_params)
    if @theloai.save
      redirect_to '/themtheloai'
    end
  end
  def destroy
    @theloai = Theloai.find(params[:id])
    @theloai.destroy

    redirect_to themtheloai_path
  end
  private
  def theloai_params
    params.require(:theloai).permit(:title)
  end
end

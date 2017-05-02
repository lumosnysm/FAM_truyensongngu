class EdittruyensController < ApplicationController
	def new
    @truyen = Truyen.new
    @theloais=Theloai.all
  end
  def edit
    @theloais=Theloai.all
    @truyen = Truyen.find(params[:id])
  end
  def list
    @theloais=Theloai.all
    @truyens=Truyen.all
  end
  def create
    @truyen = Truyen.new(truyen_params)
    if @truyen.save
      redirect_to edit_path
    end
  end
  def update
    @truyen = Truyen.find(params[:id])
    if @truyen.update(truyen_params)
      redirect_to '/edit'
    end
  end
	def destroy
    @truyen = Truyen.find(params[:id])
    @truyen.destroy

    redirect_to edit_path
  end
  private
  def truyen_params
    params.require(:truyen).permit(:name_vn, :name_en, :content_vn, :content_en, :image, :theloai_id,:rate)
  end
end

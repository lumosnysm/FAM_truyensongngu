class TruyensController < ApplicationController
  def show
    @theloais=Theloai.all
    @truyen = Truyen.find(params[:id])
    @binhluans=@truyen.binhluans.order("updated_at DESC")
    @binhluan = Binhluan.new
    @binhluan_num=@truyen.binhluans.count
    @rating=Rating.new
    @rated=false
    if @truyen.ratings.exists?(:user_id => current_user.try(:id))
      @rated=true
      @user_rate= @truyen.ratings.find_by_user_id(current_user.id).rate
    end
    @rating_num=@truyen.ratings.count
    @average_rate=@truyen.ratings.average(:rate)
  end
  def all
    @theloais=Theloai.all
    @truyens=Truyen.order("name_vn ASC")
  end
  def search
    @truyens = Truyen.search(params[:search])
    @theloais=Theloai.all
  end

end

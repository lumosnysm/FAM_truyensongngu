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
      @Is_user_rate_int=(@user_rate -@user_rate.to_i)>0?false : true
      @count1=@user_rate.to_i
      if @Is_user_rate_int
        @count1=@user_rate
       end
    end

    @rating_num=@truyen.ratings.count
    @average_rate=@truyen.ratings.average(:rate)

    if @rating_num != 0 and @average_rate != nil
    @Is_average_rate_int=(@average_rate -@average_rate.to_i)>0?false : true
    @count=@average_rate.to_i
      if @Is_average_rate_int
      @count=@average_rate
      end
    end

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

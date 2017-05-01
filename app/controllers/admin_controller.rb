class AdminController < ApplicationController
  def show
  	@theloais=Theloai.all
  end
  def super
  	@truyen=Truyen.all
  	@theloais=Theloai.all
    @users=User.all
    @binhluans=Binhluan.all
  end
end

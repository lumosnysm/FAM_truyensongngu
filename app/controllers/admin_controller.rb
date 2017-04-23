class AdminController < ApplicationController
  def show
  	@theloais=Theloai.all
  end
  def super
  	@theloais=Theloai.all
    @users=User.all
    @binhluans=Binhluan.all
  end
end

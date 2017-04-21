class AdminController < ApplicationController
  def show
  end
  def super
    @users=User.all
    @binhluans=Binhluan.all
  end
end

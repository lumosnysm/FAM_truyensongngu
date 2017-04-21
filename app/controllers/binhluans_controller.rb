class BinhluansController < ApplicationController
  def index
    @binhluans=Binhluan.all
  end
  def new
  @binhluan = Binhluan.new
end
def create
  @binhluan = Binhluan.new(binhluan_params)
  if @binhluan.save
    redirect_to (:back)

else
    redirect_to (:back)
  end
end
private
def binhluan_params
  params.require(:binhluan).permit(:content, :truyen_id,:user_id)
end
end

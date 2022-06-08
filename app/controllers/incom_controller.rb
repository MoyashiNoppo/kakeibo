class IncomController < ApplicationController
  def new
    @incom = Incom.new
  end

  def create
    @incom = Incom.create(incom_params)
    if @incom.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def incom_params
      params.require(:incom).permit(:day, :salary, :other, :memo).merge(user_id: current_user.id)
  end
end

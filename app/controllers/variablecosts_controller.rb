class VariablecostsController < ApplicationController
  def new
    @variablecost = Variablecost.new
  end

  def create
    @variablecost = Variablecost.create(variablecost_params)
    if @variablecost.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def variablecost_params
      params.require(:variablecost).permit(:price, :genre_id, :day, :memo).merge(user_id: current_user.id)
  end
end
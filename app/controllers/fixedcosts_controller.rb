class FixedcostsController < ApplicationController
  def new
    @fixedcost = Fixedcost.new
  end

  def create
    @fixedcost = Fixedcost.create(fixedcost_params)
    if @fixedcost.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def fixedcost_params
      params.require(:fixedcost).permit(:price, :genre_id, :memo).merge(user_id: current_user.id)
  end
end

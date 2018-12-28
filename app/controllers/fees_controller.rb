class FeesController < ApplicationController
  def new
    @fee = current_user.fee.build
  end

  def create
    @fee = current_user.fee.build(fee_params)
    if @fee.save
      redirect_to root_path
    else
      render 'fees/new'
    end
  end

  def edit
    @fee = Fee.find(params[:id])
  end

  def update
    @fee = Fee.find(params[:id])
    if @fee.update_attributes(fee_params)
     redirect_to root_url
    else
      render 'fees/edit'
    end
  end

  private
    def fee_params
      params.require(:fee).permit(:month, :people_number, :electricity, :gas, :water)
    end
end

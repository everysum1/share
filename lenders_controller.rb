class LendersController < ApplicationController
  
  
  def show
    @lender = Lender.find(params[:id])
  end

  def new 
    @lender = Lender.new
  end

  def create 
    @lender = Lender.new(lender_params)
    if @lender.save
      redirect_to @lender
    else
      render 'new'
    end
  end

  private

    def lender_params
      params.require(:lender).permit(:first_name, :last_name, :email, 
                                      :password, :password_confirmation)
    end 
end

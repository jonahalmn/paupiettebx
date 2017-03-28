class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def action
    @user =   
  end

end

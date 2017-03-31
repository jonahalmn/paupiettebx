class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
    if @user.role == true
      @role = "Chef Cuisinier"
    else
      @role = "Etudiant"
    end
  end


end

class Api::V1::UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
    json_response(@user)
	end

  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  def update
  	user = current_user
    user.update(user_params)
    head :no_content
  end

  def destroy
  	user = current_user
    user.destroy
    head :no_content
  end


	private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end

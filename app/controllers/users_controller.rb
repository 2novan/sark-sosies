class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @sosies = Sosie.where(user: @user)
  end
end

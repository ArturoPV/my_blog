class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(params.require(:user).permit(:fname, :lname, :age))
    user.save
    redirect_to users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(params.require(:user).permit(:fname, :lname, :age))
    redirect_to users_path
  end

  def edit_my_users
  end

  def modify_my_users
    params.permit![:users].each do |id, attributes|
      user = User.find(id)
      user.update(attributes)
    end
    redirect_to "/my_users"
  end

end

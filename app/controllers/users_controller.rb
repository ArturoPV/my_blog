class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.new(fname: params[:fname], lname: params[:lname], age: params[:age])
    user.save
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(fname: params[:fname], lname: params[:lname], age: params[:age])
    redirect_to "/my_users"
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

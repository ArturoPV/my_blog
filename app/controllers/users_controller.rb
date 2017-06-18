class UsersController < ApplicationController
  def my_users
  end

  def new_user
  end

  def create_user
    user = User.new(fname: params[:fname], lname: params[:lname], age: params[:age])
    user.save
  end

  def whatever
  end
end

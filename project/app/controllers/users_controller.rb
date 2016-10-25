class UsersController < ApplicationController

  def new
    redirect_to "/users/new"
  end

  def create
    @user = User.create(alias: params[:alias], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation], phone: params[:phone], birthday: params[:birthday])
    redirect_to "/recipes/home"
  end

  def edit
    redirect_to "/users/#{ params[:id] }/edit"
  end

  def update
    @user = User.find(params[:id]).update(alias: params[:alias], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation], phone: params[:phone], birthday: params[:birthday])
    redirect_to "/recipes/#{ params[:id] }"
  end

  def destroy
    @user = User.find(:id)
    redirect_to "/recipes/home"
  end
end

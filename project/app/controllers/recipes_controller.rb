class RecipesController < ApplicationController

  def index
    @recipe = Recipe.all
  end

  def new
    redirect_to "/recipes/new"
  end

  def create
    @recipe = Recipe.create(serving_size: params[:serving_size], time: params[:time], ingredients: params[:ingredients], directions: params[:directions], title: params[:title], user_id: params[:user_id])
    redirect_to "/recipes/home"
  end

  def destroy
    @recipe = Recipe.find(:user_id).destroy
    redirect_to "/recipes/home"
  end
end

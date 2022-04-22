class PagesController < ApplicationController
  def home
    @categories = Category.all
    @menus = Menu.all
  end

  def show
    @categories = Category.all
    @menu = Menu.find(params[:id])
  end
  
end

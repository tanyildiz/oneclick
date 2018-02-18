class HomeController < ApplicationController
  def index
  	@page_title = "Home"
  	@content = "Welcome a board!"
  	@categories = Category.all
  	@products = Product.all
  	@tags = Tag.all
  end

  def contact
  	@products = Product.all
  	@page_title = "Contact"
  	render 'contact'
  end

  def login
  	@products = Product.all
  	@page_title = "login"
  	render 'login'
  end

  def admin
  	@products = Product.all
  	@page_title = "Admin"
  	render 'admin'
  end
end

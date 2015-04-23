class PersonsController < ApplicationController
  before_filter :authenticate_user!

  def profile
  	@user = current_user
  	@articles = Article.all
  end
end
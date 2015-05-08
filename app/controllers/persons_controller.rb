class PersonsController < ApplicationController
  before_filter :authenticate_user!

  def profile
  	if params[:id]
  		@user = User.find(params[:id])
  	else
      @user = current_user
  	end
  	@articles = Article.all

  end

end
class UserStocksController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_stocks = current_user.user_stocks.all
  end

  def new
  end

  def show
  end

  def edit
  end
end

class UserStocksController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_stocks = current_user.user_stocks.all
  end

  def new
    @user_stock = current_user.user_stocks.build
  end

  def create
    @user_stock = current_user.user_stocks.build(user_stock_params)
    
    if @user_stock.save
      redirect_to user_stocks_path
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @user_stock = current_user.user_stocks.find(params[:id])
    @user_stock.destroy!
    redirect_to user_stocks_path
  end

  private

  def user_stock_params
    params.require(:user_stock).permit(:price, :volume, :stock_id)
  end
end

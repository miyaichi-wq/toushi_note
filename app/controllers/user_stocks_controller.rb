class UserStocksController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_stocks = current_user.user_stocks.all
  end
  
  def new
    @user_stock = current_user.user_stocks.build
    @stocks = Stock.all.map { |stock| [stock.code + ':' + stock.name, stock.id] }
  end

  def create
    @user_stock = current_user.user_stocks.build(user_stock_params)
    
    if @user_stock.save
      redirect_to user_stocks_path, notice: "「#{@user_stock.stock.name}」を登録しました。"
    else
      redirect_to user_stocks_path, alert: '登録に失敗しました。'
    end
  end

  def show
  end

  def edit
    @user_stock = current_user.user_stocks.find(params[:id])
    @stocks = Stock.all.map { |stock| [stock.code + ':' + stock.name, stock.id] }
  end
  
  def update
    @user_stock = current_user.user_stocks.find(params[:id])

    if @user_stock.update(user_stock_params)
      redirect_to user_stocks_path, notice: "「#{@user_stock.stock.name}」を更新しました。"
    else
      redirect_to user_stocks_path, alert: '更新に失敗しました。'
    end
  end

  def destroy
    @user_stock = current_user.user_stocks.find(params[:id])
    @user_stock.destroy!
    redirect_to user_stocks_path, notice: "「#{@user_stock.stock.name}」を削除しました。"
  end

  private

  def user_stock_params
    params.require(:user_stock).permit(:price, :volume, :stock_id)
  end
end

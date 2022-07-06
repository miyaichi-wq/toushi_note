class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :redirect_to_dashboard

  def top
  end

  private

  def redirect_to_dashboard
    redirect_to dashboard_path if authenticate_user!
  end
end

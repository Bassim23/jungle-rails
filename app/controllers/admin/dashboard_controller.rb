class Admin::DashboardController < ApplicationController
http_basic_authenticate_with name: ENV['BASIC_AUTH_NAME'], password: ENV['BASIC_AUTH_PASSWORD']
  def show
  end
end
